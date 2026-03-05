USE Aerolinea;

DELIMITER $$

CREATE PROCEDURE Aerolinea.sp_abm_aeropuerto_terminal_puerta(
    IN  p_tipo        ENUM('AEROPUERTO','TERMINAL','PUERTA'),
    IN  p_accion      CHAR(1),   -- 'A' (Alta), 'M' (Modificar), 'B' (Baja lógica)

    /* ======== CAMPOS AEROPUERTO ======== */
    IN  p_id_aeropuerto INT,
    IN  p_tag           VARCHAR(3),
    IN  p_nombre        VARCHAR(150),
    IN  p_ciudad        VARCHAR(120),
    IN  p_latitud       DECIMAL(9,6),
    IN  p_longitud      DECIMAL(9,6),
    IN  p_huso_horario  VARCHAR(45),
    IN  p_activo        TINYINT,

    /* ======== CAMPOS TERMINAL ======== */
    IN  p_id_terminal   INT,
    IN  p_terminal_nombre VARCHAR(60),
    IN  p_terminal_activo TINYINT,
    IN  p_terminal_aeropuerto_id INT,

    /* ======== CAMPOS PUERTA ======== */
    IN  p_id_puerta     INT,
    IN  p_puerta_codigo VARCHAR(10),
    IN  p_puerta_activo TINYINT,
    IN  p_puerta_aeropuerto_id INT,

    /* ======== AUDITORÍA ======== */
    IN  p_usuario_app   INT,

    /* ======== OUTS ======== */
    OUT p_out_id_aeropuerto INT,
    OUT p_out_id_terminal   INT,
    OUT p_out_id_puerta     INT
)
BEGIN
    DECLARE v_now DATETIME DEFAULT NOW();
    DECLARE v_tmp INT DEFAULT 0;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error en sp_abm_aeropuerto_terminal_puerta';
    END;

    START TRANSACTION;

    IF p_tipo NOT IN ('AEROPUERTO','TERMINAL','PUERTA') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tipo inválido';
    END IF;

    IF p_accion NOT IN ('A','M','B') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Acción inválida (use A/M/B)';
    END IF;

    /* ==========================================================
       BLOQUE AEROPUERTO
       ========================================================== */
    IF p_tipo = 'AEROPUERTO' THEN
        IF p_accion = 'A' THEN
            -- Validar tag único
            SELECT COUNT(*) INTO v_tmp
            FROM Aerolinea.aeropuerto
            WHERE tag = p_tag AND eliminado_en IS NULL;
            IF v_tmp > 0 THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El tag de aeropuerto ya existe';
            END IF;

            INSERT INTO Aerolinea.aeropuerto
                (tag, nombre, ciudad, latitud, longitud, huso_horario, activo,
                 creado_en, actualizado_en, eliminado_en,
                 creado_por, actualizado_por, eliminado_por, eliminado_motivo)
            VALUES
                (p_tag, p_nombre, p_ciudad, p_latitud, p_longitud, p_huso_horario, COALESCE(p_activo,1),
                 v_now, v_now, NULL,
                 p_usuario_app, p_usuario_app, NULL, NULL);

            SET p_out_id_aeropuerto = LAST_INSERT_ID();
            SET p_out_id_terminal = NULL;
            SET p_out_id_puerta = NULL;

        ELSEIF p_accion = 'M' THEN
            UPDATE Aerolinea.aeropuerto
            SET nombre = COALESCE(p_nombre, nombre),
                ciudad = COALESCE(p_ciudad, ciudad),
                latitud = COALESCE(p_latitud, latitud),
                longitud = COALESCE(p_longitud, longitud),
                huso_horario = COALESCE(p_huso_horario, huso_horario),
                activo = COALESCE(p_activo, activo),
                actualizado_en = v_now,
                actualizado_por = p_usuario_app
            WHERE idaeropuerto = p_id_aeropuerto;

            IF ROW_COUNT() = 0 THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Aeropuerto no encontrado o sin cambios';
            END IF;

            SET p_out_id_aeropuerto = p_id_aeropuerto;
            SET p_out_id_terminal = NULL;
            SET p_out_id_puerta = NULL;

        ELSE
            UPDATE Aerolinea.aeropuerto
            SET eliminado_en = v_now,
                eliminado_por = p_usuario_app,
                eliminado_motivo = 'Baja lógica aeropuerto',
                activo = 0
            WHERE idaeropuerto = p_id_aeropuerto;

            IF ROW_COUNT() = 0 THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Aeropuerto no encontrado';
            END IF;

            -- Inactivar terminales y puertas dependientes
            UPDATE Aerolinea.terminal
            SET activo = 0, eliminado_en = v_now, eliminado_por = p_usuario_app,
                eliminado_motivo = 'Aeropuerto dado de baja'
            WHERE aeropuerto_idaeropuerto = p_id_aeropuerto;

            UPDATE Aerolinea.puerta
            SET activo = 0, eliminado_en = v_now, eliminado_por = p_usuario_app,
                eliminado_motivo = 'Aeropuerto dado de baja'
            WHERE aeropuerto_idaeropuerto = p_id_aeropuerto;

            SET p_out_id_aeropuerto = p_id_aeropuerto;
            SET p_out_id_terminal = NULL;
            SET p_out_id_puerta = NULL;
        END IF;
    END IF;

    /* ==========================================================
       BLOQUE TERMINAL
       ========================================================== */
    IF p_tipo = 'TERMINAL' THEN
        IF p_accion = 'A' THEN
            -- Validar aeropuerto
            SELECT COUNT(*) INTO v_tmp
            FROM Aerolinea.aeropuerto
            WHERE idaeropuerto = p_terminal_aeropuerto_id AND eliminado_en IS NULL;
            IF v_tmp = 0 THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Aeropuerto no existe o eliminado';
            END IF;

            -- Validar unicidad
            SELECT COUNT(*) INTO v_tmp
            FROM Aerolinea.terminal
            WHERE aeropuerto_idaeropuerto = p_terminal_aeropuerto_id
              AND nombre = p_terminal_nombre
              AND eliminado_en IS NULL;
            IF v_tmp > 0 THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Terminal duplicada para ese aeropuerto';
            END IF;

            INSERT INTO Aerolinea.terminal
                (nombre, activo, creado_en, actualizado_en, eliminado_en,
                 creado_por, actualizado_por, eliminado_por, eliminado_motivo, aeropuerto_idaeropuerto)
            VALUES
                (p_terminal_nombre, COALESCE(p_terminal_activo,1), v_now, v_now, NULL,
                 p_usuario_app, p_usuario_app, NULL, NULL, p_terminal_aeropuerto_id);

            SET p_out_id_terminal = LAST_INSERT_ID();
            SET p_out_id_aeropuerto = p_terminal_aeropuerto_id;
            SET p_out_id_puerta = NULL;

        ELSEIF p_accion = 'M' THEN
            UPDATE Aerolinea.terminal
            SET nombre = COALESCE(p_terminal_nombre, nombre),
                activo = COALESCE(p_terminal_activo, activo),
                actualizado_en = v_now,
                actualizado_por = p_usuario_app
            WHERE idterminal = p_id_terminal;

            IF ROW_COUNT() = 0 THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Terminal no encontrada o sin cambios';
            END IF;

            SET p_out_id_terminal = p_id_terminal;
            SET p_out_id_aeropuerto = p_terminal_aeropuerto_id;
            SET p_out_id_puerta = NULL;

        ELSE
            UPDATE Aerolinea.terminal
            SET activo = 0,
                eliminado_en = v_now,
                eliminado_por = p_usuario_app,
                eliminado_motivo = 'Baja lógica terminal'
            WHERE idterminal = p_id_terminal;

            IF ROW_COUNT() = 0 THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Terminal no encontrada';
            END IF;

            SET p_out_id_terminal = p_id_terminal;
            SET p_out_id_aeropuerto = p_terminal_aeropuerto_id;
            SET p_out_id_puerta = NULL;
        END IF;
    END IF;

    /* ==========================================================
       BLOQUE PUERTA
       ========================================================== */
    IF p_tipo = 'PUERTA' THEN
        IF p_accion = 'A' THEN
            -- Validar aeropuerto
            SELECT COUNT(*) INTO v_tmp
            FROM Aerolinea.aeropuerto
            WHERE idaeropuerto = p_puerta_aeropuerto_id AND eliminado_en IS NULL;
            IF v_tmp = 0 THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Aeropuerto inexistente o eliminado';
            END IF;

            -- Validar unicidad
            SELECT COUNT(*) INTO v_tmp
            FROM Aerolinea.puerta
            WHERE aeropuerto_idaeropuerto = p_puerta_aeropuerto_id
              AND codigo = p_puerta_codigo
              AND eliminado_en IS NULL;
            IF v_tmp > 0 THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Código de puerta duplicado para ese aeropuerto';
            END IF;

            INSERT INTO Aerolinea.puerta
                (codigo, activo, creado_en, actualizado_en, eliminado_en,
                 creado_por, actualizado_por, eliminado_por, eliminado_motivo, aeropuerto_idaeropuerto)
            VALUES
                (p_puerta_codigo, COALESCE(p_puerta_activo,1), v_now, v_now, NULL,
                 p_usuario_app, p_usuario_app, NULL, NULL, p_puerta_aeropuerto_id);

            SET p_out_id_puerta = LAST_INSERT_ID();
            SET p_out_id_aeropuerto = p_puerta_aeropuerto_id;
            SET p_out_id_terminal = NULL;

        ELSEIF p_accion = 'M' THEN
            UPDATE Aerolinea.puerta
            SET codigo = COALESCE(p_puerta_codigo, codigo),
                activo = COALESCE(p_puerta_activo, activo),
                actualizado_en = v_now,
                actualizado_por = p_usuario_app
            WHERE idpuerta = p_id_puerta;

            IF ROW_COUNT() = 0 THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Puerta no encontrada o sin cambios';
            END IF;

            SET p_out_id_puerta = p_id_puerta;
            SET p_out_id_aeropuerto = p_puerta_aeropuerto_id;
            SET p_out_id_terminal = NULL;

        ELSE
            UPDATE Aerolinea.puerta
            SET activo = 0,
                eliminado_en = v_now,
                eliminado_por = p_usuario_app,
                eliminado_motivo = 'Baja lógica puerta'
            WHERE idpuerta = p_id_puerta;

            IF ROW_COUNT() = 0 THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Puerta no encontrada';
            END IF;

            SET p_out_id_puerta = p_id_puerta;
            SET p_out_id_aeropuerto = p_puerta_aeropuerto_id;
            SET p_out_id_terminal = NULL;
        END IF;
    END IF;

    COMMIT;
END$$

DELIMITER ;
