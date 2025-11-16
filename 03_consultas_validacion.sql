-- 03_Consultas_Validacion_Automotriz.sql
-- Consultas básicas para validar la trazabilidad, las relaciones y las reglas de negocio 
-- de la BD de Inventario R&D Automotriz.

-- 1. Trazabilidad Completa del Activo (Regla de Negocio clave): 
--    Muestra la ubicación, estado y proyecto asignado de un equipo específico (ECU de Infotainment).
SELECT
    D.sn AS Serial_Number, 
    D.description AS Descripcion_Equipo, 
    D.status AS Estado_Operativo,
    P.name AS Project_Asignado, 
    L.name AS Laboratory_Ubicacion, 
    C.name AS Cliente_OEM,
    CONCAT(TL.first_name, ' ', TL.last_name) AS Lider_Proyecto
FROM
    Device D
JOIN
    Project P ON D.project_id = P.id
JOIN
    Laboratory L ON D.laboratory_id = L.id
JOIN
    Client C ON P.client_id = C.id
JOIN
    Team_Lead TL ON P.team_lead_id = TL.id
WHERE
    D.sn = 'SN-ECU-INF-4587';


-- 2. Equipos No Disponibles para Asignación Inmediata:
--    Identifica todos los activos que NO están 'Operativo' y el proyecto actual que los retiene.
SELECT
    D.sn, D.description, D.status, P.name AS Project_Asignado, L.name AS Laboratorio
FROM
    Device D
JOIN 
    Project P ON D.project_id = P.id
JOIN
    Laboratory L ON D.laboratory_id = L.id
WHERE
    D.status <> 'Operativo'
ORDER BY
    D.status;


-- 3. Conteo de Activos por Ubicación (Laboratorio): 
--    Agregación para mostrar la carga de equipos en cada laboratorio (uso de GROUP BY y COUNT).
SELECT
    L.name AS Laboratorio, 
    COUNT(D.id) AS Total_Activos
FROM
    Laboratory L
LEFT JOIN 
    Device D ON L.id = D.laboratory_id
GROUP BY
    L.name
ORDER BY
    Total_Activos DESC;


-- 4. Resumen de Proyectos y Responsabilidad:
--    Muestra la vinculación 1:N entre Cliente(OEM) -> Project -> Team_Lead.
SELECT
    P.name AS Project_Name,
    C.name AS Cliente_OEM,
    CONCAT(TL.first_name, ' ', TL.last_name) AS Lider_Supervisa
FROM
    Project P
JOIN
    Client C ON P.client_id = C.id
JOIN
    Team_Lead TL ON P.team_lead_id = TL.id
ORDER BY
    Cliente_OEM, Project_Name;