# ✈️ Airport Management Database (MySQL 8)

> **Proyecto:** Aerolínea – Sistema de Gestión de Vuelos, Reservas y Operaciones  
> **Tecnología:** MySQL 8.x  
> **Autor:** Agustín Tejero  
> **Diseño:** Modelo Entidad–Relación normalizado (3FN) + auditoría + eliminación lógica (soft delete)

**Keywords (ATS/Recruiters):** MySQL, SQL, Relational Modeling, Normalization (3NF), ERD, Indexes, Constraints (PK/FK), RBAC (roles & permissions), Stored Procedures, Triggers, Views, Audit Fields, Soft Delete.

---

## ✅ Highlights técnicos

- **Modelo relacional 3FN** orientado a operaciones de aerolínea (vuelos, rutas, flota, reservas, tickets).
- **RBAC**: roles, permisos y asignación (`rol`, `permiso`, `rol_permiso`).
- **Auditoría estándar** en tablas: `creado_en`, `actualizado_en`, `eliminado_en` + `creado_por`, `actualizado_por`, `eliminado_por`.
- **Soft delete**: trazabilidad sin pérdida de histórico.
- **Integridad referencial** con FKs + validaciones de negocio (según scripts del repo).
- **Scripts separados** (tablas / inserts / diagramas) para inspección rápida.

---

## 🗺️ Diagrama ERD

> Archivo: `docs/erd.png`

![ERD - Airport Management Database](docs/erd.png)

---

## 📘 Resumen funcional

Este modelo de base de datos implementa la estructura fundamental de un **sistema de gestión de vuelos comerciales**, permitiendo administrar:

- Identidad y autenticación de usuarios.
- Roles y permisos.
- Datos personales, documentación y contacto de pasajeros.
- Infraestructura aeroportuaria (países, aeropuertos, terminales, puertas).
- Flota de aeronaves y sus modelos.
- Rutas, tarifas, promociones y vuelos.
- Reservas, boletos y control de asientos por vuelo.

---

## 🗂️ Tablas principales (por módulo)

| Módulo | Tabla | Descripción |
|---|---|---|
| Seguridad y Accesos | `usuario` | Cuentas del sistema (email, hash, bloqueo, verificación). |
|  | `rol` | Roles base (Administrador, Piloto, Pasajero, etc.). |
|  | `permiso` | Acciones permitidas en el sistema. |
|  | `rol_permiso` | Asignación de permisos a roles. |
| Identidad Personal | `persona` | Datos básicos (nombre, apellido). |
|  | `direccion` | Domicilios vinculados a personas. |
|  | `telefono` | Teléfonos personales o laborales. |
|  | `documentacion` | Documentos de identidad (DNI, pasaporte, etc.). |
| Geografía y Aeropuertos | `pais` | Catálogo de países. |
|  | `aeropuerto` | Aeropuertos y coordenadas. |
|  | `terminal` | Terminales dentro de un aeropuerto. |
|  | `puerta` | Puertas de embarque. |
| Flota y Configuración | `modelo_aeronave` | Modelos técnicos de aeronaves. |
|  | `configuracion_cabina` | Plantillas de disposición de asientos por clase. |
|  | `aeronave` | Aeronaves registradas y su estado operativo. |
|  | `asiento` | Asientos físicos dentro de una aeronave. |
| Operación y Tarifas | `ruta` | Tramos origen–destino. |
|  | `tarifa` | Tarifas por clase y vigencia. |
|  | `promocion` | Descuentos o condiciones especiales sobre tarifas. |
| Operaciones de Vuelo | `vuelo` | Programación de vuelos con aeronave y ruta. |
|  | `asiento_vuelo` | Estado de asientos por vuelo. |
| Reservas y Ventas | `reserva` | Encabezado de reservas, totales y estado. |
|  | `reserva_persona` | Pasajeros dentro de una reserva. |
|  | `boleto` | Boleto emitido por pasajero y vuelo. |

---

## 🔄 Caso de uso típico (end-to-end)

1. **Autenticación**: un `usuario` inicia sesión según su `rol`.  
2. **Gestión personal**: se vincula `persona`, `direccion`, `telefono`, `documentacion`.  
3. **Búsqueda**: consulta `ruta` + `vuelo` disponibles.  
4. **Selección**: aplica `tarifa` y `promocion` si corresponde.  
5. **Reserva**: crea `reserva` y asocia pasajeros en `reserva_persona`.  
6. **Asiento**: marca el asiento en `asiento_vuelo` como `RESERVADO`.  
7. **Ticketing**: emite `boleto` para pasajero/vuelo/asiento.  
8. **Auditoría**: queda trazabilidad en campos `*_en` y `*_por`.

---

## ⚙️ Cómo ejecutar (MySQL 8 / Workbench)

> ⚠️ **Nota importante sobre el esquema (`schema`)**  
> Tus scripts pueden usar un esquema como `mydb` (o el que tengas definido).  
> **Usá el mismo nombre que figure en tus archivos SQL** o ajustalo con búsqueda/reemplazo.

### Opción A — MySQL Workbench
1. Crear el esquema (por ejemplo `mydb`) si no existe:
   ```sql
   CREATE DATABASE IF NOT EXISTS mydb;