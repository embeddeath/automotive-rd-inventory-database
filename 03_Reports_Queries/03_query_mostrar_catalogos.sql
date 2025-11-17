-- 03_query_mostrar_catalogos.sql
-- Archivo para mostrar los datos de los catalogos insertados.

USE inventario_rd_automotriz;

-- 1. TEAM_LEAD: Lideres de Equipo
SELECT 
    id AS ID_Lider, 
    CONCAT(first_name, ' ', last_name) AS Nombre_Completo
FROM 
    Team_Lead
ORDER BY 
    id;

-- 2. CLIENT: Clientes Patrocinadores (OEMs)
SELECT 
    id AS ID_Cliente, 
    name AS Nombre_Cliente, 
    email
FROM 
    Client
ORDER BY 
    name;

-- 3. LABORATORY: Ubicaciones Fisicas
SELECT 
    id AS ID_Laboratorio, 
    name AS Nombre_Lab, 
    location AS Ubicacion
FROM 
    Laboratory
ORDER BY 
    id;

-- 4. DEVICE_STATUS: Estados Operativos
SELECT 
    status_id AS ID_Estado, 
    description AS Estado_Actual
FROM 
    Device_Status;

-- 5. DEVICE_TYPE: Tipos de Equipo (ECUs e Instrumentacion)
SELECT 
    type_id AS ID_Tipo, 
    manufacturer AS Fabricante, 
    model AS Modelo, 
    description AS Descripcion_Detallada
FROM 
    Device_Type
ORDER BY 
    type_id;