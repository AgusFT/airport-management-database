USE Aerolinea;
DROP PROCEDURE IF EXISTS sp_abm_pasajero;

DELIMITER $$


CREATE PROCEDURE `sp_abm_pasajero`(
    IN  p_accion                CHAR(1),      -- 'A' (alta) | 'M' (modificar) | 'B' (baja lógica)

    -- Claves para ubicar al pasajero (en M/B alcanza con uno u otro)
    IN  p_idusuario             INT,
    IN  p_idpersona             INT,

    /* ===================== persona ===================== */
    IN  p_nombre                VARCHAR(80),
    IN  p_apellido              VARCHAR(80),
    IN  p_fecha_nacimiento      DATE,

    /* ===================== usuario ===================== */
    IN  p_email                 VARCHAR(254),
    IN  p_email_norm            VARCHAR(254),
    IN  p_password_hash         VARBINARY(255),
    IN  p_password_algoritmo    ENUM('argon2id','bcrypt'),
    IN  p_password_actualizado  DATETIME,
    IN  p_verificacion_email    TINYINT,
    IN  p_verificacion_token    VARBINARY(32),
    IN  p_verificacion_expira   DATETIME,
    IN  p_reset_token_hash      VARBINARY(32),
    IN  p_reset_expira          DATETIME,
    IN  p_intentos_fallidos     SMALLINT,
    IN  p_bloqueado_hasta       DATETIME,
    IN  p_ultimo_acceso_en      DATETIME,
    IN  p_usuariocol            VARCHAR(45),

    /* ===================== direccion ===================== */
    IN  p_iddireccion           INT,                  -- para M: qué dirección tocar; si NULL usa principal
    IN  p_dir_tipo              ENUM('Domicilio','Laboral','Comercial','Otro'),
    IN  p_dir_pais              CHAR(2),
    IN  p_dir_provincia         VARCHAR(120),
    IN  p_dir_ciudad            VARCHAR(120),
    IN  p_dir_cp                VARCHAR(15),
    IN  p_dir_calle             VARCHAR(120),
    IN  p_dir_numero            VARCHAR(15),
    IN  p_dir_piso              VARCHAR(10),
    IN  p_dir_depto             VARCHAR(10),
    IN  p_dir_comentario        TEXT,
    IN  p_dir_es_principal      TINYINT,

    /* ===================== telefono ===================== */
    IN  p_idtelefono            INT,                  -- para M: qué teléfono tocar; si NULL usa principal
    IN  p_tel_tipo              ENUM('movil','fijo','trabajo','otro'),
    IN  p_tel_numero            VARCHAR(35),
    IN  p_tel_es_whatsapp       TINYINT,
    IN  p_tel_extension         VARCHAR(6),
    IN  p_tel_es_principal      TINYINT,

    /* ===================== documentacion ===================== */
    IN  p_iddocumentacion       INT,                  -- para M: qué doc tocar; si NULL inserta nueva
    IN  p_doc_tipo              ENUM('DNI','PASAPORTE','OTRO'),
    IN  p_doc_numero            VARCHAR(32),
    IN  p_doc_pais_emisor       CHAR(2),
    IN  p_doc_estado            ENUM('VALIDO','VENCIDO','OBSERVADO','OTRO'),
    IN  p_doc_autoridad         VARCHAR(130),
    IN  p_doc_fecha_emision     DATETIME,
    IN  p_doc_fecha_venc        DATETIME,
    IN  p_doc_observacion       TEXT,

    /* ===================== auditoría ===================== */
    IN  p_usuario_app           INT,                  -- idusuario (FK auditoría)

    /* ===================== OUTs ===================== */
    OUT p_out_idusuario         INT,
    OUT p_out_idpersona         INT
)
BEGIN
    DECLARE v_now DATETIME DEFAULT NOW();
    DECLARE v_idrol_pasajero INT;
    DECLARE v_idpersona INT;
    DECLARE v_idusuario INT;
    DECLARE v_tmp INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SET p_out_idusuario = NULL;
        SET p_out_idpersona = NULL;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error en sp_abm_pasajero';
    END;

    START TRANSACTION;

    /* ---------- rol pasajero ---------- */
    SELECT idrol INTO v_idrol_pasajero
    FROM Aerolinea.rol
    WHERE nombre = 'pasajero'
    LIMIT 1;

    IF v_idrol_pasajero IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No existe rol pasajero';
    END IF;

    /* ---------- resolver identidades ---------- */
    IF p_idusuario IS NOT NULL AND (p_idpersona IS NULL OR p_idpersona=0) THEN
        SELECT persona_idpersona INTO v_idpersona
        FROM Aerolinea.usuario
        WHERE idusuario = p_idusuario;
        SET v_idusuario = p_idusuario;
    ELSEIF p_idpersona IS NOT NULL AND (p_idusuario IS NULL OR p_idusuario=0) THEN
        SELECT idusuario INTO v_idusuario
        FROM Aerolinea.usuario
        WHERE persona_idpersona = p_idpersona
          AND rol_idrol = v_idrol_pasajero
        ORDER BY idusuario DESC LIMIT 1;
        SET v_idpersona = p_idpersona;
    ELSE
        SET v_idusuario = p_idusuario;
        SET v_idpersona = p_idpersona;
    END IF;

    /* ============================================================
       ACCION: ALTA
       ============================================================ */
    IF p_accion = 'A' THEN
        /* Validaciones mínimas */
        IF p_email_norm IS NOT NULL THEN
            SELECT COUNT(*) INTO v_tmp
            FROM Aerolinea.usuario
            WHERE email_norm = p_email_norm
              AND eliminado_en IS NULL;
            IF v_tmp > 0 THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'email_norm ya existe';
            END IF;
        END IF;

        /* persona */
        INSERT INTO Aerolinea.persona
            (nombre, apellido, fecha_de_nacimiento,
             creado_en, actualizado_en, eliminado_en,
             creado_por, actualizado_por, eliminado_por)
        VALUES
            (p_nombre, p_apellido, p_fecha_nacimiento,
             v_now, NULL, NULL,
             p_usuario_app, NULL, NULL);
        SET v_idpersona = LAST_INSERT_ID();

        /* direccion (opcional) */
        IF p_dir_tipo IS NOT NULL THEN
            -- validar país
            IF p_dir_pais IS NOT NULL THEN
                SELECT COUNT(*) INTO v_tmp FROM Aerolinea.pais WHERE tag = p_dir_pais AND eliminado_en IS NULL AND activo=1;
                IF v_tmp = 0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Pais (direccion.pais) inexistente o inactivo'; END IF;
            END IF;

            INSERT INTO Aerolinea.direccion
                (tipo,pais,provincia,ciudad,cp,calle,numero,piso,depto,comentario,es_principal,
                 creado_en,actualizado_en,eliminado_en,creado_por,actualizado_por,eliminado_por,eliminado_motivo,persona_idpersona)
            VALUES
                (p_dir_tipo,p_dir_pais,p_dir_provincia,p_dir_ciudad,p_dir_cp,p_dir_calle,p_dir_numero,p_dir_piso,p_dir_depto,p_dir_comentario,COALESCE(p_dir_es_principal,1),
                 v_now,v_now,NULL,p_usuario_app,p_usuario_app,NULL,NULL,v_idpersona);
        END IF;

        /* telefono (opcional) */
        IF p_tel_tipo IS NOT NULL AND p_tel_numero IS NOT NULL THEN
            INSERT INTO Aerolinea.telefono
                (tipo,numero,es_whatssap,extension,es_principal,
                 creado_en,actualizado_en,eliminado_en,creado_por,actualizado_por,eliminado_por,eliminado_motivo,persona_idpersona)
            VALUES
                (p_tel_tipo,p_tel_numero,COALESCE(p_tel_es_whatsapp,0),p_tel_extension,COALESCE(p_tel_es_principal,1),
                 v_now,v_now,NULL,p_usuario_app,p_usuario_app,NULL,NULL,v_idpersona);
        END IF;

        /* documentacion (opcional) */
        IF p_doc_tipo IS NOT NULL AND p_doc_numero IS NOT NULL THEN
            IF p_doc_pais_emisor IS NOT NULL THEN
                SELECT COUNT(*) INTO v_tmp FROM Aerolinea.pais WHERE tag = p_doc_pais_emisor AND eliminado_en IS NULL AND activo=1;
                IF v_tmp = 0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Pais (documentacion.pais_emisor) inexistente o inactivo'; END IF;
            END IF;

            INSERT INTO Aerolinea.documentacion
                (tipo,numero,pais_emisor,estado,autoridad,fecha_emision,fecha_vencimiento,observacion,
                 creado_en,actualizado_en,creado_por,actualizado_por,eliminado_en,eliminado_por,eliminado_motivo,persona_idpersona)
            VALUES
                (p_doc_tipo,p_doc_numero,p_doc_pais_emisor,COALESCE(p_doc_estado,'VALIDO'),p_doc_autoridad,p_doc_fecha_emision,p_doc_fecha_venc,p_doc_observacion,
                 v_now,v_now,p_usuario_app,p_usuario_app,NULL,NULL,NULL,v_idpersona);
        END IF;

        /* usuario (rol pasajero) */
        INSERT INTO Aerolinea.usuario
            (email,email_norm,password_hash,password_algoritmo,password_actualizado_en,
             verificacion_email,verificacion_token_hash,verificacion_expira,
             reset_token_hash,reset_expira,intentos_fallidos,bloqueado_hasta,ultimo_acceso_en,
             creado_en,actualizado_en,eliminado_en,creado_por,actualizado_por,eliminado_por,eliminado_motivo,
             usuariocol,rol_idrol,persona_idpersona)
        VALUES
            (p_email,p_email_norm,p_password_hash,p_password_algoritmo,COALESCE(p_password_actualizado,v_now),
             COALESCE(p_verificacion_email,0),p_verificacion_token,p_verificacion_expira,
             p_reset_token_hash,p_reset_expira,p_intentos_fallidos,p_bloqueado_hasta,p_ultimo_acceso_en,
             v_now,v_now,NULL,p_usuario_app,p_usuario_app,NULL,NULL,
             p_usuariocol,v_idrol_pasajero,v_idpersona);
        SET v_idusuario = LAST_INSERT_ID();

        SET p_out_idusuario = v_idusuario;
        SET p_out_idpersona = v_idpersona;

    /* ============================================================
       ACCION: MODIFICAR
       ============================================================ */
    ELSEIF p_accion = 'M' THEN
        IF v_idpersona IS NULL OR v_idusuario IS NULL THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Debe indicar p_idusuario o p_idpersona válidos';
        END IF;

        /* persona */
        UPDATE Aerolinea.persona
        SET nombre = COALESCE(p_nombre,nombre),
            apellido = COALESCE(p_apellido,apellido),
            fecha_de_nacimiento = COALESCE(p_fecha_nacimiento,fecha_de_nacimiento),
            actualizado_en = v_now,
            actualizado_por = p_usuario_app
        WHERE idpersona = v_idpersona;

        /* usuario  */
        IF p_email_norm IS NOT NULL THEN
            SELECT COUNT(*) INTO v_tmp
            FROM Aerolinea.usuario
            WHERE email_norm = p_email_norm
              AND idusuario <> v_idusuario
              AND eliminado_en IS NULL;
            IF v_tmp > 0 THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'email_norm ya existe en otro usuario';
            END IF;
        END IF;

        UPDATE Aerolinea.usuario
        SET email = COALESCE(p_email,email),
            email_norm = COALESCE(p_email_norm,email_norm),
            password_hash = COALESCE(p_password_hash,password_hash),
            password_algoritmo = COALESCE(p_password_algoritmo,password_algoritmo),
            password_actualizado_en = COALESCE(p_password_actualizado,password_actualizado_en),
            verificacion_email = COALESCE(p_verificacion_email,verificacion_email),
            verificacion_token_hash = COALESCE(p_verificacion_token,verificacion_token_hash),
            verificacion_expira = COALESCE(p_verificacion_expira,verificacion_expira),
            reset_token_hash = COALESCE(p_reset_token_hash,reset_token_hash),
            reset_expira = COALESCE(p_reset_expira,reset_expira),
            intentos_fallidos = COALESCE(p_intentos_fallidos,intentos_fallidos),
            bloqueado_hasta = COALESCE(p_bloqueado_hasta,bloqueado_hasta),
            ultimo_acceso_en = COALESCE(p_ultimo_acceso_en,ultimo_acceso_en),
            actualizado_en = v_now,
            actualizado_por = p_usuario_app,
            usuariocol = COALESCE(p_usuariocol,usuariocol),
            rol_idrol = v_idrol_pasajero  
        WHERE idusuario = v_idusuario;

        /* direccion: si se pasan campos, upsert sobre id indicado o principal */
        IF p_dir_tipo IS NOT NULL OR p_dir_pais IS NOT NULL OR p_dir_ciudad IS NOT NULL
           OR p_dir_calle IS NOT NULL OR p_dir_numero IS NOT NULL OR p_dir_es_principal IS NOT NULL
           OR p_dir_provincia IS NOT NULL OR p_dir_cp IS NOT NULL OR p_dir_piso IS NOT NULL
           OR p_dir_depto IS NOT NULL OR p_dir_comentario IS NOT NULL THEN

            -- obtener iddireccion si no lo pasaron: tomar principal
            IF (p_iddireccion IS NULL OR p_iddireccion=0) THEN
                SELECT iddireccion INTO p_iddireccion
                FROM Aerolinea.direccion
                WHERE persona_idpersona = v_idpersona
                ORDER BY es_principal DESC, iddireccion ASC
                LIMIT 1;
            END IF;

            IF p_iddireccion IS NOT NULL THEN
                UPDATE Aerolinea.direccion
                SET tipo = COALESCE(p_dir_tipo,tipo),
                    pais = COALESCE(p_dir_pais,pais),
                    provincia = COALESCE(p_dir_provincia,provincia),
                    ciudad = COALESCE(p_dir_ciudad,ciudad),
                    cp = COALESCE(p_dir_cp,cp),
                    calle = COALESCE(p_dir_calle,calle),
                    numero = COALESCE(p_dir_numero,numero),
                    piso = COALESCE(p_dir_piso,piso),
                    depto = COALESCE(p_dir_depto,depto),
                    comentario = COALESCE(p_dir_comentario,comentario),
                    es_principal = COALESCE(p_dir_es_principal,es_principal),
                    actualizado_en = v_now,
                    actualizado_por = p_usuario_app
                WHERE iddireccion = p_iddireccion
                  AND persona_idpersona = v_idpersona;

                IF ROW_COUNT() = 0 THEN
                    INSERT INTO Aerolinea.direccion
                        (tipo,pais,provincia,ciudad,cp,calle,numero,piso,depto,comentario,es_principal,
                         creado_en,actualizado_en,eliminado_en,creado_por,actualizado_por,eliminado_por,eliminado_motivo,persona_idpersona)
                    VALUES
                        (COALESCE(p_dir_tipo,'Domicilio'),p_dir_pais,p_dir_provincia,p_dir_ciudad,p_dir_cp,p_dir_calle,p_dir_numero,p_dir_piso,p_dir_depto,p_dir_comentario,COALESCE(p_dir_es_principal,1),
                         v_now,v_now,NULL,p_usuario_app,p_usuario_app,NULL,NULL,v_idpersona);
                END IF;
            ELSE
                INSERT INTO Aerolinea.direccion
                    (tipo,pais,provincia,ciudad,cp,calle,numero,piso,depto,comentario,es_principal,
                     creado_en,actualizado_en,eliminado_en,creado_por,actualizado_por,eliminado_por,eliminado_motivo,persona_idpersona)
                VALUES
                    (COALESCE(p_dir_tipo,'Domicilio'),p_dir_pais,p_dir_provincia,p_dir_ciudad,p_dir_cp,p_dir_calle,p_dir_numero,p_dir_piso,p_dir_depto,p_dir_comentario,COALESCE(p_dir_es_principal,1),
                     v_now,v_now,NULL,p_usuario_app,p_usuario_app,NULL,NULL,v_idpersona);
            END IF;
        END IF;

        /* telefono: upsert similar */
        IF p_tel_tipo IS NOT NULL OR p_tel_numero IS NOT NULL OR p_tel_es_whatsapp IS NOT NULL
           OR p_tel_extension IS NOT NULL OR p_tel_es_principal IS NOT NULL THEN

            IF (p_idtelefono IS NULL OR p_idtelefono=0) THEN
                SELECT idtelefono INTO p_idtelefono
                FROM Aerolinea.telefono
                WHERE persona_idpersona = v_idpersona
                ORDER BY es_principal DESC, idtelefono ASC
                LIMIT 1;
            END IF;

            IF p_idtelefono IS NOT NULL THEN
                UPDATE Aerolinea.telefono
                SET tipo = COALESCE(p_tel_tipo,tipo),
                    numero = COALESCE(p_tel_numero,numero),
                    es_whatssap = COALESCE(p_tel_es_whatsapp,es_whatssap),
                    extension = COALESCE(p_tel_extension,extension),
                    es_principal = COALESCE(p_tel_es_principal,es_principal),
                    actualizado_en = v_now,
                    actualizado_por = p_usuario_app
                WHERE idtelefono = p_idtelefono
                  AND persona_idpersona = v_idpersona;

                IF ROW_COUNT() = 0 THEN
                    INSERT INTO Aerolinea.telefono
                        (tipo,numero,es_whatssap,extension,es_principal,
                         creado_en,actualizado_en,eliminado_en,creado_por,actualizado_por,eliminado_por,eliminado_motivo,persona_idpersona)
                    VALUES
                        (COALESCE(p_tel_tipo,'movil'),p_tel_numero,COALESCE(p_tel_es_whatsapp,0),p_tel_extension,COALESCE(p_tel_es_principal,1),
                         v_now,v_now,NULL,p_usuario_app,p_usuario_app,NULL,NULL,v_idpersona);
                END IF;
            ELSE
                INSERT INTO Aerolinea.telefono
                    (tipo,numero,es_whatssap,extension,es_principal,
                     creado_en,actualizado_en,eliminado_en,creado_por,actualizado_por,eliminado_por,eliminado_motivo,persona_idpersona)
                VALUES
                    (COALESCE(p_tel_tipo,'movil'),p_tel_numero,COALESCE(p_tel_es_whatsapp,0),p_tel_extension,COALESCE(p_tel_es_principal,1),
                     v_now,v_now,NULL,p_usuario_app,p_usuario_app,NULL,NULL,v_idpersona);
            END IF;
        END IF;

        /* documentacion: si se pasa id → update; si no → inserta nueva */
        IF p_doc_tipo IS NOT NULL OR p_doc_numero IS NOT NULL OR p_doc_estado IS NOT NULL
           OR p_doc_pais_emisor IS NOT NULL OR p_doc_autoridad IS NOT NULL
           OR p_doc_fecha_emision IS NOT NULL OR p_doc_fecha_venc IS NOT NULL
           OR p_doc_observacion IS NOT NULL THEN

            IF p_iddocumentacion IS NOT NULL AND p_iddocumentacion>0 THEN
                UPDATE Aerolinea.documentacion
                SET tipo = COALESCE(p_doc_tipo,tipo),
                    numero = COALESCE(p_doc_numero,numero),
                    pais_emisor = COALESCE(p_doc_pais_emisor,pais_emisor),
                    estado = COALESCE(p_doc_estado,estado),
                    autoridad = COALESCE(p_doc_autoridad,autoridad),
                    fecha_emision = COALESCE(p_doc_fecha_emision,fecha_emision),
                    fecha_vencimiento = COALESCE(p_doc_fecha_venc,fecha_vencimiento),
                    observacion = COALESCE(p_doc_observacion,observacion),
                    actualizado_en = v_now,
                    actualizado_por = p_usuario_app
                WHERE iddocumentacion = p_iddocumentacion
                  AND persona_idpersona = v_idpersona;
            ELSE
                INSERT INTO Aerolinea.documentacion
                    (tipo,numero,pais_emisor,estado,autoridad,fecha_emision,fecha_vencimiento,observacion,
                     creado_en,actualizado_en,creado_por,actualizado_por,eliminado_en,eliminado_por,eliminado_motivo,persona_idpersona)
                VALUES
                    (p_doc_tipo,p_doc_numero,p_doc_pais_emisor,COALESCE(p_doc_estado,'VALIDO'),p_doc_autoridad,p_doc_fecha_emision,p_doc_fecha_venc,p_doc_observacion,
                     v_now,v_now,p_usuario_app,p_usuario_app,NULL,NULL,NULL,v_idpersona);
            END IF;
        END IF;

        SET p_out_idusuario = v_idusuario;
        SET p_out_idpersona = v_idpersona;

    /* ============================================================
       ACCION: BAJA LÓGICA
       ============================================================ */
    ELSEIF p_accion = 'B' THEN
        IF v_idpersona IS NULL OR v_idusuario IS NULL THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Debe indicar p_idusuario o p_idpersona válidos';
        END IF;

        UPDATE Aerolinea.usuario
        SET eliminado_en = v_now, eliminado_por = p_usuario_app, eliminado_motivo = 'Baja pasajero (ABM)',
            actualizado_en = v_now, actualizado_por = p_usuario_app
        WHERE idusuario = v_idusuario;

        UPDATE Aerolinea.persona
        SET eliminado_en = v_now, eliminado_por = p_usuario_app,
            actualizado_en = v_now, actualizado_por = p_usuario_app
        WHERE idpersona = v_idpersona;

        UPDATE Aerolinea.direccion
        SET eliminado_en = v_now, eliminado_por = p_usuario_app, eliminado_motivo = 'Baja pasajero (ABM)',
            actualizado_en = v_now, actualizado_por = p_usuario_app
        WHERE persona_idpersona = v_idpersona;

        UPDATE Aerolinea.telefono
        SET eliminado_en = v_now, eliminado_por = p_usuario_app, eliminado_motivo = 'Baja pasajero (ABM)',
            actualizado_en = v_now, actualizado_por = p_usuario_app
        WHERE persona_idpersona = v_idpersona;

        UPDATE Aerolinea.documentacion
        SET eliminado_en = v_now, eliminado_por = p_usuario_app, eliminado_motivo = 'Baja pasajero (ABM)',
            actualizado_en = v_now, actualizado_por = p_usuario_app
        WHERE persona_idpersona = v_idpersona;

        SET p_out_idusuario = v_idusuario;
        SET p_out_idpersona = v_idpersona;

    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'p_accion debe ser A, M o B';
    END IF;

    COMMIT;
END$$

DELIMITER ;
