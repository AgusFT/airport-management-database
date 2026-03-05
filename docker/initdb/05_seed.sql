USE Aerolinea;

-- ======================================================================
-- INSERTS: Aerolinea.rol 
-- ======================================================================

INSERT INTO Aerolinea.rol
  (nombre, descripcion, creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo)
VALUES
  ('admin_sistema',              'Administración general del sistema',              '2025-01-15 10:00:00', '2025-01-15 10:00:00', NULL, NULL, NULL, NULL, NULL),
  ('supervisor_operaciones',     'Supervisa operaciones de vuelo y aeropuerto',     '2025-01-15 10:00:10', '2025-01-15 10:00:10', NULL, NULL, NULL, NULL, NULL),
  ('agente_checkin',             'Atiende mostrador de check-in y documentación',   '2025-01-15 10:00:20', '2025-01-15 10:00:20', NULL, NULL, NULL, NULL, NULL),
  ('agente_embarque',            'Control de puertas y embarque de pasajeros',      '2025-01-15 10:00:30', '2025-01-15 10:00:30', NULL, NULL, NULL, NULL, NULL),
  ('coordinador_rampa',          'Coordina rampa, equipaje y abastecimiento',       '2025-01-15 10:00:40', '2025-01-15 10:00:40', NULL, NULL, NULL, NULL, NULL),
  ('planificador_rutas',         'Planifica rutas y programación de vuelos',        '2025-01-15 10:00:50', '2025-01-15 10:00:50', NULL, NULL, NULL, NULL, NULL),
  ('analista_tarifas',           'Define tarifas, tasas e impuestos',                '2025-01-15 10:01:00', '2025-01-15 10:01:00', NULL, NULL, NULL, NULL, NULL),
  ('analista_promociones',       'Gestiona promociones y descuentos',                '2025-01-15 10:01:10', '2025-01-15 10:01:10', NULL, NULL, NULL, NULL, NULL),
  ('agente_reservas',            'Crea y modifica reservas de pasajeros',           '2025-01-15 10:01:20', '2025-01-15 10:01:20', NULL, NULL, NULL, NULL, NULL),
  ('cajero_emision',             'Emite boletos y gestiona cobros',                 '2025-01-15 10:01:30', '2025-01-15 10:01:30', NULL, NULL, NULL, NULL, NULL),
  ('soporte_cliente',            'Atención posventa y reclamos',                    '2025-01-15 10:01:40', '2025-01-15 10:01:40', NULL, NULL, NULL, NULL, NULL),
  ('jefe_tripulacion',           'Asigna tripulaciones a vuelos',                   '2025-01-15 10:01:50', '2025-01-15 10:01:50', NULL, NULL, NULL, NULL, NULL),
  ('tecnico_mantenimiento',      'Registra mantenimiento de aeronaves',             '2025-01-15 10:02:00', '2025-01-15 10:02:00', NULL, NULL, NULL, NULL, NULL),
  ('auditor_seguridad',          'Audita procesos y seguridad operacional',         '2025-01-15 10:02:10', '2025-01-15 10:02:10', NULL, NULL, NULL, NULL, NULL),
  ('operador_puerta',            'Opera puertas y anuncia embarques',               '2025-01-15 10:02:20', '2025-01-15 10:02:20', NULL, NULL, NULL, NULL, NULL),
  ('gestor_documentacion',       'Gestiona documentación de pasajeros',             '2025-01-15 10:02:30', '2025-01-15 10:02:30', NULL, NULL, NULL, NULL, NULL),
  ('analista_capacidad',         'Define configuración de cabina y asientos',       '2025-01-15 10:02:40', '2025-01-15 10:02:40', NULL, NULL, NULL, NULL, NULL),
  ('coordinador_aeropuerto',     'Coordina operaciones con aeropuertos',            '2025-01-15 10:02:50', '2025-01-15 10:02:50', NULL, NULL, NULL, NULL, NULL),
  ('control_ingresos',           'Conciliación de ingresos por vuelos',             '2025-01-15 10:03:00', '2025-01-15 10:03:00', NULL, NULL, NULL, NULL, NULL),
  ('reportes_gerenciales',       'Acceso a reportes y métricas ejecutivas',         '2025-01-15 10:03:10', '2025-01-15 10:03:10', NULL, NULL, NULL, NULL, NULL),
  ('pasajero',                   'Usuario registrado que compra y gestiona pasajes','2025-01-15 10:03:20', '2025-01-15 10:03:20', NULL, NULL, NULL, NULL, NULL);

-- ======================================================================
-- INSERTS: Aerolinea.permiso 
-- ======================================================================

INSERT INTO Aerolinea.permiso
  (codigo, descripcion, creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo)
VALUES
  ('USR_CREAR',        'Crear nuevos usuarios del sistema',                         '2025-01-15 10:10:00', '2025-01-15 10:10:00', NULL, NULL, NULL, NULL, NULL),
  ('USR_EDITAR',       'Editar datos de usuarios existentes',                       '2025-01-15 10:10:10', '2025-01-15 10:10:10', NULL, NULL, NULL, NULL, NULL),
  ('USR_ELIMINAR',     'Eliminar o desactivar usuarios',                            '2025-01-15 10:10:20', '2025-01-15 10:10:20', NULL, NULL, NULL, NULL, NULL),
  ('ROL_CREAR',        'Crear nuevos roles con permisos asociados',                 '2025-01-15 10:10:30', '2025-01-15 10:10:30', NULL, NULL, NULL, NULL, NULL),
  ('ROL_EDITAR',       'Editar roles y asignaciones de permisos',                   '2025-01-15 10:10:40', '2025-01-15 10:10:40', NULL, NULL, NULL, NULL, NULL),
  ('ROL_ELIMINAR',     'Eliminar o desactivar roles',                               '2025-01-15 10:10:50', '2025-01-15 10:10:50', NULL, NULL, NULL, NULL, NULL),
  ('VUE_CREAR',        'Programar un nuevo vuelo',                                  '2025-01-15 10:11:00', '2025-01-15 10:11:00', NULL, NULL, NULL, NULL, NULL),
  ('VUE_EDITAR',       'Modificar información de vuelos existentes',                '2025-01-15 10:11:10', '2025-01-15 10:11:10', NULL, NULL, NULL, NULL, NULL),
  ('VUE_ELIMINAR',     'Cancelar vuelos del sistema',                               '2025-01-15 10:11:20', '2025-01-15 10:11:20', NULL, NULL, NULL, NULL, NULL),
  ('RES_CREAR',        'Registrar una nueva reserva de pasajero',                   '2025-01-15 10:11:30', '2025-01-15 10:11:30', NULL, NULL, NULL, NULL, NULL),
  ('RES_EDITAR',       'Modificar datos de una reserva existente',                  '2025-01-15 10:11:40', '2025-01-15 10:11:40', NULL, NULL, NULL, NULL, NULL),
  ('RES_ELIMINAR',     'Anular o eliminar reservas de pasajeros',                   '2025-01-15 10:11:50', '2025-01-15 10:11:50', NULL, NULL, NULL, NULL, NULL),
  ('TAR_EDITAR',       'Actualizar precios, tasas o impuestos de tarifas',          '2025-01-15 10:12:00', '2025-01-15 10:12:00', NULL, NULL, NULL, NULL, NULL),
  ('PRO_CREAR',        'Crear nuevas promociones o descuentos',                     '2025-01-15 10:12:10', '2025-01-15 10:12:10', NULL, NULL, NULL, NULL, NULL),
  ('PRO_EDITAR',       'Editar promociones vigentes',                               '2025-01-15 10:12:20', '2025-01-15 10:12:20', NULL, NULL, NULL, NULL, NULL),
  ('REP_VER',          'Visualizar reportes operativos o financieros',              '2025-01-15 10:12:30', '2025-01-15 10:12:30', NULL, NULL, NULL, NULL, NULL),
  ('DOC_SUBIR',        'Subir documentación digital de pasajeros',                  '2025-01-15 10:12:40', '2025-01-15 10:12:40', NULL, NULL, NULL, NULL, NULL),
  ('DOC_VER',          'Consultar documentación y credenciales de pasajeros',       '2025-01-15 10:12:50', '2025-01-15 10:12:50', NULL, NULL, NULL, NULL, NULL),
  ('AUDITAR',          'Acceder a registros de auditoría y logs de actividad',      '2025-01-15 10:13:00', '2025-01-15 10:13:00', NULL, NULL, NULL, NULL, NULL),
  ('CFG_SISTEMA',      'Modificar configuraciones generales del sistema',           '2025-01-15 10:13:10', '2025-01-15 10:13:10', NULL, NULL, NULL, NULL, NULL),
  ('VUE_BUSCAR',        'Buscar/consultar vuelos publicados',                        '2025-01-15 10:20:00','2025-01-15 10:20:00',NULL,NULL,NULL,NULL,NULL),
  ('TAR_VER',           'Ver tarifas y reglas vigentes',                              '2025-01-15 10:20:10','2025-01-15 10:20:10',NULL,NULL,NULL,NULL,NULL),
  ('PRO_VER',           'Ver promociones disponibles',                                '2025-01-15 10:20:20','2025-01-15 10:20:20',NULL,NULL,NULL,NULL,NULL),
  ('RES_VER',           'Ver/consultar sus reservas',                                 '2025-01-15 10:20:30','2025-01-15 10:20:30',NULL,NULL,NULL,NULL,NULL),
  ('RES_CANCELAR',      'Cancelar su propia reserva',                                 '2025-01-15 10:20:40','2025-01-15 10:20:40',NULL,NULL,NULL,NULL,NULL),
  ('ASIENTO_VER',       'Ver mapa de asientos por vuelo',                             '2025-01-15 10:20:50','2025-01-15 10:20:50',NULL,NULL,NULL,NULL,NULL),
  ('ASIENTO_ELEGIR',    'Seleccionar/confirmar asiento en el vuelo',                  '2025-01-15 10:21:00','2025-01-15 10:21:00',NULL,NULL,NULL,NULL,NULL),
  ('PAGO_INICIAR',      'Iniciar proceso de pago de la reserva',                      '2025-01-15 10:21:10','2025-01-15 10:21:10',NULL,NULL,NULL,NULL,NULL),
  ('PAGO_CONFIRMAR',    'Confirmar pago y generación del boleto',                     '2025-01-15 10:21:20','2025-01-15 10:21:20',NULL,NULL,NULL,NULL,NULL),
  ('CHECKIN_INICIAR',   'Iniciar check-in online',                                    '2025-01-15 10:21:30','2025-01-15 10:21:30',NULL,NULL,NULL,NULL,NULL),
  ('CHECKIN_CONFIRMAR', 'Finalizar check-in y emitir boarding',                       '2025-01-15 10:21:40','2025-01-15 10:21:40',NULL,NULL,NULL,NULL,NULL),
  ('BOLETO_VER',        'Ver/consultar su(s) boleto(s)',                              '2025-01-15 10:21:50','2025-01-15 10:21:50',NULL,NULL,NULL,NULL,NULL),
  ('BOLETO_DESCARGAR',  'Descargar/obtener PDF del boleto o boarding pass',           '2025-01-15 10:22:00','2025-01-15 10:22:00',NULL,NULL,NULL,NULL,NULL);

-- ======================================================================
-- Inserts de rol_permiso
-- se asignan permisos a los roles
-- ======================================================================
	/* ===========================
	   1) admin_sistema 
	   =========================== */
	INSERT INTO Aerolinea.rol_permiso
	(creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo,
	 permiso_idpermiso, rol_idrol)
	SELECT '2025-01-15 10:40:00','2025-01-15 10:40:00',NULL,NULL,NULL,NULL,NULL, p.idpermiso, r.idrol
	FROM Aerolinea.permiso p
	JOIN Aerolinea.rol r ON r.nombre='admin_sistema'
	WHERE p.codigo IN ('CFG_SISTEMA','AUDITAR','REP_VER','DOC_VER','DOC_SUBIR',
					   'USR_CREAR','USR_EDITAR','USR_ELIMINAR','ROL_CREAR','ROL_EDITAR','ROL_ELIMINAR',
					   'VUE_CREAR','VUE_EDITAR','VUE_ELIMINAR','VUE_BUSCAR',
					   'TAR_EDITAR','PRO_CREAR','PRO_EDITAR','PRO_VER','TAR_VER',
					   'RES_CREAR','RES_EDITAR','RES_ELIMINAR','RES_VER','RES_CANCELAR',
					   'ASIENTO_VER','ASIENTO_ELEGIR','PAGO_INICIAR','PAGO_CONFIRMAR',
					   'CHECKIN_INICIAR','CHECKIN_CONFIRMAR','BOLETO_VER','BOLETO_DESCARGAR')
	AND NOT EXISTS (
	  SELECT 1 FROM Aerolinea.rol_permiso rp
	  WHERE rp.permiso_idpermiso = p.idpermiso AND rp.rol_idrol = r.idrol
	);
	/* ===========================
	   2) supervisor_operaciones
	   =========================== */
	INSERT INTO Aerolinea.rol_permiso
	(creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo,
	 permiso_idpermiso, rol_idrol)
	SELECT '2025-01-15 10:40:10','2025-01-15 10:40:10',NULL,NULL,NULL,NULL,NULL, p.idpermiso, r.idrol
	FROM Aerolinea.permiso p
	JOIN Aerolinea.rol r ON r.nombre='supervisor_operaciones'
	WHERE p.codigo IN ('VUE_BUSCAR','VUE_EDITAR','VUE_ELIMINAR','ASIENTO_VER','REP_VER')
	AND NOT EXISTS (SELECT 1 FROM Aerolinea.rol_permiso rp WHERE rp.permiso_idpermiso=p.idpermiso AND rp.rol_idrol=r.idrol);

	/* ===========================
	   3) agente_checkin
	   =========================== */
	INSERT INTO Aerolinea.rol_permiso
	(creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo,
	 permiso_idpermiso, rol_idrol)
	SELECT '2025-01-15 10:40:20','2025-01-15 10:40:20',NULL,NULL,NULL,NULL,NULL, p.idpermiso, r.idrol
	FROM Aerolinea.permiso p
	JOIN Aerolinea.rol r ON r.nombre='agente_checkin'
	WHERE p.codigo IN ('RES_VER','DOC_VER','ASIENTO_VER','ASIENTO_ELEGIR','CHECKIN_INICIAR','CHECKIN_CONFIRMAR','BOLETO_VER','BOLETO_DESCARGAR')
	AND NOT EXISTS (SELECT 1 FROM Aerolinea.rol_permiso rp WHERE rp.permiso_idpermiso=p.idpermiso AND rp.rol_idrol=r.idrol);

	/* ===========================
	   4) agente_embarque
	   =========================== */
	INSERT INTO Aerolinea.rol_permiso
	(creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo,
	 permiso_idpermiso, rol_idrol)
	SELECT '2025-01-15 10:40:30','2025-01-15 10:40:30',NULL,NULL,NULL,NULL,NULL, p.idpermiso, r.idrol
	FROM Aerolinea.permiso p
	JOIN Aerolinea.rol r ON r.nombre='agente_embarque'
	WHERE p.codigo IN ('VUE_BUSCAR','ASIENTO_VER','BOLETO_VER','BOLETO_DESCARGAR','CHECKIN_CONFIRMAR')
	AND NOT EXISTS (SELECT 1 FROM Aerolinea.rol_permiso rp WHERE rp.permiso_idpermiso=p.idpermiso AND rp.rol_idrol=r.idrol);

	/* ===========================
	   5) coordinador_rampa
	   =========================== */
	INSERT INTO Aerolinea.rol_permiso
	(creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo,
	 permiso_idpermiso, rol_idrol)
	SELECT '2025-01-15 10:40:40','2025-01-15 10:40:40',NULL,NULL,NULL,NULL,NULL, p.idpermiso, r.idrol
	FROM Aerolinea.permiso p
	JOIN Aerolinea.rol r ON r.nombre='coordinador_rampa'
	WHERE p.codigo IN ('VUE_BUSCAR','REP_VER')
	AND NOT EXISTS (SELECT 1 FROM Aerolinea.rol_permiso rp WHERE rp.permiso_idpermiso=p.idpermiso AND rp.rol_idrol=r.idrol);

	/* ===========================
	   6) planificador_rutas
	   =========================== */
	INSERT INTO Aerolinea.rol_permiso
	(creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo,
	 permiso_idpermiso, rol_idrol)
	SELECT '2025-01-15 10:40:50','2025-01-15 10:40:50',NULL,NULL,NULL,NULL,NULL, p.idpermiso, r.idrol
	FROM Aerolinea.permiso p
	JOIN Aerolinea.rol r ON r.nombre='planificador_rutas'
	WHERE p.codigo IN ('VUE_CREAR','VUE_EDITAR','VUE_ELIMINAR','VUE_BUSCAR','REP_VER')
	AND NOT EXISTS (SELECT 1 FROM Aerolinea.rol_permiso rp WHERE rp.permiso_idpermiso=p.idpermiso AND rp.rol_idrol=r.idrol);

	/* ===========================
	   7) analista_tarifas 
	   =========================== */
	INSERT INTO Aerolinea.rol_permiso
	(creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo,
	 permiso_idpermiso, rol_idrol)
	SELECT '2025-01-15 10:41:00','2025-01-15 10:41:00',NULL,NULL,NULL,NULL,NULL, p.idpermiso, r.idrol
	FROM Aerolinea.permiso p
	JOIN Aerolinea.rol r ON r.nombre='analista_tarifas'
	WHERE p.codigo IN ('TAR_VER','REP_VER')
	AND NOT EXISTS (SELECT 1 FROM Aerolinea.rol_permiso rp WHERE rp.permiso_idpermiso=p.idpermiso AND rp.rol_idrol=r.idrol);

	/* ===========================
	   8) analista_promociones 
	   =========================== */
	INSERT INTO Aerolinea.rol_permiso
	(creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo,
	 permiso_idpermiso, rol_idrol)
	SELECT '2025-01-15 10:41:10','2025-01-15 10:41:10',NULL,NULL,NULL,NULL,NULL, p.idpermiso, r.idrol
	FROM Aerolinea.permiso p
	JOIN Aerolinea.rol r ON r.nombre='analista_promociones'
	WHERE p.codigo IN ('PRO_VER','REP_VER')
	AND NOT EXISTS (SELECT 1 FROM Aerolinea.rol_permiso rp WHERE rp.permiso_idpermiso=p.idpermiso AND rp.rol_idrol=r.idrol);

	/* ===========================
	   9) agente_reservas
	   =========================== */
	INSERT INTO Aerolinea.rol_permiso
	(creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo,
	 permiso_idpermiso, rol_idrol)
	SELECT '2025-01-15 10:41:20','2025-01-15 10:41:20',NULL,NULL,NULL,NULL,NULL, p.idpermiso, r.idrol
	FROM Aerolinea.permiso p
	JOIN Aerolinea.rol r ON r.nombre='agente_reservas'
	WHERE p.codigo IN ('VUE_BUSCAR','TAR_VER','PRO_VER',
					   'RES_CREAR','RES_EDITAR','RES_ELIMINAR','RES_VER','RES_CANCELAR',
					   'DOC_VER','DOC_SUBIR',
					   'ASIENTO_VER','ASIENTO_ELEGIR',
					   'PAGO_INICIAR','PAGO_CONFIRMAR',
					   'BOLETO_VER','BOLETO_DESCARGAR')
	AND NOT EXISTS (SELECT 1 FROM Aerolinea.rol_permiso rp WHERE rp.permiso_idpermiso=p.idpermiso AND rp.rol_idrol=r.idrol);

	/* ===========================
	   10) cajero_emision
	   =========================== */
	INSERT INTO Aerolinea.rol_permiso
	(creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo,
	 permiso_idpermiso, rol_idrol)
	SELECT '2025-01-15 10:41:30','2025-01-15 10:41:30',NULL,NULL,NULL,NULL,NULL, p.idpermiso, r.idrol
	FROM Aerolinea.permiso p
	JOIN Aerolinea.rol r ON r.nombre='cajero_emision'
	WHERE p.codigo IN ('RES_VER','PAGO_CONFIRMAR','BOLETO_VER','BOLETO_DESCARGAR','REP_VER')
	AND NOT EXISTS (SELECT 1 FROM Aerolinea.rol_permiso rp WHERE rp.permiso_idpermiso=p.idpermiso AND rp.rol_idrol=r.idrol);

	/* ===========================
	   11) soporte_cliente
	   =========================== */
	INSERT INTO Aerolinea.rol_permiso
	(creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo,
	 permiso_idpermiso, rol_idrol)
	SELECT '2025-01-15 10:41:40','2025-01-15 10:41:40',NULL,NULL,NULL,NULL,NULL, p.idpermiso, r.idrol
	FROM Aerolinea.permiso p
	JOIN Aerolinea.rol r ON r.nombre='soporte_cliente'
	WHERE p.codigo IN ('RES_VER','RES_EDITAR','RES_CANCELAR','DOC_VER','BOLETO_VER','BOLETO_DESCARGAR','REP_VER')
	AND NOT EXISTS (SELECT 1 FROM Aerolinea.rol_permiso rp WHERE rp.permiso_idpermiso=p.idpermiso AND rp.rol_idrol=r.idrol);

	/* ===========================
	   12) jefe_tripulacion
	   =========================== */
	INSERT INTO Aerolinea.rol_permiso
	(creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo,
	 permiso_idpermiso, rol_idrol)
	SELECT '2025-01-15 10:41:50','2025-01-15 10:41:50',NULL,NULL,NULL,NULL,NULL, p.idpermiso, r.idrol
	FROM Aerolinea.permiso p
	JOIN Aerolinea.rol r ON r.nombre='jefe_tripulacion'
	WHERE p.codigo IN ('VUE_BUSCAR','REP_VER','DOC_VER')
	AND NOT EXISTS (SELECT 1 FROM Aerolinea.rol_permiso rp WHERE rp.permiso_idpermiso=p.idpermiso AND rp.rol_idrol=r.idrol);

	/* ===========================
	   13) tecnico_mantenimiento
	   =========================== */
	INSERT INTO Aerolinea.rol_permiso
	(creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo,
	 permiso_idpermiso, rol_idrol)
	SELECT '2025-01-15 10:42:00','2025-01-15 10:42:00',NULL,NULL,NULL,NULL,NULL, p.idpermiso, r.idrol
	FROM Aerolinea.permiso p
	JOIN Aerolinea.rol r ON r.nombre='tecnico_mantenimiento'
	WHERE p.codigo IN ('VUE_BUSCAR','REP_VER')
	AND NOT EXISTS (SELECT 1 FROM Aerolinea.rol_permiso rp WHERE rp.permiso_idpermiso=p.idpermiso AND rp.rol_idrol=r.idrol);

	/* ===========================
	   14) auditor_seguridad
	   =========================== */
	INSERT INTO Aerolinea.rol_permiso
	(creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo,
	 permiso_idpermiso, rol_idrol)
	SELECT '2025-01-15 10:42:10','2025-01-15 10:42:10',NULL,NULL,NULL,NULL,NULL, p.idpermiso, r.idrol
	FROM Aerolinea.permiso p
	JOIN Aerolinea.rol r ON r.nombre='auditor_seguridad'
	WHERE p.codigo IN ('AUDITAR','REP_VER','DOC_VER')
	AND NOT EXISTS (SELECT 1 FROM Aerolinea.rol_permiso rp WHERE rp.permiso_idpermiso=p.idpermiso AND rp.rol_idrol=r.idrol);

	/* ===========================
	   15) operador_puerta
	   =========================== */
	INSERT INTO Aerolinea.rol_permiso
	(creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo,
	 permiso_idpermiso, rol_idrol)
	SELECT '2025-01-15 10:42:20','2025-01-15 10:42:20',NULL,NULL,NULL,NULL,NULL, p.idpermiso, r.idrol
	FROM Aerolinea.permiso p
	JOIN Aerolinea.rol r ON r.nombre='operador_puerta'
	WHERE p.codigo IN ('VUE_BUSCAR','ASIENTO_VER','BOLETO_VER','BOLETO_DESCARGAR','CHECKIN_CONFIRMAR')
	AND NOT EXISTS (SELECT 1 FROM Aerolinea.rol_permiso rp WHERE rp.permiso_idpermiso=p.idpermiso AND rp.rol_idrol=r.idrol);

	/* ===========================
	   16) gestor_documentacion
	   =========================== */
	INSERT INTO Aerolinea.rol_permiso
	(creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo,
	 permiso_idpermiso, rol_idrol)
	SELECT '2025-01-15 10:42:30','2025-01-15 10:42:30',NULL,NULL,NULL,NULL,NULL, p.idpermiso, r.idrol
	FROM Aerolinea.permiso p
	JOIN Aerolinea.rol r ON r.nombre='gestor_documentacion'
	WHERE p.codigo IN ('DOC_VER','DOC_SUBIR','RES_VER')
	AND NOT EXISTS (SELECT 1 FROM Aerolinea.rol_permiso rp WHERE rp.permiso_idpermiso=p.idpermiso AND rp.rol_idrol=r.idrol);

	/* ===========================
	   17) analista_capacidad
	   =========================== */
	INSERT INTO Aerolinea.rol_permiso
	(creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo,
	 permiso_idpermiso, rol_idrol)
	SELECT '2025-01-15 10:42:40','2025-01-15 10:42:40',NULL,NULL,NULL,NULL,NULL, p.idpermiso, r.idrol
	FROM Aerolinea.permiso p
	JOIN Aerolinea.rol r ON r.nombre='analista_capacidad'
	WHERE p.codigo IN ('ASIENTO_VER','RES_VER','REP_VER')
	AND NOT EXISTS (SELECT 1 FROM Aerolinea.rol_permiso rp WHERE rp.permiso_idpermiso=p.idpermiso AND rp.rol_idrol=r.idrol);

	/* ===========================
	   18) coordinador_aeropuerto
	   =========================== */
	INSERT INTO Aerolinea.rol_permiso
	(creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo,
	 permiso_idpermiso, rol_idrol)
	SELECT '2025-01-15 10:42:50','2025-01-15 10:42:50',NULL,NULL,NULL,NULL,NULL, p.idpermiso, r.idrol
	FROM Aerolinea.permiso p
	JOIN Aerolinea.rol r ON r.nombre='coordinador_aeropuerto'
	WHERE p.codigo IN ('VUE_BUSCAR','VUE_EDITAR','ASIENTO_VER','REP_VER')
	AND NOT EXISTS (SELECT 1 FROM Aerolinea.rol_permiso rp WHERE rp.permiso_idpermiso=p.idpermiso AND rp.rol_idrol=r.idrol);

	/* ===========================
	   19) control_ingresos
	   =========================== */
	INSERT INTO Aerolinea.rol_permiso
	(creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo,
	 permiso_idpermiso, rol_idrol)
	SELECT '2025-01-15 10:43:00','2025-01-15 10:43:00',NULL,NULL,NULL,NULL,NULL, p.idpermiso, r.idrol
	FROM Aerolinea.permiso p
	JOIN Aerolinea.rol r ON r.nombre='control_ingresos'
	WHERE p.codigo IN ('REP_VER','PAGO_CONFIRMAR')
	AND NOT EXISTS (SELECT 1 FROM Aerolinea.rol_permiso rp WHERE rp.permiso_idpermiso=p.idpermiso AND rp.rol_idrol=r.idrol);

	/* ===========================
	   20) reportes_gerenciales 
	   =========================== */
	INSERT INTO Aerolinea.rol_permiso
	(creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo,
	 permiso_idpermiso, rol_idrol)
	SELECT '2025-01-15 10:43:10','2025-01-15 10:43:10',NULL,NULL,NULL,NULL,NULL, p.idpermiso, r.idrol
	FROM Aerolinea.permiso p
	JOIN Aerolinea.rol r ON r.nombre='reportes_gerenciales'
	WHERE p.codigo IN ('REP_VER')
	AND NOT EXISTS (SELECT 1 FROM Aerolinea.rol_permiso rp WHERE rp.permiso_idpermiso=p.idpermiso AND rp.rol_idrol=r.idrol);

	/* ===========================
	   21) pasajero
	   =========================== */
	INSERT INTO Aerolinea.rol_permiso
	(creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo,
	 permiso_idpermiso, rol_idrol)
	SELECT '2025-01-15 10:43:20','2025-01-15 10:43:20',NULL,NULL,NULL,NULL,NULL, p.idpermiso, r.idrol
	FROM Aerolinea.permiso p
	JOIN Aerolinea.rol r ON r.nombre='pasajero'
	WHERE p.codigo IN ('VUE_BUSCAR','TAR_VER','PRO_VER',
					   'RES_CREAR','RES_VER','RES_EDITAR','RES_CANCELAR',
					   'DOC_VER','DOC_SUBIR',
					   'ASIENTO_VER','ASIENTO_ELEGIR',
					   'PAGO_INICIAR','PAGO_CONFIRMAR',
					   'CHECKIN_INICIAR','CHECKIN_CONFIRMAR',
					   'BOLETO_VER','BOLETO_DESCARGAR')
	AND NOT EXISTS (SELECT 1 FROM Aerolinea.rol_permiso rp WHERE rp.permiso_idpermiso=p.idpermiso AND rp.rol_idrol=r.idrol);

-- ======================================================================
-- INSERTS: Aerolinea.persona  
-- ======================================================================
INSERT INTO Aerolinea.persona
  (nombre, apellido, fecha_de_nacimiento, creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por)
VALUES
  ('Agustin','Tejero','1992-05-14','2025-01-15 11:00:00','2025-01-15 11:00:00',NULL,NULL,NULL,NULL),
  ('Camila','Fernandez','1995-10-02','2025-01-15 11:00:10','2025-01-15 11:00:10',NULL,NULL,NULL,NULL),
  ('Martin','Gomez','1988-03-22','2025-01-15 11:00:20','2025-01-15 11:00:20',NULL,NULL,NULL,NULL),
  ('Lucia','Rodriguez','1999-11-30','2025-01-15 11:00:30','2025-01-15 11:00:30',NULL,NULL,NULL,NULL),
  ('Santiago','Perez','1990-08-11','2025-01-15 11:00:40','2025-01-15 11:00:40',NULL,NULL,NULL,NULL),
  ('Valentina','Sosa','1996-07-19','2025-01-15 11:00:50','2025-01-15 11:00:50',NULL,NULL,NULL,NULL),
  ('Julian','Diaz','1987-01-08','2025-01-15 11:01:00','2025-01-15 11:01:00',NULL,NULL,NULL,NULL),
  ('Sofia','Romero','1993-04-25','2025-01-15 11:01:10','2025-01-15 11:01:10',NULL,NULL,NULL,NULL),
  ('Benjamin','Ruiz','1991-12-12','2025-01-15 11:01:20','2025-01-15 11:01:20',NULL,NULL,NULL,NULL),
  ('Mia','Herrera','2000-09-05','2025-01-15 11:01:30','2025-01-15 11:01:30',NULL,NULL,NULL,NULL),
  ('Tomas','Silva','1994-06-18','2025-01-15 11:01:40','2025-01-15 11:01:40',NULL,NULL,NULL,NULL),
  ('Catalina','Molina','1997-02-14','2025-01-15 11:01:50','2025-01-15 11:01:50',NULL,NULL,NULL,NULL),
  ('Facundo','Arias','1986-07-01','2025-01-15 11:02:00','2025-01-15 11:02:00',NULL,NULL,NULL,NULL),
  ('Emilia','Luna','1998-03-09','2025-01-15 11:02:10','2025-01-15 11:02:10',NULL,NULL,NULL,NULL),
  ('Franco','Ramos','1993-10-28','2025-01-15 11:02:20','2025-01-15 11:02:20',NULL,NULL,NULL,NULL),
  ('Renata','Medina','1999-01-27','2025-01-15 11:02:30','2025-01-15 11:02:30',NULL,NULL,NULL,NULL),
  ('Mateo','Ibanez','1992-02-02','2025-01-15 11:02:40','2025-01-15 11:02:40',NULL,NULL,NULL,NULL),
  ('Bianca','Acosta','1996-12-01','2025-01-15 11:02:50','2025-01-15 11:02:50',NULL,NULL,NULL,NULL),
  ('Thiago','Navarro','1995-05-05','2025-01-15 11:03:00','2025-01-15 11:03:00',NULL,NULL,NULL,NULL),
  ('Juana','Vega','1997-11-17','2025-01-15 11:03:10','2025-01-15 11:03:10',NULL,NULL,NULL,NULL),
  ('Ramiro','Rossi','1989-09-09','2025-01-15 11:03:20','2025-01-15 11:03:20',NULL,NULL,NULL,NULL),
  ('Lara','Munoz','1998-08-08','2025-01-15 11:03:30','2025-01-15 11:03:30',NULL,NULL,NULL,NULL),
  ('Diego','Peralta','1991-01-21','2025-01-15 11:03:40','2025-01-15 11:03:40',NULL,NULL,NULL,NULL),
  ('Florencia','Cruz','1993-03-03','2025-01-15 11:03:50','2025-01-15 11:03:50',NULL,NULL,NULL,NULL),
  ('Nicolas','Benitez','1985-04-04','2025-01-15 11:04:00','2025-01-15 11:04:00',NULL,NULL,NULL,NULL),
  ('Jazmin','Cabrera','1997-06-06','2025-01-15 11:04:10','2025-01-15 11:04:10',NULL,NULL,NULL,NULL),
  ('Gonzalo','Dominguez','1990-07-07','2025-01-15 11:04:20','2025-01-15 11:04:20',NULL,NULL,NULL,NULL),
  ('Paula','Escobar','1996-08-08','2025-01-15 11:04:30','2025-01-15 11:04:30',NULL,NULL,NULL,NULL),
  ('Lucas','Figueroa','1999-09-09','2025-01-15 11:04:40','2025-01-15 11:04:40',NULL,NULL,NULL,NULL),
  ('Abril','Gimenez','2001-10-10','2025-01-15 11:04:50','2025-01-15 11:04:50',NULL,NULL,NULL,NULL),
  ('Bruno','Herrero','1992-11-11','2025-01-15 11:05:00','2025-01-15 11:05:00',NULL,NULL,NULL,NULL),
  ('Aitana','Juarez','1994-12-12','2025-01-15 11:05:10','2025-01-15 11:05:10',NULL,NULL,NULL,NULL),
  ('Dante','Lopez','1995-02-15','2025-01-15 11:05:20','2025-01-15 11:05:20',NULL,NULL,NULL,NULL),
  ('Mora','Martinez','1998-05-23','2025-01-15 11:05:30','2025-01-15 11:05:30',NULL,NULL,NULL,NULL),
  ('Pedro','Nunez','1987-07-29','2025-01-15 11:05:40','2025-01-15 11:05:40',NULL,NULL,NULL,NULL),
  ('Rocio','Ortiz','1993-09-02','2025-01-15 11:05:50','2025-01-15 11:05:50',NULL,NULL,NULL,NULL),
  ('Ivan','Paez','1991-11-06','2025-01-15 11:06:00','2025-01-15 11:06:00',NULL,NULL,NULL,NULL),
  ('Elena','Quiroga','1996-01-19','2025-01-15 11:06:10','2025-01-15 11:06:10',NULL,NULL,NULL,NULL),
  ('Sergio','Roldan','1989-03-27','2025-01-15 11:06:20','2025-01-15 11:06:20',NULL,NULL,NULL,NULL),
  ('Noelia','Suarez','1997-12-31','2025-01-15 11:06:30','2025-01-15 11:06:30',NULL,NULL,NULL,NULL);

-- ======================================================================
-- INSERTS: Aerolinea.usuario  (30 registros)
-- ======================================================================
INSERT INTO Aerolinea.usuario
  (email, email_norm, password_hash, password_algoritmo, password_actualizado_en,
   verificacion_email, verificacion_token_hash, verificacion_expira,
   reset_token_hash, reset_expira, intentos_fallidos, bloqueado_hasta,
   ultimo_acceso_en, creado_en, actualizado_en, eliminado_en,
   creado_por, actualizado_por, eliminado_por, eliminado_motivo,
   usuariocol, rol_idrol, persona_idpersona)
VALUES
	  -- 1
	  ('agustin.tejero@gmail.com','agustin.tejero@gmail.com',x'245276B9643A9C11', 'bcrypt','2025-01-15 11:10:00',
	   1,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:10:00','2025-01-15 11:10:00',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='pasajero'), 1),

	  -- 2
	  ('camila.fernandez@outlook.com','camila.fernandez@outlook.com',x'245276B9643A9C12','bcrypt','2025-01-15 11:10:05',
	   1,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:10:05','2025-01-15 11:10:05',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='pasajero'), 2),

	  -- 3
	  ('martin.gomez@yahoo.com','martin.gomez@yahoo.com',x'245276B9643A9C13','bcrypt','2025-01-15 11:10:10',
	   0,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:10:10','2025-01-15 11:10:10',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='pasajero'), 3),

	  -- 4
	  ('lucia.rodriguez@gmail.com','lucia.rodriguez@gmail.com',x'245276B9643A9C14','argon2id','2025-01-15 11:10:15',
	   1,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:10:15','2025-01-15 11:10:15',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='pasajero'), 4),

	  -- 5
	  ('santiago.perez@hotmail.com','santiago.perez@hotmail.com',x'245276B9643A9C15','bcrypt','2025-01-15 11:10:20',
	   1,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:10:20','2025-01-15 11:10:20',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='pasajero'), 5),

	  -- 6
	  ('valentina.sosa@gmail.com','valentina.sosa@gmail.com',x'245276B9643A9C16','bcrypt','2025-01-15 11:10:25',
	   0,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:10:25','2025-01-15 11:10:25',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='pasajero'), 6),

	  -- 7
	  ('julian.diaz@outlook.com','julian.diaz@outlook.com',x'245276B9643A9C17','argon2id','2025-01-15 11:10:30',
	   1,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:10:30','2025-01-15 11:10:30',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='pasajero'), 7),

	  -- 8
	  ('sofia.romero@gmail.com','sofia.romero@gmail.com',x'245276B9643A9C18','bcrypt','2025-01-15 11:10:35',
	   1,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:10:35','2025-01-15 11:10:35',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='pasajero'), 8),

	  -- 9
	  ('benjamin.ruiz@yahoo.com','benjamin.ruiz@yahoo.com',x'245276B9643A9C19','bcrypt','2025-01-15 11:10:40',
	   0,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:10:40','2025-01-15 11:10:40',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='pasajero'), 9),

	  -- 10
	  ('mia.herrera@gmail.com','mia.herrera@gmail.com',x'245276B9643A9C1A','bcrypt','2025-01-15 11:10:45',
	   1,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:10:45','2025-01-15 11:10:45',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='pasajero'), 10),

	  -- 11
	  ('tomas.silva@outlook.com','tomas.silva@outlook.com',x'245276B9643A9C1B','argon2id','2025-01-15 11:10:50',
	   1,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:10:50','2025-01-15 11:10:50',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='pasajero'), 11),

	  -- 12
	  ('catalina.molina@gmail.com','catalina.molina@gmail.com',x'245276B9643A9C1C','bcrypt','2025-01-15 11:10:55',
	   0,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:10:55','2025-01-15 11:10:55',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='pasajero'), 12),

	  -- 13
	  ('facundo.arias@gmail.com','facundo.arias@gmail.com',x'245276B9643A9C1D','bcrypt','2025-01-15 11:11:00',
	   1,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:11:00','2025-01-15 11:11:00',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='agente_reservas'), 13),

	  -- 14
	  ('emilia.luna@gmail.com','emilia.luna@gmail.com',x'245276B9643A9C1E','argon2id','2025-01-15 11:11:05',
	   1,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:11:05','2025-01-15 11:11:05',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='soporte_cliente'), 14),

	  -- 15
	  ('franco.ramos@empresa.com','franco.ramos@empresa.com',x'245276B9643A9C1F','bcrypt','2025-01-15 11:11:10',
	   1,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:11:10','2025-01-15 11:11:10',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='planificador_rutas'), 15),

	  -- 16
	  ('renata.medina@gmail.com','renata.medina@gmail.com',x'245276B9643A9C20','bcrypt','2025-01-15 11:11:15',
	   0,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:11:15','2025-01-15 11:11:15',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='pasajero'), 16),

	  -- 17
	  ('mateo.ibanez@hotmail.com','mateo.ibanez@hotmail.com',x'245276B9643A9C21','argon2id','2025-01-15 11:11:20',
	   1,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:11:20','2025-01-15 11:11:20',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='pasajero'), 17),

	  -- 18
	  ('bianca.acosta@gmail.com','bianca.acosta@gmail.com',x'245276B9643A9C22','bcrypt','2025-01-15 11:11:25',
	   1,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:11:25','2025-01-15 11:11:25',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='pasajero'), 18),

	  -- 19
	  ('thiago.navarro@gmail.com','thiago.navarro@gmail.com',x'245276B9643A9C23','bcrypt','2025-01-15 11:11:30',
	   0,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:11:30','2025-01-15 11:11:30',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='pasajero'), 19),

	  -- 20
	  ('juana.vega@gmail.com','juana.vega@gmail.com',x'245276B9643A9C24','argon2id','2025-01-15 11:11:35',
	   1,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:11:35','2025-01-15 11:11:35',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='pasajero'), 20),

	  -- 21
	  ('ramiro.rossi@gmail.com','ramiro.rossi@gmail.com',x'245276B9643A9C25','bcrypt','2025-01-15 11:11:40',
	   1,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:11:40','2025-01-15 11:11:40',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='supervisor_operaciones'), 21),

	  -- 22
	  ('lara.munoz@gmail.com','lara.munoz@gmail.com',x'245276B9643A9C26','bcrypt','2025-01-15 11:11:45',
	   1,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:11:45','2025-01-15 11:11:45',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='analista_tarifas'), 22),

	  -- 23
	  ('diego.peralta@gmail.com','diego.peralta@gmail.com',x'245276B9643A9C27','argon2id','2025-01-15 11:11:50',
	   0,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:11:50','2025-01-15 11:11:50',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='agente_checkin'), 23),

	  -- 24
	  ('florencia.cruz@gmail.com','florencia.cruz@gmail.com',x'245276B9643A9C28','bcrypt','2025-01-15 11:11:55',
	   1,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:11:55','2025-01-15 11:11:55',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='agente_embarque'), 24),

	  -- 25
	  ('nicolas.benitez@gmail.com','nicolas.benitez@gmail.com',x'245276B9643A9C29','bcrypt','2025-01-15 11:12:00',
	   1,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:12:00','2025-01-15 11:12:00',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='coordinador_rampa'), 25),

	  -- 26
	  ('jazmin.cabrera@gmail.com','jazmin.cabrera@gmail.com',x'245276B9643A9C2A','argon2id','2025-01-15 11:12:05',
	   1,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:12:05','2025-01-15 11:12:05',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='gestor_documentacion'), 26),

	  -- 27
	  ('gonzalo.dominguez@gmail.com','gonzalo.dominguez@gmail.com',x'245276B9643A9C2B','bcrypt','2025-01-15 11:12:10',
	   0,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:12:10','2025-01-15 11:12:10',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='analista_capacidad'), 27),

	  -- 28
	  ('paula.escobar@gmail.com','paula.escobar@gmail.com',x'245276B9643A9C2C','bcrypt','2025-01-15 11:12:15',
	   1,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:12:15','2025-01-15 11:12:15',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='reportes_gerenciales'), 28),

	  -- 29
	  ('lucas.figueroa@gmail.com','lucas.figueroa@gmail.com',x'245276B9643A9C2D','argon2id','2025-01-15 11:12:20',
	   1,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:12:20','2025-01-15 11:12:20',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='control_ingresos'), 29),

	  -- 30
	  ('abril.gimenez@gmail.com','abril.gimenez@gmail.com',x'245276B9643A9C2E','bcrypt','2025-01-15 11:12:25',
	   1,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-01-15 11:12:25','2025-01-15 11:12:25',NULL,
	   NULL,NULL,NULL,NULL,
	   NULL,(SELECT idrol FROM Aerolinea.rol WHERE nombre='pasajero'), 30);

-- ======================================================================
-- INSERTS: Aerolinea.documentacion  (30 registros diversos)
-- ======================================================================
INSERT INTO Aerolinea.documentacion
(tipo, numero, pais_emisor, estado, autoridad, fecha_emision, fecha_vencimiento, observacion,
 creado_en, actualizado_en, creado_por, actualizado_por, eliminado_en, eliminado_por, eliminado_motivo, persona_idpersona)
VALUES
	-- 1) DNI válido
	('DNI','40123456','AR','VALIDO','RENAPER','2016-05-10 00:00:00','2036-05-10 00:00:00','-', '2025-01-15 11:20:00','2025-01-15 11:20:00',NULL,NULL,NULL,NULL,NULL,1),

	-- 2) DNI válido
	('DNI','39234567','AR','VALIDO','RENAPER','2015-09-01 00:00:00','2035-09-01 00:00:00','-', '2025-01-15 11:20:10','2025-01-15 11:20:10',NULL,NULL,NULL,NULL,NULL,2),

	-- 3) DNI observado: denuncia de extravío
	('OTRO','DEN-2024-000872','AR','OBSERVADO','Policía Federal Argentina','2024-12-20 00:00:00','2025-06-20 00:00:00',
	 'Denuncia de extravío de DNI presentada y firmada por PFA. Se permite viajar con documentación alternativa sujeta a compañía.',
	 '2025-01-15 11:20:20','2025-01-15 11:20:20',NULL,NULL,NULL,NULL,NULL,3),

	-- 4) DNI en trámite (certificado RENAPER) - observado
	('OTRO','RENAPER-TRAM-43122','AR','OBSERVADO','RENAPER','2024-11-15 00:00:00','2025-05-15 00:00:00',
	 'Certificado de DNI en trámite emitido por RENAPER. Requiere verificación secundaria.',
	 '2025-01-15 11:20:30','2025-01-15 11:20:30',NULL,NULL,NULL,NULL,NULL,4),

	-- 5) Pasaporte válido (AR)
	('PASAPORTE','AA123456','AR','VALIDO','Dirección Nacional de Migraciones','2022-02-01 00:00:00','2032-02-01 00:00:00','-', 
	 '2025-01-15 11:20:40','2025-01-15 11:20:40',NULL,NULL,NULL,NULL,NULL,5),

	-- 6) DNI válido
	('DNI','42345678','AR','VALIDO','RENAPER','2018-07-12 00:00:00','2038-07:12 00:00:00','-', 
	 '2025-01-15 11:20:50','2025-01-15 11:20:50',NULL,NULL,NULL,NULL,NULL,6),

	-- 7) Libreta de Enrolamiento (histórica) vencida
	('OTRO','LE-1532245','AR','VENCIDO','Ministerio del Interior','1984-03-10 00:00:00','1994-03-10 00:00:00',
	 'Documento histórico: Libreta de Enrolamiento. No válido para viajar.',
	 '2025-01-15 11:21:00','2025-01-15 11:21:00',NULL,NULL,NULL,NULL,NULL,7),

	-- 8) Libreta Cívica (histórica) vencida
	('OTRO','LC-882134','AR','VENCIDO','Ministerio del Interior','1978-06-15 00:00:00','1988-06-15 00:00:00',
	 'Documento histórico: Libreta Cívica. No válido para viajar.',
	 '2025-01-15 11:21:10','2025-01-15 11:21:10',NULL,NULL,NULL,NULL,NULL,8),

	-- 9) Pasaporte vencido
	('PASAPORTE','AB987654','AR','VENCIDO','Dirección Nacional de Migraciones','2012-09-01 00:00:00','2022-09-01 00:00:00',
	 'Debe renovarse antes de viajar al exterior.',
	 '2025-01-15 11:21:20','2025-01-15 11:21:20',NULL,NULL,NULL,NULL,NULL,9),

	-- 10) DNI válido
	('DNI','45123456','AR','VALIDO','RENAPER','2020-09-20 00:00:00','2040-09-20 00:00:00','-', 
	 '2025-01-15 11:21:30','2025-01-15 11:21:30',NULL,NULL,NULL,NULL,NULL,10),

	-- 11) Pasaporte válido (CL)
	('PASAPORTE','CL-P1237789','CL','VALIDO','Servicio de Registro Civil e Identificación (CL)','2021-04-02 00:00:00','2031-04-02 00:00:00','-',
	 '2025-01-15 11:21:40','2025-01-15 11:21:40',NULL,NULL,NULL,NULL,NULL,11),

	-- 12) DNI válido
	('DNI','40445566','AR','VALIDO','RENAPER','2016-02-10 00:00:00','2036-02-10 00:00:00','-', 
	 '2025-01-15 11:21:50','2025-01-15 11:21:50',NULL,NULL,NULL,NULL,NULL,12),

	-- 13) DNI válido
	('DNI','37991234','AR','VALIDO','RENAPER','2014-11-05 00:00:00','2034-11-05 00:00:00','-', 
	 '2025-01-15 11:22:00','2025-01-15 11:22:00',NULL,NULL,NULL,NULL,NULL,13),

	-- 14) DNI válido + observación de aclaración de datos
	('DNI','40887766','AR','VALIDO','RENAPER','2016-08-22 00:00:00','2036-08-22 00:00:00',
	 'Aclaración de domicilio pendiente de actualizar en padrón.',
	 '2025-01-15 11:22:10','2025-01-15 11:22:10',NULL,NULL,NULL,NULL,NULL,14),

	-- 15) Pasaporte válido (AR)
	('PASAPORTE','AR-P554433','AR','VALIDO','Dirección Nacional de Migraciones','2023-01-01 00:00:00','2033-01-01 00:00:00','-',
	 '2025-01-15 11:22:20','2025-01-15 11:22:20',NULL,NULL,NULL,NULL,NULL,15),

	-- 16) DNI observado (foto ilegible)
	('DNI','43110022','AR','OBSERVADO','RENAPER','2019-03-14 00:00:00','2039-03-14 00:00:00',
	 'Foto poco legible. Se recomienda renovación anticipada.',
	 '2025-01-15 11:22:30','2025-01-15 11:22:30',NULL,NULL,NULL,NULL,NULL,16),

	-- 17) Pasaporte válido (BR)
	('PASAPORTE','BR-FN772201','BR','VALIDO','Polícia Federal (BR)','2020-05-30 00:00:00','2030-05-30 00:00:00','-',
	 '2025-01-15 11:22:40','2025-01-15 11:22:40',NULL,NULL,NULL,NULL,NULL,17),

	-- 18) DNI válido
	('DNI','42003344','AR','VALIDO','RENAPER','2018-10-05 00:00:00','2038-10-05 00:00:00','-', 
	 '2025-01-15 11:22:50','2025-01-15 11:22:50',NULL,NULL,NULL,NULL,NULL,18),

	-- 19) DNI válido
	('DNI','40112233','AR','VALIDO','RENAPER','2016-01-18 00:00:00','2036-01-18 00:00:00','-',
	 '2025-01-15 11:23:00','2025-01-15 11:23:00',NULL,NULL,NULL,NULL,NULL,19),

	-- 20) Pasaporte vencido (UY)
	('PASAPORTE','UY-AX331190','UY','VENCIDO','Dirección Nacional de Identificación Civil (UY)','2011-02-10 00:00:00','2021-02-10 00:00:00',
	 'Vencido. Requiere renovación.',
	 '2025-01-15 11:23:10','2025-01-15 11:23:10',NULL,NULL,NULL,NULL,NULL,20),

	-- 21) DNI válido
	('DNI','38994455','AR','VALIDO','RENAPER','2014-09-12 00:00:00','2034-09-12 00:00:00','-',
	 '2025-01-15 11:23:20','2025-01-15 11:23:20',NULL,NULL,NULL,NULL,NULL,21),

	-- 22) DNI válido
	('DNI','42123455','AR','VALIDO','RENAPER','2019-04-04 00:00:00','2039-04-04 00:00:00','-',
	 '2025-01-15 11:23:30','2025-01-15 11:23:30',NULL,NULL,NULL,NULL,NULL,22),

	-- 23) DNI observado (deteriorado)
	('DNI','40556677','AR','OBSERVADO','RENAPER','2016-06-20 00:00:00','2036-06-20 00:00:00',
	 'Plástico deteriorado y microimpresiones dañadas.',
	 '2025-01-15 11:23:40','2025-01-15 11:23:40',NULL,NULL,NULL,NULL,NULL,23),

	-- 24) Pasaporte válido (AR)
	('PASAPORTE','AR-P662210','AR','VALIDO','Dirección Nacional de Migraciones','2022-10-01 00:00:00','2032-10-01 00:00:00','-',
	 '2025-01-15 11:23:50','2025-01-15 11:23:50',NULL,NULL,NULL,NULL,NULL,24),

	-- 25) DNI válido
	('DNI','37770011','AR','VALIDO','RENAPER','2013-03-03 00:00:00','2033-03-03 00:00:00','-',
	 '2025-01-15 11:24:00','2025-01-15 11:24:00',NULL,NULL,NULL,NULL,NULL,25),

	-- 26) Libreta de Enrolamiento (histórica) vencida
	('OTRO','LE-901122','AR','VENCIDO','Ministerio del Interior','1979-02-20 00:00:00','1989-02-20 00:00:00',
	 'LE archivada. No válida como documento vigente.',
	 '2025-01-15 11:24:10','2025-01-15 11:24:10',NULL,NULL,NULL,NULL,NULL,26),

	-- 27) DNI válido
	('DNI','39900122','AR','VALIDO','RENAPER','2015-12-01 00:00:00','2035-12-01 00:00:00','-',
	 '2025-01-15 11:24:20','2025-01-15 11:24:20',NULL,NULL,NULL,NULL,NULL,27),

	-- 28) Pasaporte válido (AR)
	('PASAPORTE','AR-P441199','AR','VALIDO','Dirección Nacional de Migraciones','2021-07-15 00:00:00','2031-07-15 00:00:00','-',
	 '2025-01-15 11:24:30','2025-01-15 11:24:30',NULL,NULL,NULL,NULL,NULL,28),

	-- 29) DNI válido
	('DNI','37119900','AR','VALIDO','RENAPER','2012-01-25 00:00:00','2032-01-25 00:00:00','-',
	 '2025-01-15 11:24:40','2025-01-15 11:24:40',NULL,NULL,NULL,NULL,NULL,29),

	-- 30) DNI observado (datos no coinciden con pasaje)
	('DNI','41002233','AR','OBSERVADO','RENAPER','2017-02-11 00:00:00','2037-02-11 00:00:00',
	 'Apellido no coincide con la reserva. Requiere subsanación previa al embarque.',
	 '2025-01-15 11:24:50','2025-01-15 11:24:50',NULL,NULL,NULL,NULL,NULL,30);

-- ======================================================================
-- INSERTS: Aerolinea.pais  
-- ======================================================================
INSERT INTO Aerolinea.pais
  (tag, nombre, creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo, activo)
VALUES
  ('AR','Argentina','2025-01-15 11:30:00','2025-01-15 11:30:00',NULL,NULL,NULL,NULL,NULL,1),
  ('BR','Brasil','2025-01-15 11:30:05','2025-01-15 11:30:05',NULL,NULL,NULL,NULL,NULL,1),
  ('CL','Chile','2025-01-15 11:30:10','2025-01-15 11:30:10',NULL,NULL,NULL,NULL,NULL,1),
  ('UY','Uruguay','2025-01-15 11:30:15','2025-01-15 11:30:15',NULL,NULL,NULL,NULL,NULL,1),
  ('PY','Paraguay','2025-01-15 11:30:20','2025-01-15 11:30:20',NULL,NULL,NULL,NULL,NULL,1),
  ('BO','Bolivia','2025-01-15 11:30:25','2025-01-15 11:30:25',NULL,NULL,NULL,NULL,NULL,1),
  ('PE','Perú','2025-01-15 11:30:30','2025-01-15 11:30:30',NULL,NULL,NULL,NULL,NULL,1),
  ('CO','Colombia','2025-01-15 11:30:35','2025-01-15 11:30:35',NULL,NULL,NULL,NULL,NULL,1),
  ('VE','Venezuela','2025-01-15 11:30:40','2025-01-15 11:30:40',NULL,NULL,NULL,NULL,NULL,1),
  ('EC','Ecuador','2025-01-15 11:30:45','2025-01-15 11:30:45',NULL,NULL,NULL,NULL,NULL,1),
  ('MX','México','2025-01-15 11:30:50','2025-01-15 11:30:50',NULL,NULL,NULL,NULL,NULL,1),
  ('US','Estados Unidos','2025-01-15 11:30:55','2025-01-15 11:30:55',NULL,NULL,NULL,NULL,NULL,1),
  ('CA','Canadá','2025-01-15 11:31:00','2025-01-15 11:31:00',NULL,NULL,NULL,NULL,NULL,1),
  ('ES','España','2025-01-15 11:31:05','2025-01-15 11:31:05',NULL,NULL,NULL,NULL,NULL,1),
  ('FR','Francia','2025-01-15 11:31:10','2025-01-15 11:31:10',NULL,NULL,NULL,NULL,NULL,1),
  ('IT','Italia','2025-01-15 11:31:15','2025-01-15 11:31:15',NULL,NULL,NULL,NULL,NULL,1),
  ('DE','Alemania','2025-01-15 11:31:20','2025-01-15 11:31:20',NULL,NULL,NULL,NULL,NULL,1),
  ('GB','Reino Unido','2025-01-15 11:31:25','2025-01-15 11:31:25',NULL,NULL,NULL,NULL,NULL,1),
  ('PT','Portugal','2025-01-15 11:31:30','2025-01-15 11:31:30',NULL,NULL,NULL,NULL,NULL,1),
  ('CH','Suiza','2025-01-15 11:31:35','2025-01-15 11:31:35',NULL,NULL,NULL,NULL,NULL,1),
  ('PR','Puerto Rico','2025-01-15 11:31:40','2025-01-15 11:31:40',NULL,NULL,NULL,NULL,NULL,1),
  ('DO','República Dominicana','2025-01-15 11:31:45','2025-01-15 11:31:45',NULL,NULL,NULL,NULL,NULL,1),
  ('CU','Cuba','2025-01-15 11:31:50','2025-01-15 11:31:50',NULL,NULL,NULL,NULL,NULL,1),
  ('PA','Panamá','2025-01-15 11:31:55','2025-01-15 11:31:55',NULL,NULL,NULL,NULL,NULL,1);

-- ======================================================================
-- INSERTS: Aerolinea.telefono  
-- ======================================================================
INSERT INTO Aerolinea.telefono
(tipo, numero, es_whatssap, extension, es_principal,
 creado_en, actualizado_en, eliminado_en,
 creado_por, actualizado_por, eliminado_por, eliminado_motivo, persona_idpersona)
VALUES
	-- Móviles principales 
	('movil',  '+54 9 11 3216-1001', 1, NULL, 1, '2025-01-15 11:40:00','2025-01-15 11:40:00',NULL, NULL,NULL,NULL,NULL, 1),
	('movil',  '+54 9 11 3216-1002', 1, NULL, 1, '2025-01-15 11:40:05','2025-01-15 11:40:05',NULL, NULL,NULL,NULL,NULL, 2),
	('movil',  '+54 9 11 3216-1003', 1, NULL, 1, '2025-01-15 11:40:10','2025-01-15 11:40:10',NULL, NULL,NULL,NULL,NULL, 3),
	('movil',  '+54 9 11 3216-1004', 1, NULL, 1, '2025-01-15 11:40:15','2025-01-15 11:40:15',NULL, NULL,NULL,NULL,NULL, 4),
	('movil',  '+54 9 11 3216-1005', 1, NULL, 1, '2025-01-15 11:40:20','2025-01-15 11:40:20',NULL, NULL,NULL,NULL,NULL, 5),
	('movil',  '+54 9 11 3216-1006', 1, NULL, 1, '2025-01-15 11:40:25','2025-01-15 11:40:25',NULL, NULL,NULL,NULL,NULL, 6),
	('movil',  '+54 9 11 3216-1007', 1, NULL, 1, '2025-01-15 11:40:30','2025-01-15 11:40:30',NULL, NULL,NULL,NULL,NULL, 7),
	('movil',  '+54 9 11 3216-1008', 1, NULL, 1, '2025-01-15 11:40:35','2025-01-15 11:40:35',NULL, NULL,NULL,NULL,NULL, 8),
	('movil',  '+54 9 11 3216-1009', 1, NULL, 1, '2025-01-15 11:40:40','2025-01-15 11:40:40',NULL, NULL,NULL,NULL,NULL, 9),
	('movil',  '+54 9 11 3216-1010', 1, NULL, 1, '2025-01-15 11:40:45','2025-01-15 11:40:45',NULL, NULL,NULL,NULL,NULL,10),
	('movil',  '+54 9 11 3216-1011', 1, NULL, 1, '2025-01-15 11:40:50','2025-01-15 11:40:50',NULL, NULL,NULL,NULL,NULL,11),
	('movil',  '+54 9 11 3216-1012', 1, NULL, 1, '2025-01-15 11:40:55','2025-01-15 11:40:55',NULL, NULL,NULL,NULL,NULL,12),
	('movil',  '+54 9 11 3216-1013', 1, NULL, 1, '2025-01-15 11:41:00','2025-01-15 11:41:00',NULL, NULL,NULL,NULL,NULL,13),
	('movil',  '+54 9 11 3216-1014', 1, NULL, 1, '2025-01-15 11:41:05','2025-01-15 11:41:05',NULL, NULL,NULL,NULL,NULL,14),
	('movil',  '+54 9 11 3216-1015', 1, NULL, 1, '2025-01-15 11:41:10','2025-01-15 11:41:10',NULL, NULL,NULL,NULL,NULL,15),
	('movil',  '+54 9 11 3216-1016', 1, NULL, 1, '2025-01-15 11:41:15','2025-01-15 11:41:15',NULL, NULL,NULL,NULL,NULL,16),
	('movil',  '+54 9 11 3216-1017', 1, NULL, 1, '2025-01-15 11:41:20','2025-01-15 11:41:20',NULL, NULL,NULL,NULL,NULL,17),
	('movil',  '+54 9 11 3216-1018', 1, NULL, 1, '2025-01-15 11:41:25','2025-01-15 11:41:25',NULL, NULL,NULL,NULL,NULL,18),
	('movil',  '+54 9 11 3216-1019', 1, NULL, 1, '2025-01-15 11:41:30','2025-01-15 11:41:30',NULL, NULL,NULL,NULL,NULL,19),
	('movil',  '+54 9 11 3216-1020', 1, NULL, 1, '2025-01-15 11:41:35','2025-01-15 11:41:35',NULL, NULL,NULL,NULL,NULL,20),
	('movil',  '+54 9 11 3216-1021', 1, NULL, 1, '2025-01-15 11:41:40','2025-01-15 11:41:40',NULL, NULL,NULL,NULL,NULL,21),
	('movil',  '+54 9 11 3216-1022', 1, NULL, 1, '2025-01-15 11:41:45','2025-01-15 11:41:45',NULL, NULL,NULL,NULL,NULL,22),
	('movil',  '+54 9 11 3216-1023', 1, NULL, 1, '2025-01-15 11:41:50','2025-01-15 11:41:50',NULL, NULL,NULL,NULL,NULL,23),
	('movil',  '+54 9 11 3216-1024', 1, NULL, 1, '2025-01-15 11:41:55','2025-01-15 11:41:55',NULL, NULL,NULL,NULL,NULL,24),
	('movil',  '+54 9 11 3216-1025', 1, NULL, 1, '2025-01-15 11:42:00','2025-01-15 11:42:00',NULL, NULL,NULL,NULL,NULL,25),
	('movil',  '+54 9 11 3216-1026', 1, NULL, 1, '2025-01-15 11:42:05','2025-01-15 11:42:05',NULL, NULL,NULL,NULL,NULL,26),
	('movil',  '+54 9 11 3216-1027', 1, NULL, 1, '2025-01-15 11:42:10','2025-01-15 11:42:10',NULL, NULL,NULL,NULL,NULL,27),
	('movil',  '+54 9 11 3216-1028', 1, NULL, 1, '2025-01-15 11:42:15','2025-01-15 11:42:15',NULL, NULL,NULL,NULL,NULL,28),
	('movil',  '+54 9 11 3216-1029', 1, NULL, 1, '2025-01-15 11:42:20','2025-01-15 11:42:20',NULL, NULL,NULL,NULL,NULL,29),
	('movil',  '+54 9 11 3216-1030', 1, NULL, 1, '2025-01-15 11:42:25','2025-01-15 11:42:25',NULL, NULL,NULL,NULL,NULL,30),

	-- Secundarios: fijos (sin WhatsApp)
	('fijo',   '+54 11 4321-2001', 0, NULL, 0, '2025-01-15 11:42:30','2025-01-15 11:42:30',NULL, NULL,NULL,NULL,NULL, 1),
	('fijo',   '+54 11 4321-2002', 0, NULL, 0, '2025-01-15 11:42:35','2025-01-15 11:42:35',NULL, NULL,NULL,NULL,NULL, 2),
	('fijo',   '+54 11 4321-2003', 0, NULL, 0, '2025-01-15 11:42:40','2025-01-15 11:42:40',NULL, NULL,NULL,NULL,NULL, 3),
	('fijo',   '+54 11 4321-2004', 0, NULL, 0, '2025-01-15 11:42:45','2025-01-15 11:42:45',NULL, NULL,NULL,NULL,NULL, 4),
	('fijo',   '+54 11 4321-2005', 0, NULL, 0, '2025-01-15 11:42:50','2025-01-15 11:42:50',NULL, NULL,NULL,NULL,NULL, 5),
	('fijo',   '+54 11 4321-2006', 0, NULL, 0, '2025-01-15 11:42:55','2025-01-15 11:42:55',NULL, NULL,NULL,NULL,NULL,10),
	('fijo',   '+54 11 4321-2007', 0, NULL, 0, '2025-01-15 11:43:00','2025-01-15 11:43:00',NULL, NULL,NULL,NULL,NULL,15),
	('fijo',   '+54 11 4321-2008', 0, NULL, 0, '2025-01-15 11:43:05','2025-01-15 11:43:05',NULL, NULL,NULL,NULL,NULL,20),

	-- Secundarios: trabajo (con extensión)
	('trabajo','+54 11 5555-3001', 0, '101', 0, '2025-01-15 11:43:10','2025-01-15 11:43:10',NULL, NULL,NULL,NULL,NULL, 6),
	('trabajo','+54 11 5555-3002', 0, '203', 0, '2025-01-15 11:43:15','2025-01-15 11:43:15',NULL, NULL,NULL,NULL,NULL, 7),
	('trabajo','+54 11 5555-3003', 0, '305', 0, '2025-01-15 11:43:20','2025-01-15 11:43:20',NULL, NULL,NULL,NULL,NULL, 8),
	('trabajo','+54 11 5555-3004', 0, '117', 0, '2025-01-15 11:43:25','2025-01-15 11:43:25',NULL, NULL,NULL,NULL,NULL, 9),
	('trabajo','+54 11 5555-3005', 0, '404', 0, '2025-01-15 11:43:30','2025-01-15 11:43:30',NULL, NULL,NULL,NULL,NULL,12),
	('trabajo','+54 11 5555-3006', 0, '512', 0, '2025-01-15 11:43:35','2025-01-15 11:43:35',NULL, NULL,NULL,NULL,NULL,13),
	('trabajo','+54 11 5555-3007', 0, '221', 0, '2025-01-15 11:43:40','2025-01-15 11:43:40',NULL, NULL,NULL,NULL,NULL,16),
	('trabajo','+54 11 5555-3008', 0, '118', 0, '2025-01-15 11:43:45','2025-01-15 11:43:45',NULL, NULL,NULL,NULL,NULL,18),
	('trabajo','+54 11 5555-3009', 0, '332', 0, '2025-01-15 11:43:50','2025-01-15 11:43:50',NULL, NULL,NULL,NULL,NULL,22),
	('trabajo','+54 11 5555-3010', 0, '415', 0, '2025-01-15 11:43:55','2025-01-15 11:43:55',NULL, NULL,NULL,NULL,NULL,25),

	-- Secundarios: otros (línea adicional)
	('otro',   '+54 9 223 600-4101', 1, NULL, 0, '2025-01-15 11:44:00','2025-01-15 11:44:00',NULL, NULL,NULL,NULL,NULL, 26),
	('otro',   '+54 9 221 700-4102', 1, NULL, 0, '2025-01-15 11:44:05','2025-01-15 11:44:05',NULL, NULL,NULL,NULL,NULL, 27);

-- ======================================================================
-- INSERTS: Aerolinea.direccion 
-- ======================================================================
INSERT INTO Aerolinea.direccion
(tipo, pais, provincia, ciudad, cp, calle, numero, piso, depto, comentario,
 es_principal, creado_en, actualizado_en, eliminado_en,
 creado_por, actualizado_por, eliminado_por, eliminado_motivo, persona_idpersona)
VALUES
	-- 1
	('Domicilio','AR','Ciudad Autónoma de Buenos Aires','CABA','1001','Av. Corrientes','2450','8','B',NULL,
	 1,'2025-01-15 11:50:00','2025-01-15 11:50:00',NULL,NULL,NULL,NULL,NULL,1),
	-- 2
	('Domicilio','AR','Buenos Aires','La Plata','1900','Calle 12','875','3','A',NULL,
	 1,'2025-01-15 11:50:05','2025-01-15 11:50:05',NULL,NULL,NULL,NULL,NULL,2),
	-- 3
	('Domicilio','AR','Santa Fe','Rosario','2000','Bv. Oroño','1560',NULL,NULL,'Frente al parque',
	 1,'2025-01-15 11:50:10','2025-01-15 11:50:10',NULL,NULL,NULL,NULL,NULL,3),
	-- 4
	('Domicilio','AR','Córdoba','Córdoba','5000','Av. Colón','3210','5','C',NULL,
	 1,'2025-01-15 11:50:15','2025-01-15 11:50:15',NULL,NULL,NULL,NULL,NULL,4),
	-- 5
	('Domicilio','AR','Mendoza','Mendoza','5500','San Martín','980',NULL,NULL,NULL,
	 1,'2025-01-15 11:50:20','2025-01-15 11:50:20',NULL,NULL,NULL,NULL,NULL,5),
	-- 6
	('Domicilio','AR','Buenos Aires','Mar del Plata','7600','Av. Colón','4100','2','D','A 3 cuadras de la costa',
	 1,'2025-01-15 11:50:25','2025-01-15 11:50:25',NULL,NULL,NULL,NULL,NULL,6),
	-- 7
	('Domicilio','AR','Salta','Salta','4400','España','220','1','A',NULL,
	 1,'2025-01-15 11:50:30','2025-01-15 11:50:30',NULL,NULL,NULL,NULL,NULL,7),
	-- 8
	('Domicilio','AR','Tucumán','San Miguel de Tucumán','4000','25 de Mayo','730','PB','2',NULL,
	 1,'2025-01-15 11:50:35','2025-01-15 11:50:35',NULL,NULL,NULL,NULL,NULL,8),
	-- 9
	('Domicilio','AR','Neuquén','Neuquén','8300','Belgrano','145','4','B',NULL,
	 1,'2025-01-15 11:50:40','2025-01-15 11:50:40',NULL,NULL,NULL,NULL,NULL,9),
	-- 10
	('Domicilio','AR','Río Negro','San Carlos de Bariloche','8400','Mitre','601',NULL,NULL,'Barrio Centro',
	 1,'2025-01-15 11:50:45','2025-01-15 11:50:45',NULL,NULL,NULL,NULL,NULL,10),
	-- 11
	('Domicilio','AR','Chubut','Comodoro Rivadavia','9000','Rivadavia','1200','6','A',NULL,
	 1,'2025-01-15 11:50:50','2025-01-15 11:50:50',NULL,NULL,NULL,NULL,NULL,11),
	-- 12
	('Domicilio','AR','Entre Ríos','Paraná','3100','Urquiza','510',NULL,NULL,NULL,
	 1,'2025-01-15 11:50:55','2025-01-15 11:50:55',NULL,NULL,NULL,NULL,NULL,12),
	-- 13
	('Domicilio','AR','Corrientes','Corrientes','3400','Junín','845','7','C',NULL,
	 1,'2025-01-15 11:51:00','2025-01-15 11:51:00',NULL,NULL,NULL,NULL,NULL,13),
	-- 14
	('Domicilio','AR','Misiones','Posadas','3300','Sarmiento','300',NULL,NULL,'Cerca de la costanera',
	 1,'2025-01-15 11:51:05','2025-01-15 11:51:05',NULL,NULL,NULL,NULL,NULL,14),
	-- 15
	('Domicilio','AR','Chaco','Resistencia','3500','Güemes','1120','9','A',NULL,
	 1,'2025-01-15 11:51:10','2025-01-15 11:51:10',NULL,NULL,NULL,NULL,NULL,15),
	-- 16
	('Domicilio','AR','Formosa','Formosa','3600','Moreno','455',NULL,NULL,NULL,
	 1,'2025-01-15 11:51:15','2025-01-15 11:51:15',NULL,NULL,NULL,NULL,NULL,16),
	-- 17
	('Domicilio','AR','San Juan','San Juan','5400','Iglesias','980','3','B',NULL,
	 1,'2025-01-15 11:51:20','2025-01-15 11:51:20',NULL,NULL,NULL,NULL,NULL,17),
	-- 18
	('Domicilio','AR','San Luis','San Luis','5700','Lafinur','720',NULL,NULL,NULL,
	 1,'2025-01-15 11:51:25','2025-01-15 11:51:25',NULL,NULL,NULL,NULL,NULL,18),
	-- 19
	('Domicilio','AR','La Rioja','La Rioja','5300','Pelagio B. Luna','250','2','A',NULL,
	 1,'2025-01-15 11:51:30','2025-01-15 11:51:30',NULL,NULL,NULL,NULL,NULL,19),
	-- 20
	('Domicilio','AR','Jujuy','San Salvador de Jujuy','4600','Alvear','610',NULL,NULL,NULL,
	 1,'2025-01-15 11:51:35','2025-01-15 11:51:35',NULL,NULL,NULL,NULL,NULL,20),
	-- 21
	('Domicilio','AR','La Pampa','Santa Rosa','6300','Av. San Martín','1320','5','C','Zona céntrica',
	 1,'2025-01-15 11:51:40','2025-01-15 11:51:40',NULL,NULL,NULL,NULL,NULL,21),
	-- 22
	('Domicilio','AR','Santiago del Estero','Santiago del Estero','4200','Independencia','410',NULL,NULL,NULL,
	 1,'2025-01-15 11:51:45','2025-01-15 11:51:45',NULL,NULL,NULL,NULL,NULL,22),
	-- 23
	('Domicilio','AR','Catamarca','San Fernando del Valle de Catamarca','4700','República','900','1','B',NULL,
	 1,'2025-01-15 11:51:50','2025-01-15 11:51:50',NULL,NULL,NULL,NULL,NULL,23),
	-- 24
	('Domicilio','AR','Tierra del Fuego','Ushuaia','9410','San Martín','1500',NULL,NULL,'Vista al canal',
	 1,'2025-01-15 11:51:55','2025-01-15 11:51:55',NULL,NULL,NULL,NULL,NULL,24),
	-- 25
	('Domicilio','AR','Río Negro','General Roca','8332','Italia','477','4','A',NULL,
	 1,'2025-01-15 11:52:00','2025-01-15 11:52:00',NULL,NULL,NULL,NULL,NULL,25),
	-- 26
	('Domicilio','AR','Buenos Aires','Bahía Blanca','8000','Brown','620',NULL,NULL,NULL,
	 1,'2025-01-15 11:52:05','2025-01-15 11:52:05',NULL,NULL,NULL,NULL,NULL,26),
	-- 27
	('Domicilio','AR','Buenos Aires','Tandil','7000','Belgrano','350','6','D',NULL,
	 1,'2025-01-15 11:52:10','2025-01-15 11:52:10',NULL,NULL,NULL,NULL,NULL,27),
	-- 28
	('Domicilio','AR','Córdoba','Villa Carlos Paz','5152','Av. San Martín','210',NULL,NULL,'Barrio Centro',
	 1,'2025-01-15 11:52:15','2025-01-15 11:52:15',NULL,NULL,NULL,NULL,NULL,28),
	-- 29
	('Domicilio','AR','Santa Fe','Santa Fe','3000','San Jerónimo','845','10','B',NULL,
	 1,'2025-01-15 11:52:20','2025-01-15 11:52:20',NULL,NULL,NULL,NULL,NULL,29),
	-- 30
	('Domicilio','AR','Buenos Aires','Quilmes','1878','Mitre','1990','PB','1',NULL,
	 1,'2025-01-15 11:52:25','2025-01-15 11:52:25',NULL,NULL,NULL,NULL,NULL,30);

-- ======================================================================
-- INSERTS: Aerolinea.aeropuerto  
-- ======================================================================
INSERT INTO Aerolinea.aeropuerto
(tag, nombre, ciudad, latitud, longitud, huso_horario, activo,
 creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo)
VALUES
	('EZE','Aeropuerto Internacional Ministro Pistarini','Buenos Aires',-34.822200,-58.535800,'America/Argentina/Buenos_Aires',1,
	 '2025-01-15 12:00:00','2025-01-15 12:00:00',NULL,NULL,NULL,NULL,NULL),
	('AEP','Aeroparque Jorge Newbery','Buenos Aires',-34.559200,-58.415600,'America/Argentina/Buenos_Aires',1,
	 '2025-01-15 12:00:05','2025-01-15 12:00:05',NULL,NULL,NULL,NULL,NULL),
	('COR','Aeropuerto Internacional Ing. A. Taravella','Córdoba',-31.313100,-64.207000,'America/Argentina/Cordoba',1,
	 '2025-01-15 12:00:10','2025-01-15 12:00:10',NULL,NULL,NULL,NULL,NULL),
	('MDZ','Aeropuerto Internacional El Plumerillo','Mendoza',-32.831700,-68.792900,'America/Argentina/Mendoza',1,
	 '2025-01-15 12:00:15','2025-01-15 12:00:15',NULL,NULL,NULL,NULL,NULL),
	('ROS','Aeropuerto Internacional Islas Malvinas','Rosario',-32.903600,-60.785000,'America/Argentina/Buenos_Aires',1,
	 '2025-01-15 12:00:20','2025-01-15 12:00:20',NULL,NULL,NULL,NULL,NULL),
	('BHI','Aeropuerto Comandante Espora','Bahía Blanca',-38.725000,-62.169300,'America/Argentina/Buenos_Aires',1,
	 '2025-01-15 12:00:25','2025-01-15 12:00:25',NULL,NULL,NULL,NULL,NULL),
	('NQN','Aeropuerto Presidente Perón','Neuquén',-38.949000,-68.155700,'America/Argentina/Salta',1,
	 '2025-01-15 12:00:30','2025-01-15 12:00:30',NULL,NULL,NULL,NULL,NULL),
	('USH','Aeropuerto Internacional Malvinas Argentinas','Ushuaia',-54.843300,-68.295800,'America/Argentina/Ushuaia',1,
	 '2025-01-15 12:00:35','2025-01-15 12:00:35',NULL,NULL,NULL,NULL,NULL),
	('SLA','Aeropuerto Internacional M. M. de Güemes','Salta',-24.856000,-65.486700,'America/Argentina/Salta',1,
	 '2025-01-15 12:00:40','2025-01-15 12:00:40',NULL,NULL,NULL,NULL,NULL),
	('TUC','Aeropuerto Internacional Benjamín Matienzo','San Miguel de Tucumán',-26.840900,-65.104900,'America/Argentina/Tucuman',1,
	 '2025-01-15 12:00:45','2025-01-15 12:00:45',NULL,NULL,NULL,NULL,NULL),
	('ASU','Aeropuerto Internacional Silvio Pettirossi','Asunción',-25.239900,-57.519100,'America/Asuncion',1,
	 '2025-01-15 12:00:50','2025-01-15 12:00:50',NULL,NULL,NULL,NULL,NULL),
	('SCL','Aeropuerto Internacional Arturo Merino Benítez','Santiago de Chile',-33.392900,-70.785800,'America/Santiago',1,
	 '2025-01-15 12:00:55','2025-01-15 12:00:55',NULL,NULL,NULL,NULL,NULL),
	('GRU','Aeropuerto Internacional São Paulo–Guarulhos','São Paulo',-23.435600,-46.473100,'America/Sao_Paulo',1,
	 '2025-01-15 12:01:00','2025-01-15 12:01:00',NULL,NULL,NULL,NULL,NULL),
	('GIG','Aeropuerto Internacional Galeão','Río de Janeiro',-22.810000,-43.250600,'America/Sao_Paulo',1,
	 '2025-01-15 12:01:05','2025-01-15 12:01:05',NULL,NULL,NULL,NULL,NULL),
	('MVD','Aeropuerto Internacional de Carrasco','Montevideo',-34.838400,-56.030800,'America/Montevideo',1,
	 '2025-01-15 12:01:10','2025-01-15 12:01:10',NULL,NULL,NULL,NULL,NULL),
	('LIM','Aeropuerto Internacional Jorge Chávez','Lima',-12.021900,-77.114300,'America/Lima',1,
	 '2025-01-15 12:01:15','2025-01-15 12:01:15',NULL,NULL,NULL,NULL,NULL),
	('BOG','Aeropuerto Internacional El Dorado','Bogotá', 4.701600,-74.146900,'America/Bogota',1,
	 '2025-01-15 12:01:20','2025-01-15 12:01:20',NULL,NULL,NULL,NULL,NULL),
	('MEX','Aeropuerto Internacional Benito Juárez','Ciudad de México',19.436100,-99.071900,'America/Mexico_City',1,
	 '2025-01-15 12:01:25','2025-01-15 12:01:25',NULL,NULL,NULL,NULL,NULL),
	('MAD','Aeropuerto Adolfo Suárez Madrid-Barajas','Madrid',40.498300,-3.567600,'Europe/Madrid',1,
	 '2025-01-15 12:01:30','2025-01-15 12:01:30',NULL,NULL,NULL,NULL,NULL),
	('MIA','Aeropuerto Internacional de Miami','Miami',25.793300,-80.290600,'America/New_York',1,
	 '2025-01-15 12:01:35','2025-01-15 12:01:35',NULL,NULL,NULL,NULL,NULL);

-- ======================================================================
-- INSERTS: Aerolinea.terminal
-- ======================================================================
INSERT INTO Aerolinea.terminal
(nombre, activo, creado_en, actualizado_en, eliminado_en,
 creado_por, actualizado_por, eliminado_por, eliminado_motivo,
 aeropuerto_idaeropuerto)
VALUES
	-- EZE (1)
	('Terminal 1',1,'2025-01-15 12:10:00','2025-01-15 12:10:00',NULL,NULL,NULL,NULL,NULL,1),
	('Terminal 2',1,'2025-01-15 12:10:05','2025-01-15 12:10:05',NULL,NULL,NULL,NULL,NULL,1),
	('Terminal Cargas',1,'2025-01-15 12:10:10','2025-01-15 12:10:10',NULL,NULL,NULL,NULL,NULL,1),

	-- AEP (2)
	('Terminal Principal',1,'2025-01-15 12:10:15','2025-01-15 12:10:15',NULL,NULL,NULL,NULL,NULL,2),
	('Terminal Regional',1,'2025-01-15 12:10:20','2025-01-15 12:10:20',NULL,NULL,NULL,NULL,NULL,2),

	-- SCL (12)
	('T1',1,'2025-01-15 12:10:25','2025-01-15 12:10:25',NULL,NULL,NULL,NULL,NULL,12),
	('T2',1,'2025-01-15 12:10:30','2025-01-15 12:10:30',NULL,NULL,NULL,NULL,NULL,12),

	-- GRU (13)
	('T1',1,'2025-01-15 12:10:35','2025-01-15 12:10:35',NULL,NULL,NULL,NULL,NULL,13),
	('T2',1,'2025-01-15 12:10:40','2025-01-15 12:10:40',NULL,NULL,NULL,NULL,NULL,13),
	('T3',1,'2025-01-15 12:10:45','2025-01-15 12:10:45',NULL,NULL,NULL,NULL,NULL,13),

	-- GIG (14)
	('T1',1,'2025-01-15 12:10:50','2025-01-15 12:10:50',NULL,NULL,NULL,NULL,NULL,14),
	('T2',1,'2025-01-15 12:10:55','2025-01-15 12:10:55',NULL,NULL,NULL,NULL,NULL,14),

	-- MEX (18)
	('T1',1,'2025-01-15 12:11:00','2025-01-15 12:11:00',NULL,NULL,NULL,NULL,NULL,18),
	('T2',1,'2025-01-15 12:11:05','2025-01-15 12:11:05',NULL,NULL,NULL,NULL,NULL,18),
	('T3',1,'2025-01-15 12:11:10','2025-01-15 12:11:10',NULL,NULL,NULL,NULL,NULL,18),

	-- MAD (19)
	('T4',1,'2025-01-15 12:11:15','2025-01-15 12:11:15',NULL,NULL,NULL,NULL,NULL,19),

	-- MIA (20)
	('Concourse D',1,'2025-01-15 12:11:20','2025-01-15 12:11:20',NULL,NULL,NULL,NULL,NULL,20),
	('Concourse J',1,'2025-01-15 12:11:25','2025-01-15 12:11:25',NULL,NULL,NULL,NULL,NULL,20),

	-- COR (3) / MDZ (4) / ROS (5) / NQN (7) / USH (8) / SLA (9)
	('Terminal Única',1,'2025-01-15 12:11:30','2025-01-15 12:11:30',NULL,NULL,NULL,NULL,NULL,3),
	('Terminal Única',1,'2025-01-15 12:11:35','2025-01-15 12:11:35',NULL,NULL,NULL,NULL,NULL,4),
	('Terminal Única',1,'2025-01-15 12:11:40','2025-01-15 12:11:40',NULL,NULL,NULL,NULL,NULL,5),
	('Terminal Única',1,'2025-01-15 12:11:45','2025-01-15 12:11:45',NULL,NULL,NULL,NULL,NULL,7),
	('Terminal Única',1,'2025-01-15 12:11:50','2025-01-15 12:11:50',NULL,NULL,NULL,NULL,NULL,8),
	('Terminal Única',1,'2025-01-15 12:11:55','2025-01-15 12:11:55',NULL,NULL,NULL,NULL,NULL,9);


-- ======================================================================
-- INSERTS : Aerolinea.puerta 
-- ======================================================================
INSERT INTO Aerolinea.puerta
(codigo, activo, creado_en, actualizado_en, eliminado_en,
 creado_por, actualizado_por, eliminado_por, eliminado_motivo,
 aeropuerto_idaeropuerto)
VALUES
	-- EZE (1)
	('EZE-G01',1,'2025-01-15 12:25:00','2025-01-15 12:25:00',NULL,NULL,NULL,NULL,NULL,1),
	('EZE-G02',1,'2025-01-15 12:25:05','2025-01-15 12:25:05',NULL,NULL,NULL,NULL,NULL,1),

	-- AEP (2)
	('AEP-G01',1,'2025-01-15 12:25:10','2025-01-15 12:25:10',NULL,NULL,NULL,NULL,NULL,2),
	('AEP-G02',1,'2025-01-15 12:25:15','2025-01-15 12:25:15',NULL,NULL,NULL,NULL,NULL,2),

	-- COR (3)
	('COR-G01',1,'2025-01-15 12:25:20','2025-01-15 12:25:20',NULL,NULL,NULL,NULL,NULL,3),
	('COR-G02',1,'2025-01-15 12:25:25','2025-01-15 12:25:25',NULL,NULL,NULL,NULL,NULL,3),

	-- MDZ (4)
	('MDZ-G01',1,'2025-01-15 12:25:30','2025-01-15 12:25:30',NULL,NULL,NULL,NULL,NULL,4),
	('MDZ-G02',1,'2025-01-15 12:25:35','2025-01-15 12:25:35',NULL,NULL,NULL,NULL,NULL,4),

	-- ROS (5)
	('ROS-G01',1,'2025-01-15 12:25:40','2025-01-15 12:25:40',NULL,NULL,NULL,NULL,NULL,5),
	('ROS-G02',1,'2025-01-15 12:25:45','2025-01-15 12:25:45',NULL,NULL,NULL,NULL,NULL,5),

	-- BHI (6)
	('BHI-G01',1,'2025-01-15 12:25:50','2025-01-15 12:25:50',NULL,NULL,NULL,NULL,NULL,6),
	('BHI-G02',1,'2025-01-15 12:25:55','2025-01-15 12:25:55',NULL,NULL,NULL,NULL,NULL,6),

	-- NQN (7)
	('NQN-G01',1,'2025-01-15 12:26:00','2025-01-15 12:26:00',NULL,NULL,NULL,NULL,NULL,7),
	('NQN-G02',1,'2025-01-15 12:26:05','2025-01-15 12:26:05',NULL,NULL,NULL,NULL,NULL,7),

	-- USH (8)
	('USH-G01',1,'2025-01-15 12:26:10','2025-01-15 12:26:10',NULL,NULL,NULL,NULL,NULL,8),
	('USH-G02',1,'2025-01-15 12:26:15','2025-01-15 12:26:15',NULL,NULL,NULL,NULL,NULL,8),

	-- SLA (9)
	('SLA-G01',1,'2025-01-15 12:26:20','2025-01-15 12:26:20',NULL,NULL,NULL,NULL,NULL,9),
	('SLA-G02',1,'2025-01-15 12:26:25','2025-01-15 12:26:25',NULL,NULL,NULL,NULL,NULL,9),

	-- TUC (10)
	('TUC-G01',1,'2025-01-15 12:26:30','2025-01-15 12:26:30',NULL,NULL,NULL,NULL,NULL,10),
	('TUC-G02',1,'2025-01-15 12:26:35','2025-01-15 12:26:35',NULL,NULL,NULL,NULL,NULL,10),

	-- SCL (12)
	('SCL-G10',1,'2025-01-15 12:26:40','2025-01-15 12:26:40',NULL,NULL,NULL,NULL,NULL,12),
	('SCL-G12',1,'2025-01-15 12:26:45','2025-01-15 12:26:45',NULL,NULL,NULL,NULL,NULL,12),

	-- GRU (13)
	('GRU-E01',1,'2025-01-15 12:26:50','2025-01-15 12:26:50',NULL,NULL,NULL,NULL,NULL,13),
	('GRU-E02',1,'2025-01-15 12:26:55','2025-01-15 12:26:55',NULL,NULL,NULL,NULL,NULL,13),

	-- GIG (14)
	('GIG-B31',1,'2025-01-15 12:27:00','2025-01-15 12:27:00',NULL,NULL,NULL,NULL,NULL,14),
	('GIG-B33',1,'2025-01-15 12:27:05','2025-01-15 12:27:05',NULL,NULL,NULL,NULL,NULL,14),

	-- MVD (15)
	('MVD-G01',1,'2025-01-15 12:27:10','2025-01-15 12:27:10',NULL,NULL,NULL,NULL,NULL,15),
	('MVD-G02',1,'2025-01-15 12:27:15','2025-01-15 12:27:15',NULL,NULL,NULL,NULL,NULL,15),

	-- LIM (16)
	('LIM-G01',1,'2025-01-15 12:27:20','2025-01-15 12:27:20',NULL,NULL,NULL,NULL,NULL,16),
	('LIM-G02',1,'2025-01-15 12:27:25','2025-01-15 12:27:25',NULL,NULL,NULL,NULL,NULL,16),

	-- BOG (17)
	('BOG-G01',1,'2025-01-15 12:27:30','2025-01-15 12:27:30',NULL,NULL,NULL,NULL,NULL,17),
	('BOG-G02',1,'2025-01-15 12:27:35','2025-01-15 12:27:35',NULL,NULL,NULL,NULL,NULL,17),

	-- MEX (18)
	('MEX-31',1,'2025-01-15 12:27:40','2025-01-15 12:27:40',NULL,NULL,NULL,NULL,NULL,18),
	('MEX-32',1,'2025-01-15 12:27:45','2025-01-15 12:27:45',NULL,NULL,NULL,NULL,NULL,18),

	-- MAD (19)
	('MAD-H10',1,'2025-01-15 12:27:50','2025-01-15 12:27:50',NULL,NULL,NULL,NULL,NULL,19),
	('MAD-J12',1,'2025-01-15 12:27:55','2025-01-15 12:27:55',NULL,NULL,NULL,NULL,NULL,19),

	-- MIA (20)
	('MIA-D15',1,'2025-01-15 12:28:00','2025-01-15 12:28:00',NULL,NULL,NULL,NULL,NULL,20),
	('MIA-J07',1,'2025-01-15 12:28:05','2025-01-15 12:28:05',NULL,NULL,NULL,NULL,NULL,20);

-- ======================================================================
-- INSERTS: Aerolinea.modelo_aeronave 
-- ======================================================================
INSERT INTO Aerolinea.modelo_aeronave
(fabricante, mdoelo, familia, alcance_km, velocidad_crucero_kmh, capacidad_asiento,
 capacidad_bodega_kg, activo, creado_en, actualizado_en, eliminado_en,
 creado_por, actualizado_por, eliminado_por, eliminado_motivo)
VALUES
	-- Boeing 737 family
	('Boeing','737-700','737 NG',6200,828,144,16000,1,'2025-01-15 12:35:00','2025-01-15 12:35:00',NULL,NULL,NULL,NULL,NULL),
	('Boeing','737-800','737 NG',6570,840,189,18000,1,'2025-01-15 12:35:05','2025-01-15 12:35:05',NULL,NULL,NULL,NULL,NULL),
	('Boeing','737-900ER','737 NG',5925,840,215,19000,1,'2025-01-15 12:35:10','2025-01-15 12:35:10',NULL,NULL,NULL,NULL,NULL),
	('Boeing','737 MAX 8','737 MAX',6570,839,189,18700,1,'2025-01-15 12:35:15','2025-01-15 12:35:15',NULL,NULL,NULL,NULL,NULL),

	-- Boeing medium/long haul
	('Boeing','767-300ER','767',11000,851,269,42000,1,'2025-01-15 12:35:20','2025-01-15 12:35:20',NULL,NULL,NULL,NULL,NULL),
	('Boeing','777-200ER','777',13400,905,314,60000,1,'2025-01-15 12:35:25','2025-01-15 12:35:25',NULL,NULL,NULL,NULL,NULL),
	('Boeing','787-8','787 Dreamliner',13620,903,248,45000,1,'2025-01-15 12:35:30','2025-01-15 12:35:30',NULL,NULL,NULL,NULL,NULL),

	-- Airbus A320 family
	('Airbus','A319-100','A320ceo',6700,828,144,14000,1,'2025-01-15 12:35:35','2025-01-15 12:35:35',NULL,NULL,NULL,NULL,NULL),
	('Airbus','A320-200','A320ceo',6150,828,180,16000,1,'2025-01-15 12:35:40','2025-01-15 12:35:40',NULL,NULL,NULL,NULL,NULL),
	('Airbus','A321-200','A320ceo',5600,828,220,18000,1,'2025-01-15 12:35:45','2025-01-15 12:35:45',NULL,NULL,NULL,NULL,NULL),
	('Airbus','A320neo','A320neo',6500,828,186,17000,1,'2025-01-15 12:35:50','2025-01-15 12:35:50',NULL,NULL,NULL,NULL,NULL),
	('Airbus','A321neo','A320neo',7400,828,220,19000,1,'2025-01-15 12:35:55','2025-01-15 12:35:55',NULL,NULL,NULL,NULL,NULL),

	-- Airbus long haul
	('Airbus','A330-200','A330',13450,871,268,50000,1,'2025-01-15 12:36:00','2025-01-15 12:36:00',NULL,NULL,NULL,NULL,NULL),
	('Airbus','A330-300','A330',11750,871,300,52000,1,'2025-01-15 12:36:05','2025-01-15 12:36:05',NULL,NULL,NULL,NULL,NULL),
	('Airbus','A350-900','A350',15000,903,315,60000,1,'2025-01-15 12:36:10','2025-01-15 12:36:10',NULL,NULL,NULL,NULL,NULL),

	-- Embraer E-Jets
	('Embraer','E170','E-Jet',3900,829,76,7000,1,'2025-01-15 12:36:15','2025-01-15 12:36:15',NULL,NULL,NULL,NULL,NULL),
	('Embraer','E190','E-Jet',4500,829,100,9000,1,'2025-01-15 12:36:20','2025-01-15 12:36:20',NULL,NULL,NULL,NULL,NULL),
	('Embraer','E195-E2','E2',4815,871,132,12000,1,'2025-01-15 12:36:25','2025-01-15 12:36:25',NULL,NULL,NULL,NULL,NULL),

	-- ATR turboprops
	('ATR','ATR 42-600','ATR 42',1500,556,48,4000,1,'2025-01-15 12:36:30','2025-01-15 12:36:30',NULL,NULL,NULL,NULL,NULL),
	('ATR','ATR 72-600','ATR 72',1500,556,70,5000,1,'2025-01-15 12:36:35','2025-01-15 12:36:35',NULL,NULL,NULL,NULL,NULL),

	-- Regional/Biz jets comunes en feeders
	('Bombardier','CRJ200','CRJ',3000,785,50,3500,1,'2025-01-15 12:36:40','2025-01-15 12:36:40',NULL,NULL,NULL,NULL,NULL),
	('Bombardier','CRJ700','CRJ',3700,829,70,5000,1,'2025-01-15 12:36:45','2025-01-15 12:36:45',NULL,NULL,NULL,NULL,NULL),
	('Mitsubishi','SpaceJet M90','SpaceJet',3300,870,88,8000,1,'2025-01-15 12:36:50','2025-01-15 12:36:50',NULL,NULL,NULL,NULL,NULL);

-- ======================================================================
-- INSERTS: Aerolinea.aeronave 
-- ======================================================================
INSERT INTO Aerolinea.aeronave
(matricula, fecha_de_alta, estado, nota,
 creado_en, actualizado_en, eliminado_en,
 creado_por, actualizado_por, eliminado_por, eliminado_motivo,
 modelo_aeronave_idmodelo_aeronave)
VALUES
	-- Flota Boeing 737 / MAX
	('LV-B001','2010-06-15','activa',NULL,'2025-01-15 12:40:00','2025-01-15 12:40:00',NULL,NULL,NULL,NULL,NULL,1),
	('LV-B002','2012-03-20','activa',NULL,'2025-01-15 12:40:05','2025-01-15 12:40:05',NULL,NULL,NULL,NULL,NULL,2),
	('LV-B003','2014-09-10','activa','Revisión menor completada 2024-11','2025-01-15 12:40:10','2025-01-15 12:40:10',NULL,NULL,NULL,NULL,NULL,3),
	('LV-B004','2018-04-12','en_mantenimiento','Chequeo C programado','2025-01-15 12:40:15','2025-01-15 12:40:15',NULL,NULL,NULL,NULL,NULL,4),

	-- Boeing widebody
	('LV-B005','2008-08-22','activa',NULL,'2025-01-15 12:40:20','2025-01-15 12:40:20',NULL,NULL,NULL,NULL,NULL,5),
	('LV-B006','2006-11-05','en_mantenimiento','Cambio tren de aterrizaje','2025-01-15 12:40:25','2025-01-15 12:40:25',NULL,NULL,NULL,NULL,NULL,6),
	('LV-B007','2019-07-14','activa','Operación long-haul','2025-01-15 12:40:30','2025-01-15 12:40:30',NULL,NULL,NULL,NULL,NULL,7),

	-- Airbus A320 family
	('LV-A001','2011-02-11','activa',NULL,'2025-01-15 12:40:35','2025-01-15 12:40:35',NULL,NULL,NULL,NULL,NULL,8),
	('LV-A002','2013-05-19','activa','Cabina con wifi','2025-01-15 12:40:40','2025-01-15 12:40:40',NULL,NULL,NULL,NULL,NULL,9),
	('LV-A003','2016-03-08','activa',NULL,'2025-01-15 12:40:45','2025-01-15 12:40:45',NULL,NULL,NULL,NULL,NULL,10),
	('LV-A004','2020-01-05','activa','NEO con sharklets','2025-01-15 12:40:50','2025-01-15 12:40:50',NULL,NULL,NULL,NULL,NULL,11),
	('LV-A005','2021-09-12','activa','A321neo alta densidad','2025-01-15 12:40:55','2025-01-15 12:40:55',NULL,NULL,NULL,NULL,NULL,12),

	-- Airbus widebody
	('LV-A006','2012-06-23','activa',NULL,'2025-01-15 12:41:00','2025-01-15 12:41:00',NULL,NULL,NULL,NULL,NULL,13),
	('LV-A007','2013-12-15','retirada','En proceso de venta','2025-01-15 12:41:05','2025-01-15 12:41:05',NULL,NULL,NULL,NULL,NULL,14),
	('LV-A008','2019-03-19','activa','Equipo flagship','2025-01-15 12:41:10','2025-01-15 12:41:10',NULL,NULL,NULL,NULL,NULL,15),

	-- Embraer
	('LV-E001','2010-11-08','activa','Regional','2025-01-15 12:41:15','2025-01-15 12:41:15',NULL,NULL,NULL,NULL,NULL,16),
	('LV-E002','2012-07-25','activa',NULL,'2025-01-15 12:41:20','2025-01-15 12:41:20',NULL,NULL,NULL,NULL,NULL,17),
	('LV-E003','2020-10-14','activa','E2 bajo consumo','2025-01-15 12:41:25','2025-01-15 12:41:25',NULL,NULL,NULL,NULL,NULL,18),

	-- ATR (turbohélice)
	('LV-T001','2015-02-09','activa',NULL,'2025-01-15 12:41:30','2025-01-15 12:41:30',NULL,NULL,NULL,NULL,NULL,19),
	('LV-T002','2016-11-27','activa','Rutas cortas','2025-01-15 12:41:35','2025-01-15 12:41:35',NULL,NULL,NULL,NULL,NULL,20),

	-- Bombardier CRJ
	('LV-C001','2010-01-17','activa',NULL,'2025-01-15 12:41:40','2025-01-15 12:41:40',NULL,NULL,NULL,NULL,NULL,21),
	('LV-C002','2013-08-04','activa','Cabina refresh 2024','2025-01-15 12:41:45','2025-01-15 12:41:45',NULL,NULL,NULL,NULL,NULL,22),

	-- Mitsubishi SpaceJet (mapeado al modelo 22 para simplificar FK)
	('LV-M001','2021-12-01','activa',NULL,'2025-01-15 12:41:50','2025-01-15 12:41:50',NULL,NULL,NULL,NULL,NULL,22),
	('LV-M002','2022-08-20','activa','Entrega reciente','2025-01-15 12:41:55','2025-01-15 12:41:55',NULL,NULL,NULL,NULL,NULL,22);

-- ======================================================================
-- INSERTS: Aerolinea.configuracion_cabina 
-- ======================================================================
INSERT INTO Aerolinea.configuracion_cabina
(cabina, fila, asiento_por_fila,
 creado_en, actualizado_en, eliminado_en,
 creado_por, actualizado_por, eliminado_por, eliminado_motivo,
 aeronave_idaeronave)
VALUES
	-- =========================
	-- 737 / MAX (aeronave 1..4)
	-- =========================
	('primera clase', 2, 4, '2025-01-15 12:50:00','2025-01-15 12:50:00',NULL,NULL,NULL,NULL,NULL, 1),
	('ejecutivo',     4, 4, '2025-01-15 12:50:01','2025-01-15 12:50:01',NULL,NULL,NULL,NULL,NULL, 1),
	('economica',    25, 6, '2025-01-15 12:50:02','2025-01-15 12:50:02',NULL,NULL,NULL,NULL,NULL, 1),

	('primera clase', 2, 4, '2025-01-15 12:50:03','2025-01-15 12:50:03',NULL,NULL,NULL,NULL,NULL, 2),
	('ejecutivo',     4, 4, '2025-01-15 12:50:04','2025-01-15 12:50:04',NULL,NULL,NULL,NULL,NULL, 2),
	('economica',    26, 6, '2025-01-15 12:50:05','2025-01-15 12:50:05',NULL,NULL,NULL,NULL,NULL, 2),

	('primera clase', 2, 4, '2025-01-15 12:50:06','2025-01-15 12:50:06',NULL,NULL,NULL,NULL,NULL, 3),
	('ejecutivo',     4, 4, '2025-01-15 12:50:07','2025-01-15 12:50:07',NULL,NULL,NULL,NULL,NULL, 3),
	('economica',    27, 6, '2025-01-15 12:50:08','2025-01-15 12:50:08',NULL,NULL,NULL,NULL,NULL, 3),

	('primera clase', 2, 4, '2025-01-15 12:50:09','2025-01-15 12:50:09',NULL,NULL,NULL,NULL,NULL, 4),
	('ejecutivo',     5, 4, '2025-01-15 12:50:10','2025-01-15 12:50:10',NULL,NULL,NULL,NULL,NULL, 4),
	('economica',    28, 6, '2025-01-15 12:50:11','2025-01-15 12:50:11',NULL,NULL,NULL,NULL,NULL, 4),

	-- =========================
	-- Widebody Boeing (5..7)
	-- =========================
	('primera clase',  4, 4, '2025-01-15 12:50:12','2025-01-15 12:50:12',NULL,NULL,NULL,NULL,NULL, 5),
	('ejecutivo',      8, 4, '2025-01-15 12:50:13','2025-01-15 12:50:13',NULL,NULL,NULL,NULL,NULL, 5),
	('economica',     40, 8, '2025-01-15 12:50:14','2025-01-15 12:50:14',NULL,NULL,NULL,NULL,NULL, 5),

	('primera clase',  4, 4, '2025-01-15 12:50:15','2025-01-15 12:50:15',NULL,NULL,NULL,NULL,NULL, 6),
	('ejecutivo',      8, 4, '2025-01-15 12:50:16','2025-01-15 12:50:16',NULL,NULL,NULL,NULL,NULL, 6),
	('economica',     38, 8, '2025-01-15 12:50:17','2025-01-15 12:50:17',NULL,NULL,NULL,NULL,NULL, 6),

	('primera clase',  4, 4, '2025-01-15 12:50:18','2025-01-15 12:50:18',NULL,NULL,NULL,NULL,NULL, 7),
	('ejecutivo',      9, 4, '2025-01-15 12:50:19','2025-01-15 12:50:19',NULL,NULL,NULL,NULL,NULL, 7),
	('economica',     42, 8, '2025-01-15 12:50:20','2025-01-15 12:50:20',NULL,NULL,NULL,NULL,NULL, 7),

	-- =================================
	-- Airbus A320 family (8..12)
	-- =================================
	('ejecutivo',   4, 4, '2025-01-15 12:50:21','2025-01-15 12:50:21',NULL,NULL,NULL,NULL,NULL, 8),
	('economica',  28, 6, '2025-01-15 12:50:22','2025-01-15 12:50:22',NULL,NULL,NULL,NULL,NULL, 8),

	('ejecutivo',   4, 4, '2025-01-15 12:50:23','2025-01-15 12:50:23',NULL,NULL,NULL,NULL,NULL, 9),
	('economica',  29, 6, '2025-01-15 12:50:24','2025-01-15 12:50:24',NULL,NULL,NULL,NULL,NULL, 9),

	('ejecutivo',   4, 4, '2025-01-15 12:50:25','2025-01-15 12:50:25',NULL,NULL,NULL,NULL,NULL, 10),
	('economica',  30, 6, '2025-01-15 12:50:26','2025-01-15 12:50:26',NULL,NULL,NULL,NULL,NULL, 10),

	('ejecutivo',   5, 4, '2025-01-15 12:50:27','2025-01-15 12:50:27',NULL,NULL,NULL,NULL,NULL, 11),
	('economica',  31, 6, '2025-01-15 12:50:28','2025-01-15 12:50:28',NULL,NULL,NULL,NULL,NULL, 11),

	('ejecutivo',   6, 4, '2025-01-15 12:50:29','2025-01-15 12:50:29',NULL,NULL,NULL,NULL,NULL, 12),
	('economica',  34, 6, '2025-01-15 12:50:30','2025-01-15 12:50:30',NULL,NULL,NULL,NULL,NULL, 12),

	-- =========================
	-- Widebody Airbus (13..15)
	-- =========================
	('primera clase',  2, 4, '2025-01-15 12:50:31','2025-01-15 12:50:31',NULL,NULL,NULL,NULL,NULL, 13),
	('ejecutivo',      8, 4, '2025-01-15 12:50:32','2025-01-15 12:50:32',NULL,NULL,NULL,NULL,NULL, 13),
	('economica',     36, 8, '2025-01-15 12:50:33','2025-01-15 12:50:33',NULL,NULL,NULL,NULL,NULL, 13),

	('primera clase',  0, 4, '2025-01-15 12:50:34','2025-01-15 12:50:34',NULL,NULL,NULL,NULL,NULL, 14), -- retirada: sin primera clase operativa
	('ejecutivo',      6, 4, '2025-01-15 12:50:35','2025-01-15 12:50:35',NULL,NULL,NULL,NULL,NULL, 14),
	('economica',     32, 8, '2025-01-15 12:50:36','2025-01-15 12:50:36',NULL,NULL,NULL,NULL,NULL, 14),

	('primera clase',  4, 4, '2025-01-15 12:50:37','2025-01-15 12:50:37',NULL,NULL,NULL,NULL,NULL, 15),
	('ejecutivo',      8, 4, '2025-01-15 12:50:38','2025-01-15 12:50:38',NULL,NULL,NULL,NULL,NULL, 15),
	('economica',     40, 8, '2025-01-15 12:50:39','2025-01-15 12:50:39',NULL,NULL,NULL,NULL,NULL, 15),

	-- =========================
	-- Embraer (16..18)
	-- =========================
	('ejecutivo',   2, 4, '2025-01-15 12:50:40','2025-01-15 12:50:40',NULL,NULL,NULL,NULL,NULL, 16),
	('economica',  20, 4, '2025-01-15 12:50:41','2025-01-15 12:50:41',NULL,NULL,NULL,NULL,NULL, 16),

	('ejecutivo',   2, 4, '2025-01-15 12:50:42','2025-01-15 12:50:42',NULL,NULL,NULL,NULL,NULL, 17),
	('economica',  22, 4, '2025-01-15 12:50:43','2025-01-15 12:50:43',NULL,NULL,NULL,NULL,NULL, 17),

	('ejecutivo',   3, 4, '2025-01-15 12:50:44','2025-01-15 12:50:44',NULL,NULL,NULL,NULL,NULL, 18),
	('economica',  24, 4, '2025-01-15 12:50:45','2025-01-15 12:50:45',NULL,NULL,NULL,NULL,NULL, 18),

	-- =========================
	-- ATR (19..20)
	-- =========================
	('economica', 18, 4, '2025-01-15 12:50:46','2025-01-15 12:50:46',NULL,NULL,NULL,NULL,NULL, 19),
	('economica', 18, 4, '2025-01-15 12:50:47','2025-01-15 12:50:47',NULL,NULL,NULL,NULL,NULL, 20),

	-- =========================
	-- CRJ (21..22)
	-- =========================
	('ejecutivo',   1, 4, '2025-01-15 12:50:48','2025-01-15 12:50:48',NULL,NULL,NULL,NULL,NULL, 21),
	('economica',  20, 4, '2025-01-15 12:50:49','2025-01-15 12:50:49',NULL,NULL,NULL,NULL,NULL, 21),

	('ejecutivo',   1, 4, '2025-01-15 12:50:50','2025-01-15 12:50:50',NULL,NULL,NULL,NULL,NULL, 22),
	('economica',  20, 4, '2025-01-15 12:50:51','2025-01-15 12:50:51',NULL,NULL,NULL,NULL,NULL, 22),

	-- =========================
	-- SpaceJet / regional (23..24)
	-- =========================
	('economica', 22, 4, '2025-01-15 12:50:52','2025-01-15 12:50:52',NULL,NULL,NULL,NULL,NULL, 23),
	('economica', 22, 4, '2025-01-15 12:50:53','2025-01-15 12:50:53',NULL,NULL,NULL,NULL,NULL, 24);

    
-- ======================================================================
-- INSERTS: Aerolinea.ruta
-- ======================================================================
INSERT INTO Aerolinea.ruta
(distancia_km, timepo_estimado, activo,
 creado_en, actualizado_en, eliminado_en,
 creado_por, actualizado_por, eliminado_por, eliminado_motivo,
 origen_aeropuerto, destino_aeropuerto, origen_destino)
VALUES
	-- EZE (1) con destinos frecuentes
	(7,     20, 1, '2025-01-15 12:10:00','2025-01-15 12:10:00',NULL, NULL,NULL,NULL,NULL, 1, 2,  NULL),  -- EZE → AEP
	(650,   80, 1, '2025-01-15 12:10:05','2025-01-15 12:10:05',NULL, NULL,NULL,NULL,NULL, 1, 3,  NULL),  -- EZE → COR
	(985,  120, 1, '2025-01-15 12:10:10','2025-01-15 12:10:10',NULL, NULL,NULL,NULL,NULL, 1, 4,  NULL),  -- EZE → MDZ
	(300,   60, 1, '2025-01-15 12:10:15','2025-01-15 12:10:15',NULL, NULL,NULL,NULL,NULL, 1, 5,  NULL),  -- EZE → ROS
	(220,   50, 1, '2025-01-15 12:10:20','2025-01-15 12:10:20',NULL, NULL,NULL,NULL,NULL, 1, 15, NULL),  -- EZE → MVD
	(1140, 140, 1, '2025-01-15 12:10:25','2025-01-15 12:10:25',NULL, NULL,NULL,NULL,NULL, 1, 12, NULL),  -- EZE → SCL
	(1670, 160, 1, '2025-01-15 12:10:30','2025-01-15 12:10:30',NULL, NULL,NULL,NULL,NULL, 1, 13, NULL),  -- EZE → GRU
	(1960, 180, 1, '2025-01-15 12:10:35','2025-01-15 12:10:35',NULL, NULL,NULL,NULL,NULL, 1, 14, NULL),  -- EZE → GIG
	(7080, 540, 1, '2025-01-15 12:10:40','2025-01-15 12:10:40',NULL, NULL,NULL,NULL,NULL, 1, 20, NULL),  -- EZE → MIA
	(10050,780,1, '2025-01-15 12:10:45','2025-01-15 12:10:45',NULL, NULL,NULL,NULL,NULL, 1, 19, NULL),  -- EZE → MAD

	-- AEP (2) conectando interior
	(280,   55, 1, '2025-01-15 12:10:50','2025-01-15 12:10:50',NULL, NULL,NULL,NULL,NULL, 2, 5,  NULL),  -- AEP → ROS
	(650,   80, 1, '2025-01-15 12:10:55','2025-01-15 12:10:55',NULL, NULL,NULL,NULL,NULL, 2, 3,  NULL),  -- AEP → COR

	-- COR (3) tramos regionales
	(470,   75, 1, '2025-01-15 12:11:00','2025-01-15 12:11:00',NULL, NULL,NULL,NULL,NULL, 3, 4,  NULL),  -- COR → MDZ
	(370,   60, 1, '2025-01-15 12:11:05','2025-01-15 12:11:05',NULL, NULL,NULL,NULL,NULL, 3, 5,  NULL),  -- COR → ROS
	(800,   95, 1, '2025-01-15 12:11:10','2025-01-15 12:11:10',NULL, NULL,NULL,NULL,NULL, 3, 9,  NULL),  -- COR → SLA

	-- MDZ (4)
	(370,   60, 1, '2025-01-15 12:11:15','2025-01-15 12:11:15',NULL, NULL,NULL,NULL,NULL, 4, 12, NULL),  -- MDZ → SCL

	-- ROS (5) hacia NOA
	(900,  110, 1, '2025-01-15 12:11:20','2025-01-15 12:11:20',NULL, NULL,NULL,NULL,NULL, 5, 10, NULL),  -- ROS → TUC

	-- Sur patagónico
	(500,   75, 1, '2025-01-15 12:11:25','2025-01-15 12:11:25',NULL, NULL,NULL,NULL,NULL, 6, 7,  NULL),  -- BHI (6) → NQN (7)
	(2100, 190, 1, '2025-01-15 12:11:30','2025-01-15 12:11:30',NULL, NULL,NULL,NULL,NULL, 7, 8,  NULL),  -- NQN (7) → USH (8)

	-- NOA
	(300,   55, 1, '2025-01-15 12:11:35','2025-01-15 12:11:35',NULL, NULL,NULL,NULL,NULL, 9, 10, NULL),  -- SLA (9) → TUC (10)

	-- Regionales AM Sur
	(950,  110, 1, '2025-01-15 12:11:40','2025-01-15 12:11:40',NULL, NULL,NULL,NULL,NULL, 11, 1,  NULL),  -- ASU (11) → EZE (1)
	(1100, 120, 1, '2025-01-15 12:11:45','2025-01-15 12:11:45',NULL, NULL,NULL,NULL,NULL, 11, 13, NULL),  -- ASU (11) → GRU (13)
	(2600, 240, 1, '2025-01-15 12:11:50','2025-01-15 12:11:50',NULL, NULL,NULL,NULL,NULL, 12, 13, NULL),  -- SCL (12) → GRU (13)

	-- Andina / Norte
	(1880, 180, 1, '2025-01-15 12:11:55','2025-01-15 12:11:55',NULL, NULL,NULL,NULL,NULL, 16, 17, NULL);  -- LIM (16) → BOG (17)

-- ======================================================================
-- INSERTS: Aerolinea.tarifa  
-- ======================================================================
INSERT INTO Aerolinea.tarifa
  (nombre, precio, impuesto, tasa_fija, tarifacol, vigencia_desde, vigencia_hasta, activo,
   creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivio, condiciones)
VALUES
  ('Primera clase',   450000.00, 21.00, 12000.00, 0.00, '2025-01-01', '2025-12-31', 1,
   '2025-01-15 12:20:00','2025-01-15 12:20:00', NULL, NULL, NULL, NULL, NULL,
   'Equipaje 2x32kg, cambios sin cargo, reembolso 100%, asiento preferente incluido.'),

  ('Ejecutivo',       280000.00, 21.00, 10000.00, 0.00, '2025-01-01', '2025-12-31', 1,
   '2025-01-15 12:20:10','2025-01-15 12:20:10', NULL, NULL, NULL, NULL, NULL,
   'Equipaje 2x23kg, un cambio sin penalidad, reembolso con 10% de cargo, prioridad de embarque.'),

  ('Economica plus',  180000.00, 21.00,  9000.00, 0.00, '2025-01-01', '2025-12-31', 1,
   '2025-01-15 12:20:20','2025-01-15 12:20:20', NULL, NULL, NULL, NULL, NULL,
   'Equipaje 1x23kg, selección de asiento estándar incluida, cambios con penalidad reducida.'),

  ('Economica',       120000.00, 21.00,  8000.00, 0.00, '2025-01-01', '2025-12-31', 1,
   '2025-01-15 12:20:30','2025-01-15 12:20:30', NULL, NULL, NULL, NULL, NULL,
   'Equipaje de mano + 1x15kg en bodega, sin reembolso, cambios con penalidad.');

-- ======================================================================
-- INSERTS: Aerolinea.promocion 
-- ======================================================================
INSERT INTO Aerolinea.promocion
(nombre, descripcion, valor, activo, tarifa_idtarifa,
 creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo)
VALUES
	-- 1
	('PC-ANTICIPADA-30', 'Compra anticipada ≥60 días', 30, 1, 1,
	 '2025-01-15 12:30:00','2025-01-15 12:30:00', NULL, NULL, NULL, NULL, NULL),
	-- 2
	('PC-WEEKEND-15', 'Fin de semana: vie-dom', 15, 1, 1,
	 '2025-01-15 12:30:05','2025-01-15 12:30:05', NULL, NULL, NULL, NULL, NULL),
	-- 3
	('PC-FIDELIDAD-10', 'Clientes frecuentes nivel Oro', 10, 1, 1,
	 '2025-01-15 12:30:10','2025-01-15 12:30:10', NULL, NULL, NULL, NULL, NULL),
	-- 4
	('EJ-EMPRESAS-20', 'Convenio corporativo empresas', 20, 1, 2,
	 '2025-01-15 12:30:20','2025-01-15 12:30:20', NULL, NULL, NULL, NULL, NULL),
	-- 5
	('EJ-ANTICIPADA-25', 'Compra anticipada ≥45 días', 25, 1, 2,
	 '2025-01-15 12:30:25','2025-01-15 12:30:25', NULL, NULL, NULL, NULL, NULL),
	-- 6
	('EJ-WEEKDAY-12', 'Viajes mar-jue', 12, 1, 2,
	 '2025-01-15 12:30:30','2025-01-15 12:30:30', NULL, NULL, NULL, NULL, NULL),
	-- 7
	('EP-ANTICIPADA-20', 'Compra anticipada ≥30 días', 20, 1, 3,
	 '2025-01-15 12:30:40','2025-01-15 12:30:40', NULL, NULL, NULL, NULL, NULL),
	-- 8
	('EP-RETORNO-10', 'Descuento en tramo de retorno', 10, 1, 3,
	 '2025-01-15 12:30:45','2025-01-15 12:30:45', NULL, NULL, NULL, NULL, NULL),
	-- 9
	('EP-FAMILIA-15', 'Grupo familiar (≥3 pax)', 15, 1, 3,
	 '2025-01-15 12:30:50','2025-01-15 12:30:50', NULL, NULL, NULL, NULL, NULL),
	-- 10
	('EP-MEDIOS-5', 'Pago con débito seleccionado', 5, 1, 3,
	 '2025-01-15 12:30:55','2025-01-15 12:30:55', NULL, NULL, NULL, NULL, NULL),
	-- 11
	('EP-MIDWEEK-8', 'Salidas martes/miércoles', 8, 1, 3,
	 '2025-01-15 12:31:00','2025-01-15 12:31:00', NULL, NULL, NULL, NULL, NULL),
	-- 12
	('EC-ANTICIPADA-15', 'Compra anticipada ≥21 días', 15, 1, 3,
	 '2025-01-15 12:31:05','2025-01-15 12:31:05', NULL, NULL, NULL, NULL, NULL),
	-- 13
	('EC-ESTUDIANTES-12', 'Beneficio estudiantes', 12, 1, 3,
	 '2025-01-15 12:31:10','2025-01-15 12:31:10', NULL, NULL, NULL, NULL, NULL),
	-- 14
	('EC-JUBILADOS-12', 'Beneficio jubilados', 12, 1, 3,
	 '2025-01-15 12:31:12','2025-01-15 12:31:12', NULL, NULL, NULL, NULL, NULL),
	-- 15
	('EC-BANCO-10', 'Banco aliado (TC seleccionadas)', 10, 1, 3,
	 '2025-01-15 12:31:21','2025-01-15 12:31:21', NULL, NULL, NULL, NULL, NULL),
	-- 16
	('GENERAL-PRIMAVERA', 'Campaña de primavera', 12, 1, NULL,
	 '2025-01-15 12:31:30','2025-01-15 12:31:30', NULL, NULL, NULL, NULL, NULL),
	-- 17
	('GENERAL-INVIERNO', 'Campaña de invierno', 10, 1, NULL,
	 '2025-01-15 12:31:45','2025-01-15 12:31:45', NULL, NULL, NULL, NULL, NULL),
	-- 18
	('GENERAL-ANIVERS', 'Aniversario de la aerolínea', 15, 1, NULL,
	 '2025-01-15 12:31:50','2025-01-15 12:31:50', NULL, NULL, NULL, NULL, NULL),
	-- 19
	('GENERAL-WELCOME', 'Bienvenida nuevos usuarios', 8, 1, NULL,
	 '2025-01-15 12:31:55','2025-01-15 12:31:55', NULL, NULL, NULL, NULL, NULL),
	-- 20
	('GENERAL-APP-ONLY', 'Compra exclusiva app móvil', 7, 1, NULL,
	 '2025-01-15 12:32:00','2025-01-15 12:32:00', NULL, NULL, NULL, NULL, NULL),
	-- 21
	('PC-2X1-ACOMP', 'Acompañante al 50% (cupos limitados)', 50, 1, 1,
	 '2025-01-15 12:31:00','2025-01-15 12:31:00', NULL, NULL, NULL, NULL, NULL),
	-- 22
	('EC-COMBO-15', 'Ida y vuelta mismo día', 15, 0, NULL,
	 '2025-01-15 12:31:10','2025-01-15 12:31:10', NULL, NULL, NULL, NULL, 'Campaña cerrada'),
	-- 23
	('GENERAL-CYBER-25', 'Cyber sale en todas las clases', 25, 0, NULL,
	 '2025-01-15 12:31:20','2025-01-15 12:31:20', NULL, NULL, NULL, NULL, 'Condición desactivada'),
	-- 24
	('EP-ULTIMO-MINUTO', 'Venta última hora (cupos)', 18, 0, 3,
	 '2025-01-15 12:31:05','2025-01-15 12:31:05', NULL, NULL, NULL, NULL, 'Evento cerrado'),
	-- 25
	('UPGRADE-PRIMERA-15', 'Upgrade a cabina ejecutiva', 15, 0, NULL,
	 '2025-01-15 12:30:35','2025-01-15 12:30:35', NULL, NULL, NULL, NULL, 'Stock agotado');

-- ================================
-- INSERTS en Aerolinea.reserva
-- ================================
INSERT INTO Aerolinea.reserva
(estado, codigo_reserva, usuario_idusuario, tarifa_idtarifa, promocion_idpromocion,
 moneda, total_bruto, total_neto,
 creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo)
SELECT
  d.estado,
  d.codigo,
  pas.idusuario,
  t.idtarifa,
  pr.idpromocion,
  'ARS',
  ROUND(t.precio + t.tasa_fija + (t.precio * t.impuesto/100), 2) AS total_bruto,
  ROUND(
    (t.precio + t.tasa_fija + (t.precio * t.impuesto/100)) * (1 - pr.valor/100),
    2
  ) AS total_neto,
  NOW(), NOW(), NULL, NULL, NULL, NULL, NULL
FROM (
  SELECT  1 rn, 'A1B2C3' codigo, 'NUEVA'      estado, 'Economica plus' tarifa, 'EP-ANTICIPADA-20' promo UNION ALL
  SELECT  2,  'D4E5F6',   'CONFIRMADA',        'Economica plus',       'EP-RETORNO-10'           UNION ALL
  SELECT  3,  'G7H8J9',   'CANCELADA',         'Economica plus',       'EP-FAMILIA-15'           UNION ALL
  SELECT  4,  'K1L2M3',   'CHECKIN',           'Economica plus',       'EP-MEDIOS-5'             UNION ALL
  SELECT  5,  'N4P5Q6',   'VOLADA',            'Economica plus',       'EP-MIDWEEK-8'            UNION ALL
  SELECT  6,  'R7S8T9',   'NUEVA',             'Ejecutivo',            'EJ-EMPRESAS-20'          UNION ALL
  SELECT  7,  'U1V2W3',   'CONFIRMADA',        'Ejecutivo',            'EJ-ANTICIPADA-25'        UNION ALL
  SELECT  8,  'X4Y5Z6',   'CHECKIN',           'Ejecutivo',            'EJ-WEEKDAY-12'           UNION ALL
  SELECT  9,  'A7C9E1',   'VOLADA',            'Ejecutivo',            'EJ-EMPRESAS-20'          UNION ALL
  SELECT 10,  'B2D4F6',   'NUEVA',             'Primera clase',        'PC-2X1-ACOMP'            UNION ALL
  SELECT 11,  'G3I5K7',   'CONFIRMADA',        'Primera clase',        'PC-2X1-ACOMP'            UNION ALL
  SELECT 12,  'L8M0N2',   'CHECKIN',           'Economica plus',       'EP-RETORNO-10'           UNION ALL
  SELECT 13,  'P3Q5R7',   'VOLADA',            'Ejecutivo',            'EJ-ANTICIPADA-25'        UNION ALL
  SELECT 14,  'S6T8U0',   'NUEVA',             'Economica plus',       'EP-FAMILIA-15'           UNION ALL
  SELECT 15,  'V9W1X3',   'CONFIRMADA',        'Ejecutivo',            'EJ-WEEKDAY-12'           UNION ALL
  SELECT 16,  'Y2Z4A6',   'CHECKIN',           'Primera clase',        'PC-2X1-ACOMP'            UNION ALL
  SELECT 17,  'B5C7D9',   'VOLADA',            'Economica plus',       'EP-MIDWEEK-8'            UNION ALL
  SELECT 18,  'E8F0G2',   'NUEVA',             'Economica plus',       'EP-RETORNO-10'           UNION ALL
  SELECT 19,  'H1J3L5',   'CONFIRMADA',        'Ejecutivo',            'EJ-EMPRESAS-20'          UNION ALL
  SELECT 20,  'M7N9P1',   'VOLADA',            'Economica plus',       'EP-ANTICIPADA-20'
) AS d
LEFT JOIN Aerolinea.reserva r
  ON r.codigo_reserva = d.codigo
JOIN Aerolinea.tarifa t
  ON t.nombre = d.tarifa
JOIN Aerolinea.promocion pr
  ON pr.nombre = d.promo
 AND pr.tarifa_idtarifa = t.idtarifa

CROSS JOIN (
  SELECT COUNT(*) AS cnt
  FROM Aerolinea.usuario u
  JOIN Aerolinea.rol r ON r.idrol = u.rol_idrol AND r.nombre = 'pasajero'
) c

JOIN (
  SELECT u2.idusuario,
         (@i := @i + 1) AS rn
  FROM (SELECT @i := 0) vars
  JOIN (
    SELECT u.idusuario
    FROM Aerolinea.usuario u
    JOIN Aerolinea.rol r ON r.idrol = u.rol_idrol AND r.nombre = 'pasajero'
    ORDER BY u.idusuario
  ) u2
) pas
  ON pas.rn = MOD(d.rn - 1, c.cnt) + 1
WHERE r.idreserva IS NULL;

-- ===========================================
-- Inserts: Aerolinea.reserva_persona
-- ===========================================
INSERT INTO Aerolinea.reserva_persona
  (reserva_idreserva, persona_idpersona, tipo, documentacion_iddocumentacion)
SELECT
  r.idreserva,
  u.persona_idpersona,
  'ADULTO',
  (
    SELECT d.iddocumentacion
    FROM Aerolinea.documentacion d
    WHERE d.persona_idpersona = u.persona_idpersona
    ORDER BY
      CASE WHEN d.estado = 'VALIDO' THEN 1 ELSE 0 END DESC,
      d.fecha_vencimiento DESC,
      d.iddocumentacion DESC
    LIMIT 1
  ) AS doc_elegida
FROM Aerolinea.reserva r
JOIN Aerolinea.usuario u ON u.idusuario = r.usuario_idusuario
JOIN Aerolinea.rol ro ON ro.idrol = u.rol_idrol AND ro.nombre = 'pasajero'
WHERE r.codigo_reserva IN (
  'A1B2C3','D4E5F6','G7H8J9','K1L2M3','N4P5Q6',
  'R7S8T9','U1V2W3','X4Y5Z6','A7C9E1','B2D4F6',
  'G3I5K7','L8M0N2','P3Q5R7','S6T8U0','V9W1X3',
  'Y2Z4A6','B5C7D9','E8F0G2','H1J3L5','M7N9P1'
)
AND NOT EXISTS (
  SELECT 1
  FROM Aerolinea.reserva_persona rp
  WHERE rp.reserva_idreserva = r.idreserva
    AND rp.persona_idpersona = u.persona_idpersona
);

-- ================================
-- INSERTS: Aerolinea.tripulacion
-- ================================
INSERT INTO Aerolinea.tripulacion
(estado, nota, creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo)
VALUES
	('PUBLICADA','Base EZE — habilitada A320','2025-01-22 09:00:00','2025-01-22 09:00:00',NULL,NULL,NULL,NULL,NULL),
	('BORRADOR','En proceso de conformación','2025-01-22 09:05:00','2025-01-22 09:05:00',NULL,NULL,NULL,NULL,NULL),
	('PUBLICADA','Turno nocturno','2025-01-22 09:10:00','2025-01-22 09:10:00',NULL,NULL,NULL,NULL,NULL),
	('PUBLICADA','Internacional — ETOPS','2025-01-22 09:15:00','2025-01-22 09:15:00',NULL,NULL,NULL,NULL,NULL),
	('CERRADA','Reasignada por rotación','2025-01-22 09:20:00','2025-02-02 08:00:00','2025-02-15 12:00:00',NULL,NULL,NULL,'Cierre de ciclo'),
	('PUBLICADA','Base AEP — domésticos','2025-01-22 09:25:00','2025-01-22 09:25:00',NULL,NULL,NULL,NULL,NULL),
	('BORRADOR','Pendiente chequeo médico','2025-01-22 09:30:00','2025-01-22 09:30:00',NULL,NULL,NULL,NULL,NULL),
	('PUBLICADA','Habilitada B738','2025-01-22 09:35:00','2025-01-22 09:35:00',NULL,NULL,NULL,NULL,NULL),
	('PUBLICADA','Habilitada E190','2025-01-22 09:40:00','2025-01-22 09:40:00',NULL,NULL,NULL,NULL,NULL),
	('CERRADA','Cerrada por fusión de equipos','2025-01-22 09:45:00','2025-02-20 10:00:00','2025-03-01 09:30:00',NULL,NULL,NULL,'Fusionada con otra tripulación'),
	('PUBLICADA','Standby — cobertura rápida','2025-01-22 09:50:00','2025-01-22 09:50:00',NULL,NULL,NULL,NULL,NULL),
	('PUBLICADA','Charters y especiales','2025-01-22 09:55:00','2025-01-22 09:55:00',NULL,NULL,NULL,NULL,NULL),
	('BORRADOR','Nuevo ingreso de FO y TCP','2025-01-22 10:00:00','2025-01-22 10:00:00',NULL,NULL,NULL,NULL,NULL),
	('PUBLICADA','Doméstico norte','2025-01-22 10:05:00','2025-01-22 10:05:00',NULL,NULL,NULL,NULL,NULL),
	('PUBLICADA','Doméstico sur','2025-01-22 10:10:00','2025-01-22 10:10:00',NULL,NULL,NULL,NULL,NULL),
	('PUBLICADA','Habilitada A321','2025-01-22 10:15:00','2025-01-22 10:15:00',NULL,NULL,NULL,NULL,NULL),
	('CERRADA','Cierre por rotación estacional','2025-01-22 10:20:00','2025-03-10 08:30:00','2025-03-15 18:00:00',NULL,NULL,NULL,'Fin de temporada'),
	('PUBLICADA','Operación regional','2025-01-22 10:25:00','2025-01-22 10:25:00',NULL,NULL,NULL,NULL,NULL),
	('BORRADOR','Revisión de roles y rangos','2025-01-22 10:30:00','2025-01-22 10:30:00',NULL,NULL,NULL,NULL,NULL),
	('PUBLICADA','Refuerzo fines de semana','2025-01-22 10:35:00','2025-01-22 10:35:00',NULL,NULL,NULL,NULL,NULL);
    
-- ======================================================================
-- INSERTS: Aerolinea.rango_tripulacion (20 filas)
-- ======================================================================
INSERT INTO Aerolinea.rango_tripulacion
  (codigo, descripcion, activo, creado_por, actualizado_por, eliminado_por, eliminado_motivo, creado_en, actualizado_en, eliminado_en)
VALUES
  ('COMANDANTE',                 'Piloto al mando (PIC)',                               1, NULL, NULL, NULL, NULL, '2025-01-20 09:00:00', '2025-01-20 09:00:00', NULL),
  ('COPILOTO',                   'Primer oficial (SIC)',                                1, NULL, NULL, NULL, NULL, '2025-01-20 09:01:00', '2025-01-20 09:01:00', NULL),
  ('JEFE_DE_CABINA',             'Líder de cabina (Purser)',                            1, NULL, NULL, NULL, NULL, '2025-01-20 09:02:00', '2025-01-20 09:02:00', NULL),
  ('TCP_SENIOR',                 'Tripulante de cabina senior',                         1, NULL, NULL, NULL, NULL, '2025-01-20 09:03:00', '2025-01-20 09:03:00', NULL),
  ('TCP',                        'Tripulante de cabina',                                1, NULL, NULL, NULL, NULL, '2025-01-20 09:04:00', '2025-01-20 09:04:00', NULL),
  ('INSTRUCTOR_VUELO',           'Instructor habilitado de vuelo',                      1, NULL, NULL, NULL, NULL, '2025-01-20 09:05:00', '2025-01-20 09:05:00', NULL),
  ('EXAMINADOR_VUELO',           'Examinador (check airman)',                           1, NULL, NULL, NULL, NULL, '2025-01-20 09:06:00', '2025-01-20 09:06:00', NULL),
  ('INGENIERO_DE_VUELO',         'Ingeniero de vuelo (si aplica flota)',                1, NULL, NULL, NULL, NULL, '2025-01-20 09:07:00', '2025-01-20 09:07:00', NULL),
  ('OBSERVADOR_SEGURIDAD',       'Observador de seguridad operacional',                 1, NULL, NULL, NULL, NULL, '2025-01-20 09:08:00', '2025-01-20 09:08:00', NULL),
  ('MEDICO_A_BORDO',             'Profesional médico a bordo (vuelos especiales)',      1, NULL, NULL, NULL, NULL, '2025-01-20 09:09:00', '2025-01-20 09:09:00', NULL),
  ('TECNICO_CABINA',             'Técnico de cabina en servicio',                       1, NULL, NULL, NULL, NULL, '2025-01-20 09:10:00', '2025-01-20 09:10:00', NULL),
  ('SUPERVISOR_TRAINING',        'Supervisor de entrenamiento de tripulaciones',        1, NULL, NULL, NULL, NULL, '2025-01-20 09:11:00', '2025-01-20 09:11:00', NULL),
  ('COORDINADOR_TRIPULACION',    'Coordinador de asignación de tripulaciones',          1, NULL, NULL, NULL, NULL, '2025-01-20 09:12:00', '2025-01-20 09:12:00', NULL),
  ('PRACTICANTE_CABINA',         'Practicante/trainee de cabina',                       1, NULL, NULL, NULL, NULL, '2025-01-20 09:13:00', '2025-01-20 09:13:00', NULL),
  ('PRACTICANTE_CABINA_SENIOR',  'Practicante senior de cabina',                        1, NULL, NULL, NULL, NULL, '2025-01-20 09:14:00', '2025-01-20 09:14:00', NULL),
  ('PILOTO_RESERVA',             'Piloto en reserva/standby',                           1, NULL, NULL, NULL, NULL, '2025-01-20 09:15:00', '2025-01-20 09:15:00', NULL),
  ('TCP_RESERVA',                'Tripulante de cabina en reserva',                     1, NULL, NULL, NULL, NULL, '2025-01-20 09:16:00', '2025-01-20 09:16:00', NULL),
  ('JEFE_DE_CABINA_RESERVA',     'Jefe de cabina en reserva',                           1, NULL, NULL, NULL, NULL, '2025-01-20 09:17:00', '2025-01-20 09:17:00', NULL),
  ('CAPITAN_INSTRUCTOR',         'Comandante instructor de línea',                      1, NULL, NULL, NULL, NULL, '2025-01-20 09:18:00', '2025-01-20 09:18:00', NULL),
  ('COPILOTO_INSTRUCTOR',        'Primer oficial instructor',                           1, NULL, NULL, NULL, NULL, '2025-01-20 09:19:00', '2025-01-20 09:19:00', NULL);

-- ======================================================================
-- Inserts: Aerolinea.tripulacion_miembro
-- ======================================================================

INSERT INTO Aerolinea.tripulacion_miembro
(tripulacion_idtripulacion, rango_tripulacion_idrango_tripulacion, usuario_idusuario)
VALUES
-- Tripulación 1 (vuelo internacional)
(1, 1, 21),  -- Comandante: supervisor_operaciones
(1, 2, 22),  -- Copiloto: analista_tarifas
(1, 3, 23),  -- Jefe de cabina: agente_checkin
(1, 5, 24),  -- TCP 1: agente_embarque
(1, 5, 25),  -- TCP 2: coordinador_rampa
(1, 5, 26),  -- TCP 3: gestor_documentacion

-- Tripulación 2 (vuelo regional)
(2, 1, 27),  -- Comandante: analista_capacidad
(2, 2, 28),  -- Copiloto: reportes_gerenciales
(2, 3, 29),  -- Jefe de cabina: control_ingresos
(2, 5, 23),  -- TCP 1: agente_checkin
(2, 5, 24),  -- TCP 2: agente_embarque
(2, 5, 25),  -- TCP 3: coordinador_rampa

-- Tripulación 3 (vuelo charter)
(3, 1, 26),  -- Comandante: gestor_documentacion
(3, 2, 27),  -- Copiloto: analista_capacidad
(3, 3, 28),  -- Jefe de cabina: reportes_gerenciales
(3, 5, 24),  -- TCP 1: agente_embarque
(3, 5, 25),  -- TCP 2: coordinador_rampa
(3, 5, 29);  -- TCP 3: control_ingresos


-- ======================================================================
-- Inserts: Aerolinea.vuelo
-- ======================================================================
INSERT INTO Aerolinea.vuelo
  (codigo_publico, fecha_salida_prog, fecha_llegada_prog, fecha_salida_real, fecha_llegada_real, estado, creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo, puerta_idpuerta, terminal_idterminal, aeropuerto_idaeropuerto, ruta_idruta, aeronave_idaeronave, tripulacion_idtripulacion)
VALUES
('AR100','2025-02-01 07:40:00','2025-02-01 08:05:00', NULL,               NULL,               'PROGRAMADO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1,  1,  1,  1,  1,  1),
('AR101','2025-02-03 09:20:00','2025-02-03 10:35:00', NULL,               NULL,               'DEMORADO',   NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2,  2,  1,  2,  2,  2),
('AR102','2025-02-05 18:10:00','2025-02-05 20:10:00', NULL,               NULL,               'ABORDANDO',  NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1,  3,  1,  3,  3,  3),
('AR103','2025-02-07 06:00:00','2025-02-07 07:05:00', '2025-02-07 06:18:00', NULL,            'EN_AIRE',    NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2,  1,  1,  4,  4,  4),
('AR104','2025-02-08 11:30:00','2025-02-08 12:20:00', '2025-02-08 11:45:00','2025-02-08 12:27:00','ATERRIZADO',NULL,NULL,NULL,NULL,NULL,NULL,NULL, 1,  2,  1,  5,  5,  5),
('AR105','2025-02-10 14:40:00','2025-02-10 17:05:00', NULL,               NULL,               'PROGRAMADO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2,  3,  1,  6,  6,  6),
('AR106','2025-02-12 08:15:00','2025-02-12 10:55:00', NULL,               NULL,               'CANCELADO',  NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1,  1,  1,  7,  7,  7),
('AR107','2025-02-13 21:00:00','2025-02-13 23:45:00', NULL,               NULL,               'DEMORADO',   NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2,  2,  1,  8,  8,  8),
('AR108','2025-02-15 23:55:00','2025-02-16 08:30:00', '2025-02-16 00:20:00','2025-02-16 08:50:00','ATERRIZADO',NULL,NULL,NULL,NULL,NULL,NULL,NULL, 1,  3,  1,  9,  9,  9),
('AR109','2025-02-17 13:20:00','2025-02-18 02:20:00', '2025-02-17 13:45:00', NULL,            'EN_AIRE',    NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2,  1,  1, 10, 10, 10),
('AR110','2025-02-19 07:50:00','2025-02-19 08:45:00', NULL,               NULL,               'PROGRAMADO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3,  4,  2, 11, 11, 11),
('AR111','2025-02-20 17:25:00','2025-02-20 18:35:00', NULL,               NULL,               'PROGRAMADO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4,  5,  2, 12, 12, 12),
('AR112','2025-02-22 09:10:00','2025-02-22 10:20:00', '2025-02-22 09:25:00','2025-02-22 10:28:00','ATERRIZADO',NULL,NULL,NULL,NULL,NULL,NULL,NULL, 5, 19,  3, 13, 13, 13),
('AR113','2025-02-23 15:00:00','2025-02-23 16:00:00', NULL,               NULL,               'CANCELADO',  NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 19,  3, 14, 14, 14),
('AR114','2025-02-24 19:30:00','2025-02-24 21:05:00', NULL,               NULL,               'DEMORADO',   NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 19,  3, 15, 15, 15),
('AR115','2025-02-26 06:40:00','2025-02-26 07:40:00', NULL,               NULL,               'PROGRAMADO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 20,  4, 16, 16, 16),
('AR116','2025-02-27 11:15:00','2025-02-27 13:05:00', '2025-02-27 11:22:00','2025-02-27 13:01:00','ATERRIZADO',NULL,NULL,NULL,NULL,NULL,NULL,NULL, 9, 21,  5, 17, 17, 17),
('AR117','2025-03-01 20:10:00','2025-03-01 23:15:00', NULL,               NULL,               'PROGRAMADO', NULL, NULL, NULL, NULL, NULL, NULL, NULL,14, 22,  7, 19, 18, 18),
('AR118','2025-03-03 05:50:00','2025-03-03 06:45:00', NULL,               NULL,               'ABORDANDO',  NULL, NULL, NULL, NULL, NULL, NULL, NULL,17, 24,  9, 20, 19, 19),
('AR119','2025-03-05 12:00:00','2025-03-05 16:00:00', NULL,               NULL,               'PROGRAMADO', NULL, NULL, NULL, NULL, NULL, NULL, NULL,22,  7, 12, 23, 20, 20);

-- ======================================================================
-- INSERTS: Aerolinea.asiento
-- ======================================================================
INSERT INTO Aerolinea.asiento
(cabina, fila, columna, codigo_asiento, asiento_bulkhead, asiento_en_salida,
 creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por,
 eliminado_motivo, nota, aeronave_idaeronave)
VALUES
-- Primera clase (filas 1-2, A-D)
	('primera clase', 1, 'A', '1A', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 2),
	('primera clase', 1, 'B', '1B', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio',   2),
	('primera clase', 1, 'C', '1C', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio',   2),
	('primera clase', 1, 'D', '1D', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 2),

	('primera clase', 2, 'A', '2A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 2),
	('primera clase', 2, 'B', '2B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio',   2),
	('primera clase', 2, 'C', '2C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio',   2),
	('primera clase', 2, 'D', '2D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 2),

	-- Ejecutiva (filas 3-4, A-D)
	('ejecutivo', 3, 'A', '3A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 2),
	('ejecutivo', 3, 'B', '3B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio',   2),
	('ejecutivo', 3, 'C', '3C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio',   2),
	('ejecutivo', 3, 'D', '3D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 2),

	('ejecutivo', 4, 'A', '4A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 2),
	('ejecutivo', 4, 'B', '4B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio',   2),
	('ejecutivo', 4, 'C', '4C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio',   2),
	('ejecutivo', 4, 'D', '4D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 2),

	-- Económica (fila 5, A-D) — salida de emergencia marcada
	('economica', 5, 'A', '5A', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 2),
	('economica', 5, 'B', '5B', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio',   2),
	('economica', 5, 'C', '5C', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio',   2),
	('economica', 5, 'D', '5D', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 2),
    -- se repite para los otros aviones
	('primera clase', 1, 'A', '1A', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 1),
	('primera clase', 1, 'B', '1B', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 1),
	('primera clase', 1, 'C', '1C', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 1),
	('primera clase', 1, 'D', '1D', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 1),
	('primera clase', 2, 'A', '2A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 1),
	('primera clase', 2, 'B', '2B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 1),
	('primera clase', 2, 'C', '2C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 1),
	('primera clase', 2, 'D', '2D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 1),
	('ejecutivo', 3, 'A', '3A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 1),
	('ejecutivo', 3, 'B', '3B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 1),
	('ejecutivo', 3, 'C', '3C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 1),
	('ejecutivo', 3, 'D', '3D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 1),
	('ejecutivo', 4, 'A', '4A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 1),
	('ejecutivo', 4, 'B', '4B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 1),
	('ejecutivo', 4, 'C', '4C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 1),
	('ejecutivo', 4, 'D', '4D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 1),
	('economica', 5, 'A', '5A', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 1),
	('economica', 5, 'B', '5B', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 1),
	('economica', 5, 'C', '5C', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 1),
	('economica', 5, 'D', '5D', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 1),
	('primera clase', 1, 'A', '1A', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 3),
	('primera clase', 1, 'B', '1B', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 3),
	('primera clase', 1, 'C', '1C', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 3),
	('primera clase', 1, 'D', '1D', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 3),
	('primera clase', 2, 'A', '2A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 3),
	('primera clase', 2, 'B', '2B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 3),
	('primera clase', 2, 'C', '2C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 3),
	('primera clase', 2, 'D', '2D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 3),
	('ejecutivo', 3, 'A', '3A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 3),
	('ejecutivo', 3, 'B', '3B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 3),
	('ejecutivo', 3, 'C', '3C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 3),
	('ejecutivo', 3, 'D', '3D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 3),
	('ejecutivo', 4, 'A', '4A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 3),
	('ejecutivo', 4, 'B', '4B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 3),
	('ejecutivo', 4, 'C', '4C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 3),
	('ejecutivo', 4, 'D', '4D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 3),
	('economica', 5, 'A', '5A', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 3),
	('economica', 5, 'B', '5B', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 3),
	('economica', 5, 'C', '5C', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 3),
	('economica', 5, 'D', '5D', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 3),
	('primera clase', 1, 'A', '1A', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 4),
	('primera clase', 1, 'B', '1B', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 4),
	('primera clase', 1, 'C', '1C', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 4),
	('primera clase', 1, 'D', '1D', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 4),
	('primera clase', 2, 'A', '2A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 4),
	('primera clase', 2, 'B', '2B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 4),
	('primera clase', 2, 'C', '2C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 4),
	('primera clase', 2, 'D', '2D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 4),
	('ejecutivo', 3, 'A', '3A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 4),
	('ejecutivo', 3, 'B', '3B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 4),
	('ejecutivo', 3, 'C', '3C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 4),
	('ejecutivo', 3, 'D', '3D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 4),
	('ejecutivo', 4, 'A', '4A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 4),
	('ejecutivo', 4, 'B', '4B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 4),
	('ejecutivo', 4, 'C', '4C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 4),
	('ejecutivo', 4, 'D', '4D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 4),
	('economica', 5, 'A', '5A', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 4),
	('economica', 5, 'B', '5B', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 4),
	('economica', 5, 'C', '5C', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 4),
	('economica', 5, 'D', '5D', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 4),
	('primera clase', 1, 'A', '1A', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 5),
	('primera clase', 1, 'B', '1B', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 5),
	('primera clase', 1, 'C', '1C', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 5),
	('primera clase', 1, 'D', '1D', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 5),
	('primera clase', 2, 'A', '2A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 5),
	('primera clase', 2, 'B', '2B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 5),
	('primera clase', 2, 'C', '2C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 5),
	('primera clase', 2, 'D', '2D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 5),
	('ejecutivo', 3, 'A', '3A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 5),
	('ejecutivo', 3, 'B', '3B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 5),
	('ejecutivo', 3, 'C', '3C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 5),
	('ejecutivo', 3, 'D', '3D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 5),
	('ejecutivo', 4, 'A', '4A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 5),
	('ejecutivo', 4, 'B', '4B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 5),
	('ejecutivo', 4, 'C', '4C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 5),
	('ejecutivo', 4, 'D', '4D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 5),
	('economica', 5, 'A', '5A', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 5),
	('economica', 5, 'B', '5B', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 5),
	('economica', 5, 'C', '5C', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 5),
	('economica', 5, 'D', '5D', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 5),
	('primera clase', 1, 'A', '1A', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 6),
	('primera clase', 1, 'B', '1B', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 6),
	('primera clase', 1, 'C', '1C', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 6),
	('primera clase', 1, 'D', '1D', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 6),
	('primera clase', 2, 'A', '2A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 6),
	('primera clase', 2, 'B', '2B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 6),
	('primera clase', 2, 'C', '2C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 6),
	('primera clase', 2, 'D', '2D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 6),
	('ejecutivo', 3, 'A', '3A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 6),
	('ejecutivo', 3, 'B', '3B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 6),
	('ejecutivo', 3, 'C', '3C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 6),
	('ejecutivo', 3, 'D', '3D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 6),
	('ejecutivo', 4, 'A', '4A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 6),
	('ejecutivo', 4, 'B', '4B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 6),
	('ejecutivo', 4, 'C', '4C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 6),
	('ejecutivo', 4, 'D', '4D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 6),
	('economica', 5, 'A', '5A', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 6),
	('economica', 5, 'B', '5B', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 6),
	('economica', 5, 'C', '5C', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 6),
	('economica', 5, 'D', '5D', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 6),
	('primera clase', 1, 'A', '1A', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 7),
	('primera clase', 1, 'B', '1B', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 7),
	('primera clase', 1, 'C', '1C', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 7),
	('primera clase', 1, 'D', '1D', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 7),
	('primera clase', 2, 'A', '2A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 7),
	('primera clase', 2, 'B', '2B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 7),
	('primera clase', 2, 'C', '2C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 7),
	('primera clase', 2, 'D', '2D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 7),
	('ejecutivo', 3, 'A', '3A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 7),
	('ejecutivo', 3, 'B', '3B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 7),
	('ejecutivo', 3, 'C', '3C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 7),
	('ejecutivo', 3, 'D', '3D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 7),
	('ejecutivo', 4, 'A', '4A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 7),
	('ejecutivo', 4, 'B', '4B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 7),
	('ejecutivo', 4, 'C', '4C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 7),
	('ejecutivo', 4, 'D', '4D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 7),
	('economica', 5, 'A', '5A', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 7),
	('economica', 5, 'B', '5B', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 7),
	('economica', 5, 'C', '5C', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 7),
	('economica', 5, 'D', '5D', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 7),
	('primera clase', 1, 'A', '1A', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 8),
	('primera clase', 1, 'B', '1B', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 8),
	('primera clase', 1, 'C', '1C', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 8),
	('primera clase', 1, 'D', '1D', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 8),
	('primera clase', 2, 'A', '2A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 8),
	('primera clase', 2, 'B', '2B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 8),
	('primera clase', 2, 'C', '2C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 8),
	('primera clase', 2, 'D', '2D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 8),
	('ejecutivo', 3, 'A', '3A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 8),
	('ejecutivo', 3, 'B', '3B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 8),
	('ejecutivo', 3, 'C', '3C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 8),
	('ejecutivo', 3, 'D', '3D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 8),
	('ejecutivo', 4, 'A', '4A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 8),
	('ejecutivo', 4, 'B', '4B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 8),
	('ejecutivo', 4, 'C', '4C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 8),
	('ejecutivo', 4, 'D', '4D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 8),
	('economica', 5, 'A', '5A', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 8),
	('economica', 5, 'B', '5B', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 8),
	('economica', 5, 'C', '5C', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 8),
	('economica', 5, 'D', '5D', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 8),
	('primera clase', 1, 'A', '1A', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 9),
	('primera clase', 1, 'B', '1B', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 9),
	('primera clase', 1, 'C', '1C', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 9),
	('primera clase', 1, 'D', '1D', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 9),
	('primera clase', 2, 'A', '2A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 9),
	('primera clase', 2, 'B', '2B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 9),
	('primera clase', 2, 'C', '2C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 9),
	('primera clase', 2, 'D', '2D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 9),
	('ejecutivo', 3, 'A', '3A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 9),
	('ejecutivo', 3, 'B', '3B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 9),
	('ejecutivo', 3, 'C', '3C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 9),
	('ejecutivo', 3, 'D', '3D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 9),
	('ejecutivo', 4, 'A', '4A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 9),
	('ejecutivo', 4, 'B', '4B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 9),
	('ejecutivo', 4, 'C', '4C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 9),
	('ejecutivo', 4, 'D', '4D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 9),
	('economica', 5, 'A', '5A', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 9),
	('economica', 5, 'B', '5B', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 9),
	('economica', 5, 'C', '5C', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 9),
	('economica', 5, 'D', '5D', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 9),
	('primera clase', 1, 'A', '1A', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 10),
	('primera clase', 1, 'B', '1B', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 10),
	('primera clase', 1, 'C', '1C', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 10),
	('primera clase', 1, 'D', '1D', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 10),
	('primera clase', 2, 'A', '2A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 10),
	('primera clase', 2, 'B', '2B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 10),
	('primera clase', 2, 'C', '2C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 10),
	('primera clase', 2, 'D', '2D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 10),
	('ejecutivo', 3, 'A', '3A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 10),
	('ejecutivo', 3, 'B', '3B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 10),
	('ejecutivo', 3, 'C', '3C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 10),
	('ejecutivo', 3, 'D', '3D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 10),
	('ejecutivo', 4, 'A', '4A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 10),
	('ejecutivo', 4, 'B', '4B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 10),
	('ejecutivo', 4, 'C', '4C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 10),
	('ejecutivo', 4, 'D', '4D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 10),
	('economica', 5, 'A', '5A', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 10),
	('economica', 5, 'B', '5B', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 10),
	('economica', 5, 'C', '5C', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 10),
	('economica', 5, 'D', '5D', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 10),
	('primera clase', 1, 'A', '1A', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 11),
	('primera clase', 1, 'B', '1B', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 11),
	('primera clase', 1, 'C', '1C', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 11),
	('primera clase', 1, 'D', '1D', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 11),
	('primera clase', 2, 'A', '2A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 11),
	('primera clase', 2, 'B', '2B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 11),
	('primera clase', 2, 'C', '2C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 11),
	('primera clase', 2, 'D', '2D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 11),
	('ejecutivo', 3, 'A', '3A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 11),
	('ejecutivo', 3, 'B', '3B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 11),
	('ejecutivo', 3, 'C', '3C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 11),
	('ejecutivo', 3, 'D', '3D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 11),
	('ejecutivo', 4, 'A', '4A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 11),
	('ejecutivo', 4, 'B', '4B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 11),
	('ejecutivo', 4, 'C', '4C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 11),
	('ejecutivo', 4, 'D', '4D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 11),
	('economica', 5, 'A', '5A', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 11),
	('economica', 5, 'B', '5B', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 11),
	('economica', 5, 'C', '5C', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 11),
	('economica', 5, 'D', '5D', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 11),
	('primera clase', 1, 'A', '1A', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 12),
	('primera clase', 1, 'B', '1B', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 12),
	('primera clase', 1, 'C', '1C', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 12),
	('primera clase', 1, 'D', '1D', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 12),
	('primera clase', 2, 'A', '2A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 12),
	('primera clase', 2, 'B', '2B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 12),
	('primera clase', 2, 'C', '2C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 12),
	('primera clase', 2, 'D', '2D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 12),
	('ejecutivo', 3, 'A', '3A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 12),
	('ejecutivo', 3, 'B', '3B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 12),
	('ejecutivo', 3, 'C', '3C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 12),
	('ejecutivo', 3, 'D', '3D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 12),
	('ejecutivo', 4, 'A', '4A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 12),
	('ejecutivo', 4, 'B', '4B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 12),
	('ejecutivo', 4, 'C', '4C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 12),
	('ejecutivo', 4, 'D', '4D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 12),
	('economica', 5, 'A', '5A', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 12),
	('economica', 5, 'B', '5B', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 12),
	('economica', 5, 'C', '5C', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 12),
	('economica', 5, 'D', '5D', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 12),
	('primera clase', 1, 'A', '1A', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 13),
	('primera clase', 1, 'B', '1B', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 13),
	('primera clase', 1, 'C', '1C', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 13),
	('primera clase', 1, 'D', '1D', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 13),
	('primera clase', 2, 'A', '2A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 13),
	('primera clase', 2, 'B', '2B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 13),
	('primera clase', 2, 'C', '2C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 13),
	('primera clase', 2, 'D', '2D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 13),
	('ejecutivo', 3, 'A', '3A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 13),
	('ejecutivo', 3, 'B', '3B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 13),
	('ejecutivo', 3, 'C', '3C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 13),
	('ejecutivo', 3, 'D', '3D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 13),
	('ejecutivo', 4, 'A', '4A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 13),
	('ejecutivo', 4, 'B', '4B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 13),
	('ejecutivo', 4, 'C', '4C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 13),
	('ejecutivo', 4, 'D', '4D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 13),
	('economica', 5, 'A', '5A', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 13),
	('economica', 5, 'B', '5B', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 13),
	('economica', 5, 'C', '5C', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 13),
	('economica', 5, 'D', '5D', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 13),
	('primera clase', 1, 'A', '1A', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 14),
	('primera clase', 1, 'B', '1B', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 14),
	('primera clase', 1, 'C', '1C', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 14),
	('primera clase', 1, 'D', '1D', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 14),
	('primera clase', 2, 'A', '2A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 14),
	('primera clase', 2, 'B', '2B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 14),
	('primera clase', 2, 'C', '2C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 14),
	('primera clase', 2, 'D', '2D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 14),
	('ejecutivo', 3, 'A', '3A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 14),
	('ejecutivo', 3, 'B', '3B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 14),
	('ejecutivo', 3, 'C', '3C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 14),
	('ejecutivo', 3, 'D', '3D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 14),
	('ejecutivo', 4, 'A', '4A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 14),
	('ejecutivo', 4, 'B', '4B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 14),
	('ejecutivo', 4, 'C', '4C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 14),
	('ejecutivo', 4, 'D', '4D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 14),
	('economica', 5, 'A', '5A', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 14),
	('economica', 5, 'B', '5B', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 14),
	('economica', 5, 'C', '5C', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 14),
	('economica', 5, 'D', '5D', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 14),
	('primera clase', 1, 'A', '1A', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 15),
	('primera clase', 1, 'B', '1B', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 15),
	('primera clase', 1, 'C', '1C', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 15),
	('primera clase', 1, 'D', '1D', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 15),
	('primera clase', 2, 'A', '2A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 15),
	('primera clase', 2, 'B', '2B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 15),
	('primera clase', 2, 'C', '2C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 15),
	('primera clase', 2, 'D', '2D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 15),
	('ejecutivo', 3, 'A', '3A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 15),
	('ejecutivo', 3, 'B', '3B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 15),
	('ejecutivo', 3, 'C', '3C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 15),
	('ejecutivo', 3, 'D', '3D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 15),
	('ejecutivo', 4, 'A', '4A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 15),
	('ejecutivo', 4, 'B', '4B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 15),
	('ejecutivo', 4, 'C', '4C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 15),
	('ejecutivo', 4, 'D', '4D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 15),
	('economica', 5, 'A', '5A', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 15),
	('economica', 5, 'B', '5B', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 15),
	('economica', 5, 'C', '5C', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 15),
	('economica', 5, 'D', '5D', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 15),
	('primera clase', 1, 'A', '1A', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 16),
	('primera clase', 1, 'B', '1B', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 16),
	('primera clase', 1, 'C', '1C', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 16),
	('primera clase', 1, 'D', '1D', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 16),
	('primera clase', 2, 'A', '2A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 16),
	('primera clase', 2, 'B', '2B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 16),
	('primera clase', 2, 'C', '2C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 16),
	('primera clase', 2, 'D', '2D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 16),
	('ejecutivo', 3, 'A', '3A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 16),
	('ejecutivo', 3, 'B', '3B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 16),
	('ejecutivo', 3, 'C', '3C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 16),
	('ejecutivo', 3, 'D', '3D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 16),
	('ejecutivo', 4, 'A', '4A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 16),
	('ejecutivo', 4, 'B', '4B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 16),
	('ejecutivo', 4, 'C', '4C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 16),
	('ejecutivo', 4, 'D', '4D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 16),
	('economica', 5, 'A', '5A', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 16),
	('economica', 5, 'B', '5B', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 16),
	('economica', 5, 'C', '5C', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 16),
	('economica', 5, 'D', '5D', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 16),
	('primera clase', 1, 'A', '1A', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 17),
	('primera clase', 1, 'B', '1B', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 17),
	('primera clase', 1, 'C', '1C', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 17),
	('primera clase', 1, 'D', '1D', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 17),
	('primera clase', 2, 'A', '2A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 17),
	('primera clase', 2, 'B', '2B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 17),
	('primera clase', 2, 'C', '2C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 17),
	('primera clase', 2, 'D', '2D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 17),
	('ejecutivo', 3, 'A', '3A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 17),
	('ejecutivo', 3, 'B', '3B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 17),
	('ejecutivo', 3, 'C', '3C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 17),
	('ejecutivo', 3, 'D', '3D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 17),
	('ejecutivo', 4, 'A', '4A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 17),
	('ejecutivo', 4, 'B', '4B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 17),
	('ejecutivo', 4, 'C', '4C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 17),
	('ejecutivo', 4, 'D', '4D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 17),
	('economica', 5, 'A', '5A', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 17),
	('economica', 5, 'B', '5B', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 17),
	('economica', 5, 'C', '5C', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 17),
	('economica', 5, 'D', '5D', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 17),
	('primera clase', 1, 'A', '1A', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 18),
	('primera clase', 1, 'B', '1B', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 18),
	('primera clase', 1, 'C', '1C', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 18),
	('primera clase', 1, 'D', '1D', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 18),
	('primera clase', 2, 'A', '2A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 18),
	('primera clase', 2, 'B', '2B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 18),
	('primera clase', 2, 'C', '2C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 18),
	('primera clase', 2, 'D', '2D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 18),
	('ejecutivo', 3, 'A', '3A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 18),
	('ejecutivo', 3, 'B', '3B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 18),
	('ejecutivo', 3, 'C', '3C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 18),
	('ejecutivo', 3, 'D', '3D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 18),
	('ejecutivo', 4, 'A', '4A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 18),
	('ejecutivo', 4, 'B', '4B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 18),
	('ejecutivo', 4, 'C', '4C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 18),
	('ejecutivo', 4, 'D', '4D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 18),
	('economica', 5, 'A', '5A', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 18),
	('economica', 5, 'B', '5B', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 18),
	('economica', 5, 'C', '5C', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 18),
	('economica', 5, 'D', '5D', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 18),
	('primera clase', 1, 'A', '1A', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 19),
	('primera clase', 1, 'B', '1B', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 19),
	('primera clase', 1, 'C', '1C', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 19),
	('primera clase', 1, 'D', '1D', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 19),
	('primera clase', 2, 'A', '2A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 19),
	('primera clase', 2, 'B', '2B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 19),
	('primera clase', 2, 'C', '2C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 19),
	('primera clase', 2, 'D', '2D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 19),
	('ejecutivo', 3, 'A', '3A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 19),
	('ejecutivo', 3, 'B', '3B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 19),
	('ejecutivo', 3, 'C', '3C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 19),
	('ejecutivo', 3, 'D', '3D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 19),
	('ejecutivo', 4, 'A', '4A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 19),
	('ejecutivo', 4, 'B', '4B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 19),
	('ejecutivo', 4, 'C', '4C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 19),
	('ejecutivo', 4, 'D', '4D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 19),
	('economica', 5, 'A', '5A', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 19),
	('economica', 5, 'B', '5B', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 19),
	('economica', 5, 'C', '5C', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 19),
	('economica', 5, 'D', '5D', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 19),
	('primera clase', 1, 'A', '1A', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 20),
	('primera clase', 1, 'B', '1B', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 20),
	('primera clase', 1, 'C', '1C', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 20),
	('primera clase', 1, 'D', '1D', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 20),
	('primera clase', 2, 'A', '2A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 20),
	('primera clase', 2, 'B', '2B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 20),
	('primera clase', 2, 'C', '2C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 20),
	('primera clase', 2, 'D', '2D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 20),
	('ejecutivo', 3, 'A', '3A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 20),
	('ejecutivo', 3, 'B', '3B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 20),
	('ejecutivo', 3, 'C', '3C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 20),
	('ejecutivo', 3, 'D', '3D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 20),
	('ejecutivo', 4, 'A', '4A', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 20),
	('ejecutivo', 4, 'B', '4B', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 20),
	('ejecutivo', 4, 'C', '4C', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 20),
	('ejecutivo', 4, 'D', '4D', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 20),
	('economica', 5, 'A', '5A', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 20),
	('economica', 5, 'B', '5B', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 20),
	('economica', 5, 'C', '5C', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medio', 20),
	('economica', 5, 'D', '5D', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ventana', 20);
    
-- ======================================================================
-- INSERTS: Aerolinea.asiento_vuelo 
-- ======================================================================
INSERT INTO Aerolinea.asiento_vuelo
  (vuelo_idvuelo, asiento_idasiento, estado, bloqueado_motivo, codigo_asiento,
   creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo)
SELECT
  v.idvuelo,
  a.idasiento,
  p.estado,
  p.motivo,
  p.codigo_asiento,
  NOW(), NOW(), NULL, NULL, NULL, NULL, NULL
FROM (
  -- ===================== PROGRAMADO / MIX =====================
  SELECT 'AR100' AS codigo_publico, '1A' AS codigo_asiento, 'LIBRE' AS estado, NULL AS motivo UNION ALL
  SELECT 'AR100', '1C', 'LIBRE', NULL UNION ALL
  SELECT 'AR100', '2B', 'RESERVADO', NULL UNION ALL
  SELECT 'AR100', '2D', 'LIBRE', NULL UNION ALL
  SELECT 'AR100', '3A', 'LIBRE', NULL UNION ALL
  SELECT 'AR100', '5A', 'LIBRE', NULL UNION ALL

  -- ===================== DEMORADO =====================
  SELECT 'AR101', '1A', 'RESERVADO', NULL UNION ALL
  SELECT 'AR101', '1C', 'LIBRE', NULL UNION ALL
  SELECT 'AR101', '2B', 'RESERVADO', NULL UNION ALL
  SELECT 'AR101', '2D', 'LIBRE', NULL UNION ALL
  SELECT 'AR101', '3A', 'RESERVADO', NULL UNION ALL
  SELECT 'AR101', '5A', 'BLOQUEADO', 'Bloqueo operativo en salida de emergencia' UNION ALL

  -- ===================== ABORDANDO =====================
  SELECT 'AR102', '1A', 'OCUPADO', NULL UNION ALL
  SELECT 'AR102', '1C', 'OCUPADO', NULL UNION ALL
  SELECT 'AR102', '2B', 'RESERVADO', NULL UNION ALL
  SELECT 'AR102', '2D', 'OCUPADO', NULL UNION ALL
  SELECT 'AR102', '3A', 'RESERVADO', NULL UNION ALL
  SELECT 'AR102', '5A', 'BLOQUEADO', 'Bloqueo por control de cabina' UNION ALL

  -- ===================== EN_AIRE =====================
  SELECT 'AR103', '1A', 'OCUPADO', NULL UNION ALL
  SELECT 'AR103', '1C', 'OCUPADO', NULL UNION ALL
  SELECT 'AR103', '2B', 'OCUPADO', NULL UNION ALL
  SELECT 'AR103', '2D', 'RESERVADO', NULL UNION ALL
  SELECT 'AR103', '3A', 'OCUPADO', NULL UNION ALL
  SELECT 'AR103', '5A', 'OCUPADO', NULL UNION ALL

  -- ===================== ATERRIZADO =====================
  SELECT 'AR104', '1A', 'OCUPADO', NULL UNION ALL
  SELECT 'AR104', '1C', 'OCUPADO', NULL UNION ALL
  SELECT 'AR104', '2B', 'OCUPADO', NULL UNION ALL
  SELECT 'AR104', '2D', 'OCUPADO', NULL UNION ALL
  SELECT 'AR104', '3A', 'OCUPADO', NULL UNION ALL
  SELECT 'AR104', '5A', 'OCUPADO', NULL UNION ALL

  -- ===================== PROGRAMADO =====================
  SELECT 'AR105', '1A', 'LIBRE', NULL UNION ALL
  SELECT 'AR105', '1C', 'RESERVADO', NULL UNION ALL
  SELECT 'AR105', '2B', 'LIBRE', NULL UNION ALL
  SELECT 'AR105', '2D', 'LIBRE', NULL UNION ALL
  SELECT 'AR105', '3A', 'RESERVADO', NULL UNION ALL
  SELECT 'AR105', '5A', 'LIBRE', NULL UNION ALL

  -- ===================== CANCELADO =====================
  SELECT 'AR106', '1A', 'BLOQUEADO', 'Vuelo cancelado' UNION ALL
  SELECT 'AR106', '1C', 'BLOQUEADO', 'Vuelo cancelado' UNION ALL
  SELECT 'AR106', '2B', 'BLOQUEADO', 'Vuelo cancelado' UNION ALL
  SELECT 'AR106', '2D', 'BLOQUEADO', 'Vuelo cancelado' UNION ALL
  SELECT 'AR106', '3A', 'BLOQUEADO', 'Vuelo cancelado' UNION ALL
  SELECT 'AR106', '5A', 'BLOQUEADO', 'Vuelo cancelado: salida de emergencia no utilizable' UNION ALL

  -- ===================== DEMORADO =====================
  SELECT 'AR107', '1A', 'RESERVADO', NULL UNION ALL
  SELECT 'AR107', '1C', 'LIBRE', NULL UNION ALL
  SELECT 'AR107', '2B', 'RESERVADO', NULL UNION ALL
  SELECT 'AR107', '2D', 'LIBRE', NULL UNION ALL
  SELECT 'AR107', '3A', 'RESERVADO', NULL UNION ALL
  SELECT 'AR107', '5A', 'BLOQUEADO', 'Bloqueo operativo en salida de emergencia' UNION ALL

  -- ===================== ATERRIZADO =====================
  SELECT 'AR108', '1A', 'OCUPADO', NULL UNION ALL
  SELECT 'AR108', '1C', 'OCUPADO', NULL UNION ALL
  SELECT 'AR108', '2B', 'OCUPADO', NULL UNION ALL
  SELECT 'AR108', '2D', 'OCUPADO', NULL UNION ALL
  SELECT 'AR108', '3A', 'OCUPADO', NULL UNION ALL
  SELECT 'AR108', '5A', 'OCUPADO', NULL UNION ALL

  -- ===================== EN_AIRE =====================
  SELECT 'AR109', '1A', 'OCUPADO', NULL UNION ALL
  SELECT 'AR109', '1C', 'OCUPADO', NULL UNION ALL
  SELECT 'AR109', '2B', 'OCUPADO', NULL UNION ALL
  SELECT 'AR109', '2D', 'RESERVADO', NULL UNION ALL
  SELECT 'AR109', '3A', 'OCUPADO', NULL UNION ALL
  SELECT 'AR109', '5A', 'OCUPADO', NULL UNION ALL

  -- ===================== PROGRAMADO =====================
  SELECT 'AR110', '1A', 'LIBRE', NULL UNION ALL
  SELECT 'AR110', '1C', 'RESERVADO', NULL UNION ALL
  SELECT 'AR110', '2B', 'LIBRE', NULL UNION ALL
  SELECT 'AR110', '2D', 'LIBRE', NULL UNION ALL
  SELECT 'AR110', '3A', 'RESERVADO', NULL UNION ALL
  SELECT 'AR110', '5A', 'LIBRE', NULL UNION ALL

  -- ===================== PROGRAMADO =====================
  SELECT 'AR111', '1A', 'RESERVADO', NULL UNION ALL
  SELECT 'AR111', '1C', 'LIBRE', NULL UNION ALL
  SELECT 'AR111', '2B', 'LIBRE', NULL UNION ALL
  SELECT 'AR111', '2D', 'RESERVADO', NULL UNION ALL
  SELECT 'AR111', '3A', 'LIBRE', NULL UNION ALL
  SELECT 'AR111', '5A', 'LIBRE', NULL UNION ALL

  -- ===================== ATERRIZADO =====================
  SELECT 'AR112', '1A', 'OCUPADO', NULL UNION ALL
  SELECT 'AR112', '1C', 'OCUPADO', NULL UNION ALL
  SELECT 'AR112', '2B', 'OCUPADO', NULL UNION ALL
  SELECT 'AR112', '2D', 'OCUPADO', NULL UNION ALL
  SELECT 'AR112', '3A', 'OCUPADO', NULL UNION ALL
  SELECT 'AR112', '5A', 'OCUPADO', NULL UNION ALL

  -- ===================== CANCELADO =====================
  SELECT 'AR113', '1A', 'BLOQUEADO', 'Vuelo cancelado' UNION ALL
  SELECT 'AR113', '1C', 'BLOQUEADO', 'Vuelo cancelado' UNION ALL
  SELECT 'AR113', '2B', 'BLOQUEADO', 'Vuelo cancelado' UNION ALL
  SELECT 'AR113', '2D', 'BLOQUEADO', 'Vuelo cancelado' UNION ALL
  SELECT 'AR113', '3A', 'BLOQUEADO', 'Vuelo cancelado' UNION ALL
  SELECT 'AR113', '5A', 'BLOQUEADO', 'Vuelo cancelado: salida de emergencia no utilizable' UNION ALL

  -- ===================== DEMORADO =====================
  SELECT 'AR114', '1A', 'RESERVADO', NULL UNION ALL
  SELECT 'AR114', '1C', 'LIBRE', NULL UNION ALL
  SELECT 'AR114', '2B', 'RESERVADO', NULL UNION ALL
  SELECT 'AR114', '2D', 'LIBRE', NULL UNION ALL
  SELECT 'AR114', '3A', 'RESERVADO', NULL UNION ALL
  SELECT 'AR114', '5A', 'BLOQUEADO', 'Bloqueo operativo en salida de emergencia' UNION ALL

  -- ===================== PROGRAMADO =====================
  SELECT 'AR115', '1A', 'LIBRE', NULL UNION ALL
  SELECT 'AR115', '1C', 'RESERVADO', NULL UNION ALL
  SELECT 'AR115', '2B', 'LIBRE', NULL UNION ALL
  SELECT 'AR115', '2D', 'LIBRE', NULL UNION ALL
  SELECT 'AR115', '3A', 'RESERVADO', NULL UNION ALL
  SELECT 'AR115', '5A', 'LIBRE', NULL UNION ALL

  -- ===================== ATERRIZADO =====================
  SELECT 'AR116', '1A', 'OCUPADO', NULL UNION ALL
  SELECT 'AR116', '1C', 'OCUPADO', NULL UNION ALL
  SELECT 'AR116', '2B', 'OCUPADO', NULL UNION ALL
  SELECT 'AR116', '2D', 'OCUPADO', NULL UNION ALL
  SELECT 'AR116', '3A', 'OCUPADO', NULL UNION ALL
  SELECT 'AR116', '5A', 'OCUPADO', NULL UNION ALL

  -- ===================== PROGRAMADO =====================
  SELECT 'AR117', '1A', 'LIBRE', NULL UNION ALL
  SELECT 'AR117', '1C', 'RESERVADO', NULL UNION ALL
  SELECT 'AR117', '2B', 'LIBRE', NULL UNION ALL
  SELECT 'AR117', '2D', 'LIBRE', NULL UNION ALL
  SELECT 'AR117', '3A', 'RESERVADO', NULL UNION ALL
  SELECT 'AR117', '5A', 'LIBRE', NULL UNION ALL

  -- ===================== ABORDANDO =====================
  SELECT 'AR118', '1A', 'OCUPADO', NULL UNION ALL
  SELECT 'AR118', '1C', 'OCUPADO', NULL UNION ALL
  SELECT 'AR118', '2B', 'RESERVADO', NULL UNION ALL
  SELECT 'AR118', '2D', 'OCUPADO', NULL UNION ALL
  SELECT 'AR118', '3A', 'RESERVADO', NULL UNION ALL
  SELECT 'AR118', '5A', 'BLOQUEADO', 'Bloqueo por control de cabina' UNION ALL

  -- ===================== PROGRAMADO =====================
  SELECT 'AR119', '1A', 'LIBRE', NULL UNION ALL
  SELECT 'AR119', '1C', 'RESERVADO', NULL UNION ALL
  SELECT 'AR119', '2B', 'LIBRE', NULL UNION ALL
  SELECT 'AR119', '2D', 'LIBRE', NULL UNION ALL
  SELECT 'AR119', '3A', 'RESERVADO', NULL UNION ALL
  SELECT 'AR119', '5A', 'LIBRE', NULL
) AS p
JOIN Aerolinea.vuelo v
  ON v.codigo_publico = p.codigo_publico
JOIN Aerolinea.asiento a
  ON a.aeronave_idaeronave = v.aeronave_idaeronave
 AND a.codigo_asiento      = p.codigo_asiento
LEFT JOIN Aerolinea.asiento_vuelo av
  ON av.vuelo_idvuelo     = v.idvuelo
 AND av.asiento_idasiento = a.idasiento
WHERE av.vuelo_idvuelo IS NULL;

-- ======================================================================
-- INSERTS: Aerolinea.boleto 
-- ======================================================================
INSERT INTO Aerolinea.boleto
  (reserva_idreserva, reserva_persona_idreserva_persona, vuelo_idvuelo,
   asiento_vuelo_idasiento_vuelo, estado_boleto, costo_total,
   creado_en, actualizado_en, eliminado_en, creado_por, actualizado_por, eliminado_por, eliminado_motivo)
VALUES
  ( 1,  1,  1,   3, 'ABIERTO',    181440.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  ( 2,  2,  2,   9, 'EMITIDO',    204120.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  ( 3,  3,  3,  15, 'CANCELADO',  192780.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  ( 4,  4,  4,  21, 'EMITIDO',    215460.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  ( 5,  5,  5,  27, 'USADO',      208656.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  ( 6,  6,  6,  33, 'ABIERTO',    279040.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  ( 7,  7,  7,  39, 'EMITIDO',    261600.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  ( 8,  8,  8,  45, 'EMITIDO',    306944.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  ( 9,  9,  9,  51, 'USADO',      279040.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (10, 10, 10,  57, 'ABIERTO',    278250.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (11, 11, 11,  63, 'EMITIDO',    278250.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (12, 12, 12,  69, 'EMITIDO',    204120.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (13, 13, 13,  75, 'USADO',      261600.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (14, 14, 14,  81, 'ABIERTO',    192780.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (15, 15, 15,  87, 'EMITIDO',    306944.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (16, 16, 16,  93, 'EMITIDO',    278250.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (17, 17, 17,  99, 'USADO',      208656.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (18, 18, 18, 105, 'ABIERTO',    204120.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (19, 19, 19, 111, 'EMITIDO',    279040.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (20, 20, 20, 117, 'USADO',      181440.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL);