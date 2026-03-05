USE Aerolinea;

DELIMITER $$

CREATE PROCEDURE Aerolinea.sp_abm_tarifa_promocion(
    IN  p_tipo                ENUM('TARIFA','PROMO'),
    IN  p_accion              CHAR(1),          -- 'A'/'M'/'B'

    /* ===== TARIFA ===== */
    IN  p_idtarifa            INT,
    IN  p_tarifa_nombre       ENUM('Primera clase','Ejecutivo','Economica','Economica plus'),
    IN  p_precio              DECIMAL(12,2),
    IN  p_impuesto            DECIMAL(5,2),
    IN  p_tasa_fija           DECIMAL(12,2),
    IN  p_tarifacol           DECIMAL(12,2),
    IN  p_vigencia_desde      DATE,
    IN  p_vigencia_hasta      DATE,
    IN  p_activo              TINYINT,
    IN  p_condiciones         TEXT,

    /* ===== PROMOCION ===== */
    IN  p_idpromocion         INT,
    IN  p_promo_nombre        VARCHAR(120),
    IN  p_promo_descripcion   VARCHAR(200),
    IN  p_promo_valor         SMALLINT,
    IN  p_promo_activo        TINYINT,
    IN  p_promo_tarifa_id     INT,

    /* ===== Auditoría ===== */
    IN  p_usuario_app         INT,

    /* ===== OUTs ===== */
    OUT p_out_idtarifa        INT,
    OUT p_out_idpromocion     INT
)
BEGIN
    DECLARE v_now DATETIME DEFAULT NOW();
    DECLARE v_tmp INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SET p_out_idtarifa = NULL;
        SET p_out_idpromocion = NULL;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error en sp_abm_tarifa_promocion';
    END;

    START TRANSACTION;

    /* ===========================
       VALIDACIONES GENERALES
       =========================== */
    IF p_tipo NOT IN ('TARIFA','PROMO') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'p_tipo debe ser TARIFA o PROMO';
    END IF;

    IF p_accion NOT IN ('A','M','B') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'p_accion debe ser A, M o B';
    END IF;

    /* ============================================================
       TARIFA
       ============================================================ */
    IF p_tipo = 'TARIFA' THEN

        /* ---------- ALTA ---------- */
        IF p_accion = 'A' THEN
            -- vigencias coherentes
            IF p_vigencia_desde IS NULL OR p_vigencia_hasta IS NULL OR p_vigencia_hasta < p_vigencia_desde THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Vigencias inválidas en tarifa';
            END IF;

            -- unicidad por nombre (índice UNIQUE existente)
            -- Nota: el UNIQUE no permite “repetir” nombre aunque esté soft-deleted.
            INSERT INTO Aerolinea.tarifa
                (nombre, precio, impuesto, tasa_fija, tarifacol,
                 vigencia_desde, vigencia_hasta, activo,
                 creado_en, actualizado_en, eliminado_en,
                 creado_por, actualizado_por, eliminado_por, eliminado_motivio,
                 condiciones)
            VALUES
                (p_tarifa_nombre, p_precio, p_impuesto, p_tasa_fija, p_tarifacol,
                 p_vigencia_desde, p_vigencia_hasta, COALESCE(p_activo,1),
                 v_now, v_now, NULL,
                 p_usuario_app, p_usuario_app, NULL, NULL,
                 p_condiciones);

            SET p_out_idtarifa = LAST_INSERT_ID();
            SET p_out_idpromocion = NULL;

        /* ---------- MODIFICAR ---------- */
        ELSEIF p_accion = 'M' THEN
            IF p_idtarifa IS NULL THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'p_idtarifa requerido para modificar';
            END IF;

            -- si me dan ambas fechas, verifico coherencia
            IF p_vigencia_desde IS NOT NULL AND p_vigencia_hasta IS NOT NULL AND p_vigencia_hasta < p_vigencia_desde THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Vigencias inválidas en tarifa';
            END IF;

            -- si cambia nombre, confiar en UNIQUE (captura excepción arriba)
            UPDATE Aerolinea.tarifa
            SET
                nombre          = COALESCE(p_tarifa_nombre, nombre),
                precio          = COALESCE(p_precio, precio),
                impuesto        = COALESCE(p_impuesto, impuesto),
                tasa_fija       = COALESCE(p_tasa_fija, tasa_fija),
                tarifacol       = COALESCE(p_tarifacol, tarifacol),
                vigencia_desde  = COALESCE(p_vigencia_desde, vigencia_desde),
                vigencia_hasta  = COALESCE(p_vigencia_hasta, vigencia_hasta),
                activo          = COALESCE(p_activo, activo),
                condiciones     = COALESCE(p_condiciones, condiciones),
                actualizado_en  = v_now,
                actualizado_por = p_usuario_app
            WHERE idtarifa = p_idtarifa;

            IF ROW_COUNT() = 0 THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tarifa no encontrada o sin cambios';
            END IF;

            SET p_out_idtarifa = p_idtarifa;
            SET p_out_idpromocion = NULL;

        /* ---------- BAJA (soft delete) ---------- */
        ELSE
            IF p_idtarifa IS NULL THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'p_idtarifa requerido para baja';
            END IF;

            UPDATE Aerolinea.tarifa
            SET
                eliminado_en     = v_now,
                eliminado_por    = p_usuario_app,
                eliminado_motivio= 'Baja tarifa (ABM)',
                activo           = 0,
                actualizado_en   = v_now,
                actualizado_por  = p_usuario_app
            WHERE idtarifa = p_idtarifa;

            IF ROW_COUNT() = 0 THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tarifa no encontrada';
            END IF;

            -- (opcional) inactivar promos de esa tarifa, sin eliminarlas
            UPDATE Aerolinea.promocion
            SET activo = 0, actualizado_en = v_now, actualizado_por = p_usuario_app
            WHERE tarifa_idtarifa = p_idtarifa AND eliminado_en IS NULL;

            SET p_out_idtarifa = p_idtarifa;
            SET p_out_idpromocion = NULL;
        END IF;

    /* ============================================================
       PROMOCION
       ============================================================ */
    ELSE
        /* ---------- Validaciones comunes a promo ---------- */
        IF p_accion IN ('A','M') THEN
            -- valor porcentaje razonable (0..100)
            IF p_promo_valor IS NOT NULL AND (p_promo_valor < 0 OR p_promo_valor > 100) THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'p_promo_valor fuera de rango (0..100)';
            END IF;
        END IF;

        /* ---------- ALTA ---------- */
        IF p_accion = 'A' THEN
            -- tarifa destino obligatoria y existente (no eliminada)
            IF p_promo_tarifa_id IS NULL THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'p_promo_tarifa_id requerido';
            END IF;

            SELECT COUNT(*) INTO v_tmp
            FROM Aerolinea.tarifa
            WHERE idtarifa = p_promo_tarifa_id
              AND eliminado_en IS NULL;
            IF v_tmp = 0 THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tarifa destino inexistente o eliminada';
            END IF;

            -- (opcional) evitar duplicados de nombre por tarifa “activa”
            SELECT COUNT(*) INTO v_tmp
            FROM Aerolinea.promocion
            WHERE nombre = p_promo_nombre
              AND tarifa_idtarifa = p_promo_tarifa_id
              AND eliminado_en IS NULL;
            IF v_tmp > 0 THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Ya existe una promoción con ese nombre para la tarifa';
            END IF;

            INSERT INTO Aerolinea.promocion
                (nombre, descripcion, valor, activo, tarifa_idtarifa,
                 creado_en, actualizado_en, eliminado_en,
                 creado_por, actualizado_por, eliminado_por, eliminado_motivo)
            VALUES
                (p_promo_nombre, p_promo_descripcion, p_promo_valor, COALESCE(p_promo_activo,1), p_promo_tarifa_id,
                 v_now, v_now, NULL,
                 p_usuario_app, p_usuario_app, NULL, NULL);

            SET p_out_idpromocion = LAST_INSERT_ID();
            SET p_out_idtarifa = p_promo_tarifa_id;

        /* ---------- MODIFICAR ---------- */
        ELSEIF p_accion = 'M' THEN
            IF p_idpromocion IS NULL THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'p_idpromocion requerido para modificar';
            END IF;

            -- Si me cambian la tarifa destino, validar
            IF p_promo_tarifa_id IS NOT NULL THEN
                SELECT COUNT(*) INTO v_tmp
                FROM Aerolinea.tarifa
                WHERE idtarifa = p_promo_tarifa_id
                  AND eliminado_en IS NULL;
                IF v_tmp = 0 THEN
                    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tarifa destino inexistente o eliminada';
                END IF;
            END IF;

            -- Evitar duplicado de nombre dentro de la misma tarifa (si cambian nombre/tarifa)
            IF p_promo_nombre IS NOT NULL OR p_promo_tarifa_id IS NOT NULL THEN
                SELECT COUNT(*) INTO v_tmp
                FROM Aerolinea.promocion
                WHERE nombre = COALESCE(p_promo_nombre, nombre)
                  AND tarifa_idtarifa = COALESCE(p_promo_tarifa_id, tarifa_idtarifa)
                  AND idpromocion <> p_idpromocion
                  AND eliminado_en IS NULL;
                IF v_tmp > 0 THEN
                    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Conflicto de nombre de promoción para la tarifa';
                END IF;
            END IF;

            UPDATE Aerolinea.promocion
            SET
                nombre          = COALESCE(p_promo_nombre, nombre),
                descripcion     = COALESCE(p_promo_descripcion, descripcion),
                valor           = COALESCE(p_promo_valor, valor),
                activo          = COALESCE(p_promo_activo, activo),
                tarifa_idtarifa = COALESCE(p_promo_tarifa_id, tarifa_idtarifa),
                actualizado_en  = v_now,
                actualizado_por = p_usuario_app
            WHERE idpromocion = p_idpromocion;

            IF ROW_COUNT() = 0 THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Promoción no encontrada o sin cambios';
            END IF;

            -- devolver ids
            SELECT tarifa_idtarifa INTO p_out_idtarifa
            FROM Aerolinea.promocion
            WHERE idpromocion = p_idpromocion;

            SET p_out_idpromocion = p_idpromocion;

        /* ---------- BAJA (soft delete) ---------- */
        ELSE
            IF p_idpromocion IS NULL THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'p_idpromocion requerido para baja';
            END IF;

            UPDATE Aerolinea.promocion
            SET
                eliminado_en   = v_now,
                eliminado_por  = p_usuario_app,
                eliminado_motivo = 'Baja promoción (ABM)',
                actualizado_en = v_now,
                actualizado_por= p_usuario_app,
                activo = 0
            WHERE idpromocion = p_idpromocion;

            IF ROW_COUNT() = 0 THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Promoción no encontrada';
            END IF;

            SELECT tarifa_idtarifa INTO p_out_idtarifa
            FROM Aerolinea.promocion
            WHERE idpromocion = p_idpromocion;

            SET p_out_idpromocion = p_idpromocion;
        END IF;
    END IF;

    COMMIT;
END$$

DELIMITER ;
