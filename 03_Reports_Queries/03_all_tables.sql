-- 06_query_mostrar_todo.sql
-- Muestra el contenido de todas las tablas de la base de datos para verificacion final.

USE inventario_rd_automotriz;

-- ******************************************************
-- 1. CATALOGOS BASE
-- ******************************************************

SELECT '----- 1. DEVICE_STATUS (Estados Operativos) -----' AS Tabla;
SELECT * FROM Device_Status;

SELECT '----- 2. CLIENT (Clientes) -----' AS Tabla;
SELECT * FROM Client;

SELECT '----- 3. TEAM_LEAD (Lideres) -----' AS Tabla;
SELECT * FROM Team_Lead;

SELECT '----- 4. LABORATORY (Ubicaciones) -----' AS Tabla;
SELECT * FROM Laboratory;

SELECT '----- 5. DEVICE_TYPE (Tipos de Equipo) -----' AS Tabla;
SELECT * FROM Device_Type;


-- ******************************************************
-- 2. TABLAS TRANSACCIONALES
-- ******************************************************

SELECT '----- 6. PROJECT (Proyectos Activos) -----' AS Tabla;
SELECT * FROM Project;

SELECT '----- 7. DEVICE (Inventario de Equipos) -----' AS Tabla;
SELECT * FROM Device;