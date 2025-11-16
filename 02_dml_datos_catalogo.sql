-- 02_DML_Datos_Catalogo_Automotriz.sql
-- Inserción de datos de catálogo y prueba con enfoque automotriz (OEMs reales, ECUs, etc.).

-- Datos para TEAM_LEAD (Se mantienen los nombres genéricos para los empleados)
INSERT INTO Team_Lead (id, first_name, last_name) VALUES
(1, 'Javier', 'Soto'),
(2, 'Carla', 'Méndez');

-- Datos para CLIENT (OEMs - Fabricantes de Equipos Originales reales o grupos representativos)
INSERT INTO Client (id, name, email) VALUES
(10, 'Grupo Volkswagen R&D', 'vw_group_rd@email.com'),
(11, 'General Motors Advanced Tech', 'gm_tech@email.com'),
(12, 'Toyota Motor North America R&D', 'toyota_na_rd@email.com');

-- Datos para LABORATORY
INSERT INTO Laboratory (id, name, location) VALUES
(100, 'Cámara Semianecoica EMC', 'Edificio H, Sala Blindada 1'),
(101, 'Laboratorio de Pruebas HIL (Hardware-in-the-Loop)', 'Edificio de Ingeniería, Piso 2'),
(102, 'Banco de Pruebas de Tren Motriz', 'Nave de Dinamómetros, Sector A');

-- Datos para PROJECT
INSERT INTO Project (id, name, client_id, team_lead_id) VALUES
(50, 'Validación de Ciberseguridad CAN-FD', 10, 1),
(51, 'Desarrollo de Algoritmos de Fusión de Sensores (ADAS)', 11, 2),
(52, 'Optimización de Eficiencia de Motor Eléctrico (EV)', 12, 1);

-- Datos para DEVICE (ECUs y Herramientas especializadas)
INSERT INTO Device (id, sn, description, model, manufacturer, status, project_id, laboratory_id) VALUES
-- ECU de Infotainment
(1000, 'SN-ECU-INF-4587', 'Unidad de Control de Infotainment de Tercera Generación', 'MIB-3.0', 'Continental', 'Operativo', 50, 100),
-- Analizador CAN
(1001, 'SN-BUS-9921', 'Analizador de Bus de Comunicación Automotriz (CAN/LIN/Ethernet)', 'CANoe-8', 'Vector', 'Mantenimiento', 50, 101),
-- ECU de Asistencia a la Conducción (ADAS)
(1002, 'SN-ECU-ADAS-1130', 'ECU para Control de Crucero Adaptativo y Asistencia de Carril', 'ACCM-v2', 'Delphi', 'Operativo', 51, 101),
-- Sensor de Lidar
(1003, 'SN-LIDAR-8845', 'Sensor LiDAR de Estado Sólido de Alta Resolución', 'LiDAR-HR04', 'Velodyne', 'Calibración', 51, 100),
-- Inversor (Parte del tren motriz EV)
(1004, 'SN-INV-5561', 'Inversor de Potencia para Motor Eléctrico de 400V', 'E-INVERTER-01', 'Bosch', 'Operativo', 52, 102);