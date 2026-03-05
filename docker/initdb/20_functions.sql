USE Aerolinea;

-- ============================================================
-- Aerolinea.fn_cantidad_aeronaves_disponibles 
-- ------------------------------------------------------------
-- Output: INT
--   Cuenta aeronaves "disponibles":
--   - a.estado = 'activa' AND a.eliminado_en IS NULL
--   - NO asignadas a vuelos (v.eliminado_en IS NULL) en estado:
--     'PROGRAMADO','ABORDANDO','EN_AIRE','DEMORADO'
-- Nota: esta funcion usa CURSOR .
-- ============================================================

DROP FUNCTION IF EXISTS Aerolinea.fn_cantidad_aeronaves_disponibles;
DELIMITER //

CREATE FUNCTION Aerolinea.fn_cantidad_aeronaves_disponibles()
RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN
  DECLARE v_id INT;
  DECLARE v_bloqueada TINYINT;
  DECLARE v_cnt INT DEFAULT 0;
  DECLARE done TINYINT DEFAULT 0;

  -- Cursor sobre todas las aeronaves "activas" y no eliminadas
  DECLARE cur CURSOR FOR
    SELECT a.idaeronave
    FROM Aerolinea.aeronave a
    WHERE a.estado = 'activa'
      AND a.eliminado_en IS NULL
    ORDER BY a.idaeronave;

 
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

  OPEN cur;

  read_loop: LOOP
    FETCH cur INTO v_id;
    IF done = 1 THEN
      LEAVE read_loop;
    END IF;

   
    SELECT EXISTS (
             SELECT 1
             FROM Aerolinea.vuelo v
             WHERE v.aeronave_idaeronave = v_id
               AND v.eliminado_en IS NULL
               AND v.estado IN ('PROGRAMADO','ABORDANDO','EN_AIRE','DEMORADO')
           )
      INTO v_bloqueada;

   
    IF v_bloqueada = 0 THEN
      SET v_cnt = v_cnt + 1;
    END IF;
  END LOOP;

  CLOSE cur;

  RETURN v_cnt;
END//
DELIMITER ;
-- ============================================================
-- Aerolinea.fn_porcentaje_ocupacion_vuelo
-- ------------------------------------------------------------
-- Output: DECIMAL(5,2)
--   - Porcentaje de ocupación entre 0.00 y 100.00
--   - Incluye en "ocupados": RESERVADO, EMITIDO y BLOQUEADO
--   - No considera registros con eliminado_en IS NOT NULL
-- Reglas:
--   - Si el vuelo no tiene asientos mapeados (v_total = 0) -> 0.00
-- ============================================================

DROP FUNCTION IF EXISTS Aerolinea.fn_porcentaje_ocupacion_vuelo;
DELIMITER //

CREATE FUNCTION Aerolinea.fn_porcentaje_ocupacion_vuelo(p_idvuelo INT)
RETURNS DECIMAL(5,2)
DETERMINISTIC
READS SQL DATA
BEGIN
  DECLARE v_total    INT DEFAULT 0;
  DECLARE v_ocupados INT DEFAULT 0;

  -- Total de asientos válidos del vuelo (no eliminados)
  SELECT COUNT(*)
    INTO v_total
  FROM Aerolinea.asiento_vuelo av
  WHERE av.vuelo_idvuelo = p_idvuelo
    AND av.eliminado_en IS NULL;   -- soft delete

  IF v_total = 0 THEN
    RETURN 0.00;
  END IF;

  -- Asientos ocupados/no disponibles: RESERVADO, EMITIDO, BLOQUEADO (no eliminados)
  SELECT COUNT(*)
    INTO v_ocupados
  FROM Aerolinea.asiento_vuelo av
  WHERE av.vuelo_idvuelo = p_idvuelo
    AND av.eliminado_en IS NULL
    AND av.estado IN ('RESERVADO','EMITIDO','BLOQUEADO');

  RETURN ROUND(v_ocupados * 100.0 / v_total, 2);
END//

DELIMITER ;
-- ============================================================
-- Aerolinea.fn_precio_final_reserva
-- ------------------------------------------------------------
-- Output: DECIMAL(12,2)
--   - Devuelve el precio FINAL (neto) de una reserva.
--   - Fórmula base:
--       bruto = precio + tasa_fija + (precio * impuesto / 100)
--       neto  = bruto * (1 - valor/100) si la promoción está activa.
--   - Si la promoción NO está activa (o no existe), devuelve el BRUTO como neto.
-- Notas:
--   - Lee tarifa/promoción desde la reserva indicada.
--   - Redondea a 2 decimales.
-- ============================================================

DROP FUNCTION IF EXISTS Aerolinea.fn_precio_final_reserva;
DELIMITER //

CREATE FUNCTION Aerolinea.fn_precio_final_reserva(p_idreserva INT)
RETURNS DECIMAL(12,2)
DETERMINISTIC
READS SQL DATA
BEGIN
  DECLARE v_precio    DECIMAL(12,2);
  DECLARE v_impuesto  DECIMAL(5,2);
  DECLARE v_tasa_fija DECIMAL(12,2);
  DECLARE v_desc      SMALLINT;
  DECLARE v_activo    TINYINT;
  DECLARE v_bruto     DECIMAL(12,2);
  DECLARE v_neto      DECIMAL(12,2);

  /* Trae datos de tarifa y promo asociados a la reserva */
  SELECT
      t.precio, t.impuesto, t.tasa_fija,
      pr.valor, pr.activo
  INTO
      v_precio, v_impuesto, v_tasa_fija,
      v_desc, v_activo
  FROM Aerolinea.reserva r
  JOIN Aerolinea.tarifa t
    ON t.idtarifa = r.tarifa_idtarifa
  LEFT JOIN Aerolinea.promocion pr
    ON pr.idpromocion = r.promocion_idpromocion
  WHERE r.idreserva = p_idreserva;

  /* Si no hay fila correspondiente, retorna NULL */
  IF v_precio IS NULL THEN
    RETURN NULL;
  END IF;

  /* Calcula bruto */
  SET v_bruto = ROUND(v_precio + v_tasa_fija + (v_precio * v_impuesto / 100.0), 2);

  /* Aplica promo solo si está activa (=1). Si no, devuelve bruto como neto */
  IF v_activo = 1 THEN
    SET v_neto = ROUND(v_bruto * (1 - (COALESCE(v_desc, 0) / 100.0)), 2);
  ELSE
    SET v_neto = v_bruto;
  END IF;

  RETURN v_neto;
END//
DELIMITER ;
