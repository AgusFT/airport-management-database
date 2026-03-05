USE Aerolinea;

-- ============================================================
-- VISTA 2: Aerolinea.vw_ingresos_mensuales
-- ------------------------------------------------------------
-- Resumen de ingresos mes a mes (por año, mes) considerando
-- boletos con estado 'EMITIDO' o 'USADO'.
-- Fecha de referencia de la venta: COALESCE(b.creado_en, v.fecha_salida_prog)
-- ============================================================

DROP VIEW IF EXISTS Aerolinea.vw_ingresos_mensuales;
CREATE VIEW Aerolinea.vw_ingresos_mensuales AS
SELECT
  YEAR(COALESCE(b.creado_en, v.fecha_salida_prog))   AS anio,
  MONTH(COALESCE(b.creado_en, v.fecha_salida_prog))  AS mes,
  SUM(b.costo_total)                                  AS ingresos_total,
  COUNT(b.idboleto)                                   AS boletos_emitidos_usados
FROM Aerolinea.boleto b
JOIN Aerolinea.vuelo v
  ON v.idvuelo = b.vuelo_idvuelo
WHERE b.eliminado_en IS NULL
  AND b.estado_boleto IN ('EMITIDO','USADO')
GROUP BY
  YEAR(COALESCE(b.creado_en, v.fecha_salida_prog)),
  MONTH(COALESCE(b.creado_en, v.fecha_salida_prog))
ORDER BY anio, mes;
-- ============================================================
-- VISTA 3 : Aerolinea.vw_rutas_rentabilidad_anual
-- ------------------------------------------------------------
-- Muestra los ingresos por RUTA y AÑO, mostrando el nombre
-- de los aeropuertos de origen y destino en lugar del id.
-- ------------------------------------------------------------
-- Criterios:
--   * Solo boletos con estado 'EMITIDO' o 'USADO'
--   * Sin registros eliminados
--   * Fecha de referencia: COALESCE(b.creado_en, v.fecha_salida_prog)
-- ============================================================

DROP VIEW IF EXISTS Aerolinea.vw_rutas_rentabilidad_anual;
CREATE VIEW Aerolinea.vw_rutas_rentabilidad_anual AS
SELECT
  YEAR(COALESCE(b.creado_en, v.fecha_salida_prog)) AS anio,
  ao.tag     AS origen_codigo,
  ao.nombre  AS origen_nombre,
  ad.tag     AS destino_codigo,
  ad.nombre  AS destino_nombre,
  SUM(b.costo_total)  AS ingresos_ruta,
  COUNT(b.idboleto)   AS boletos_emitidos_usados
FROM Aerolinea.boleto b
JOIN Aerolinea.vuelo v
  ON v.idvuelo = b.vuelo_idvuelo
JOIN Aerolinea.ruta r
  ON r.idruta = v.ruta_idruta
JOIN Aerolinea.aeropuerto ao
  ON ao.idaeropuerto = r.origen_aeropuerto
JOIN Aerolinea.aeropuerto ad
  ON ad.idaeropuerto = r.destino_aeropuerto
WHERE b.eliminado_en IS NULL
  AND b.estado_boleto IN ('EMITIDO','USADO')
GROUP BY
  YEAR(COALESCE(b.creado_en, v.fecha_salida_prog)),
  ao.tag, ao.nombre, ad.tag, ad.nombre
ORDER BY anio, ingresos_ruta DESC, origen_codigo, destino_codigo;



-- ============================================================
-- VISTA: Aerolinea.vw_vuelos_resumen
-- ------------------------------------------------------------
-- Muestra cada vuelo con su:
--   - Código público y estado
--   - Matrícula del avión asignado
--   - Distancia y tiempo estimado de su ruta
--   - Cantidad de pasajeros (boletos con estado EMITIDO o USADO)
-- ------------------------------------------------------------
-- Reglas:
--   * Se excluyen vuelos eliminados (v.eliminado_en IS NULL)
--   * Se cuentan solo boletos con estado 'EMITIDO' o 'USADO'
-- ============================================================

DROP VIEW IF EXISTS Aerolinea.vw_vuelos_resumen;
CREATE VIEW Aerolinea.vw_vuelos_resumen AS
SELECT 
    v.idvuelo,
    v.codigo_publico,
    v.estado          AS estado_vuelo,
    a.matricula       AS aeronave_matricula,
    r.distancia_km,
    r.timepo_estimado AS tiempo_estimado_min,
    COUNT(b.idboleto) AS cantidad_pasajeros
FROM Aerolinea.vuelo v
JOIN Aerolinea.aeronave a
  ON a.idaeronave = v.aeronave_idaeronave
JOIN Aerolinea.ruta r
  ON r.idruta = v.ruta_idruta
LEFT JOIN Aerolinea.boleto b
  ON b.vuelo_idvuelo = v.idvuelo
 AND b.estado_boleto IN ('EMITIDO','USADO')
 AND b.eliminado_en IS NULL
WHERE v.eliminado_en IS NULL
GROUP BY 
    v.idvuelo, v.codigo_publico, v.estado,
    a.matricula, r.distancia_km, r.timepo_estimado
ORDER BY v.idvuelo;
