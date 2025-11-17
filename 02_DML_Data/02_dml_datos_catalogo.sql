-- 02_DML_Datos_Completos_Inventario_ASCII.sql
-- Script DML para la insercion de datos de catalogo y datos transaccionales de prueba.
USE inventario_rd_automotriz; 
-- Desactivar temporalmente la verificacion de claves foraneas para evitar errores de dependencia
SET FOREIGN_KEY_CHECKS = 0;

-- ******************************************************
-- SECCION 1: INSERCION DE CATALOGOS BASE
-- ******************************************************

-- 1. DEVICE_STATUS (Catalogo de Estados Operativos)
INSERT INTO Device_Status (status_id, description) VALUES 
(1, 'Operativo'),
(2, 'Mantenimiento'),
(3, 'Baja'),
(4, 'Calibracion');

-- 2. CLIENT (Clientes Patrocinadores - IDs 101-105)
INSERT INTO Client (id, name, email) VALUES
(101, 'Ford', 'ford_rd@email.com'),
(102, 'GM', 'gm_tech@email.com'),
(103, 'Volkswagen', 'vw_innovation@email.com'),
(104, 'Stellantis', 'stellantis_global@email.com'),
(105, 'Honda', 'honda_usa@email.com');

-- 3. TEAM_LEAD (Lideres de Equipo - IDs 501-505)
INSERT INTO Team_Lead (id, first_name, last_name) VALUES
(501, 'Fernando', 'Menchaca'),
(502, 'Miguel', 'Marquez'),
(503, 'Eduardo', 'Ortiz'),
(504, 'Jose', 'Solis'),
(505, 'Nicole', 'Arana');

-- 4. LABORATORY (Ubicaciones Fisicas - IDs 601-606)
INSERT INTO Laboratory (id, name, location) VALUES
(601, 'Electronics I', 'Building A, R&D Floor 2'),
(602, 'Electronics II', 'Building A, R&D Floor 3'),
(603, 'High Voltage', 'Building B, HV Area'),
(604, 'RF', 'Building C, Antenna Lab'),
(605, 'Software I', 'Remote Testing Center'),
(606, 'Software II', 'Simulation Bay');

-- 5. DEVICE_TYPE (ECUs limitados a clientes + Instrumentacion - IDs 1001-1040)
INSERT INTO Device_Type (type_id, model, manufacturer, description) VALUES
(1001, 'VCU-2026', 'GM', 'Unidad de Control de Vehiculo (VCU) de nueva generacion.'),
(1002, 'IPC-Mk8', 'Volkswagen', 'Cluster de instrumentos digital para plataforma modular.'),
(1003, 'BCM-Evo', 'Stellantis', 'Modulo de Control de Carroceria con tecnologia avanzada.'),
(1004, 'ADAS-Suite', 'Honda', 'Modulo principal para el sistema de asistencia a la conduccion.'),
(1005, 'PCM-GenX', 'Ford', 'Modulo de Control de Tren Motriz (Powertrain) de alto rendimiento.'),
(1006, 'Infotainment-1', 'GM', 'Sistema de infoentretenimiento basico para vehiculos urbanos.'),
(1007, 'Telematic-V3', 'Volkswagen', 'Unidad telematica para servicios de conectividad.'),
(1008, 'Charger-ECU', 'Stellantis', 'Unidad de control para el cargador a bordo (OBC) de vehiculos electricos.'),
(1009, 'Camera-Sensor', 'Honda', 'Modulo de camara frontal para el reconocimiento de senales.'),
(1010, 'Battery-Manag', 'Ford', 'Sistema de gestion de baterias (BMS) para vehiculos hibridos.'),
(1011, 'Gateway-Hwy', 'GM', 'Modulo de gateway para la comunicacion CAN/Ethernet de alta velocidad.'),
(1012, 'Headlight-Mod', 'Volkswagen', 'Unidad de control para faros adaptativos Matrix LED.'),
(1013, 'Seat-Module', 'Stellantis', 'Modulo de control electronico de asientos y memoria.'),
(1014, 'Display-HUD', 'Honda', 'Unidad de control para Head-Up Display avanzado.'),
(1015, 'Diagnostics-P', 'Ford', 'Herramienta de diagnostico de protocolo propietario.'),
(1016, 'Audio-Amp', 'GM', 'Amplificador de audio digital para sistemas premium.'),
(1017, 'Radar-5G', 'Volkswagen', 'Sensor de radar de 5a generacion para control de crucero.'),
(1018, 'Suspension-ECU', 'Stellantis', 'Unidad de control para suspension activa y control de altura.'),
(1019, 'Wireless-Ch', 'Honda', 'Modulo de carga inalambrica para dispositivos moviles.'),
(1020, 'ABS-Brake', 'Ford', 'Unidad de control electronico del sistema de frenado ABS/ESC.'),
(1021, 'MSO54', 'Tektronix', 'Osciloscopio de Senal Mixta, 5 series, 4 canales.'),
(1022, 'TRACE32-PowerView', 'Lauterbach', 'Debugger avanzado para microcontroladores ARM y RISC-V.'),
(1023, 'CANoe', 'Vector', 'Software para desarrollo, simulacion y prueba de redes CAN/Ethernet automotrices.'),
(1024, 'SDS2000X HD', 'Siglent', 'Osciloscopio de fosforo digital de alta resolucion, 12-bit.'),
(1025, '34461A', 'Agilent', 'Multimetro Digital de Precision de 6 1/2 digitos.'),
(1026, 'DPO72004C', 'Tektronix', 'Osciloscopio Digital de Ultra Alto Rendimiento.'),
(1027, 'TRACE32-iSystem', 'Lauterbach', 'Interfaz para depuracion y traza de sistemas en chip (SoC).'),
(1028, 'VN5610', 'Vector', 'Interfaz de bus de alto rendimiento para Automotive Ethernet.'),
(1029, 'SDG6052X', 'Siglent', 'Generador de Forma de Onda Arbitraria y Funciones, 500 MHz.'),
(1030, 'E4440A', 'Agilent', 'Analizador de Espectro de Senal de Alta Performance.'),
(1031, 'AWG70000A', 'Tektronix', 'Generador de Forma de Onda Arbitraria para senales complejas.'),
(1032, 'TRACE32-JTAG', 'Lauterbach', 'Herramienta de depuracion y testeo via interfaz JTAG.'),
(1033, 'CANalyzer', 'Vector', 'Herramienta de analisis y monitorizacion de bus CAN.'),
(1034, 'SPD3303X', 'Siglent', 'Fuente de Alimentacion DC programable, 3 salidas.'),
(1035, 'N9020A', 'Agilent', 'Analizador de Senal MXA para mediciones de RF.'),
(1036, 'RSA5100B', 'Tektronix', 'Analizador de Espectro en Tiempo Real.'),
(1037, 'PowerDebug', 'Lauterbach', 'Modulo de depuracion para sistemas de gestion de energia.'),
(1038, 'CANoe.FlexRay', 'Vector', 'Extension de CANoe para el desarrollo y prueba de redes FlexRay.'),
(1039, 'SHS800', 'Siglent', 'Osciloscopio de mano y multimetro (Handheld Scope).'),
(1040, 'DSOX3034A', 'Agilent', 'Osciloscopio de 4 canales, 350 MHz, serie InfiniiVision.');


-- ******************************************************
-- SECCION 2: INSERCION DE DATOS TRANSACCIONALES DE PRUEBA
-- ******************************************************

-- 6. PROJECT (Depende de Client y Team_Lead)
-- Columnas: id, name, client_id, team_lead_id
INSERT INTO Project (id, name, client_id, team_lead_id) VALUES
(1, 'Proyecto Raptor 2026', 101, 501),      -- Ford (101) asignado a Fernando (501)
(2, 'EV Battery Research', 102, 502),       -- GM (102) asignado a Miguel (502)
(3, 'ADAS Software Stack', 105, 503),       -- Honda (105) asignado a Eduardo (503)
(4, 'Next-Gen Cluster', 103, 504);          -- VW (103) asignado a Jose (504)


-- 7. DEVICE (Inventario de equipos - Depende de todas las tablas de catalogo)
-- Columnas: id, sn, project_id, laboratory_id, status_id, type_id
INSERT INTO Device (id, sn, project_id, laboratory_id, status_id, type_id) VALUES
-- ECUs/Modulos
(1, 'F-Raptor-SN001', 1, 601, 1, 1005),   -- Ford PCM (Op), Elec I, Proyecto Raptor
(2, 'F-Raptor-SN002', 1, 601, 1, 1005),   -- Ford PCM (Op), Elec I, Proyecto Raptor
(3, 'GM-BATT-VCU05', 2, 603, 2, 1001),    -- GM VCU (Maint), High Voltage, EV Research
(4, 'HON-ADAS-S01', 3, 605, 1, 1004),     -- Honda ADAS (Op), Software I, ADAS Stack
(5, 'VW-Cluster-ID4', 4, 602, 4, 1002),   -- VW Cluster (Calib), Elec II, Next-Gen Cluster
(6, 'STEL-BCM-Z9', 4, 603, 1, 1003),      -- Stellantis BCM (Op), High Voltage, Next-Gen Cluster
-- Herramientas de Testeo
(7, 'TEST-OSC-A7', 2, 602, 1, 1021),      -- Tektronix Scope (Op), Elec II, EV Research
(8, 'TEST-CAN-V1', 1, 601, 1, 1023),      -- Vector CANoe (Op), Elec I, Proyecto Raptor
(9, 'TEST-RF-G5', 3, 604, 1, 1035),       -- Agilent RF Analizer (Op), RF, ADAS Stack
(10, 'TEST-PSU-T3', 2, 602, 1, 1034);     -- Siglent PSU (Op), Elec II, EV Research

-- Reactivar la verificacion de claves foraneas
SET FOREIGN_KEY_CHECKS = 1;