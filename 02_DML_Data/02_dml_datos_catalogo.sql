-- Script DML para la insercion de datos de catalogo y datos transaccionales de prueba.
USE inventario_rd_automotriz; 
-- Desactivar temporalmente la verificacion de claves foraneas para evitar errores de dependencia
SET FOREIGN_KEY_CHECKS = 0;

-- SECCION 1: INSERCION DE CATALOGOS BASE

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
(1021, 'MSO54', 'Tektronix', 'Osciloscopio de Senal Mixta, 5 series, 4 canales.'),
(1022, 'TRACE32-PowerView', 'Lauterbach', 'Debugger avanzado para microcontroladores ARM y RISC-V.'),
(1023, 'CANoe', 'Vector', 'Software para desarrollo, simulacion y prueba de redes CAN/Ethernet automotrices.'),
(1024, 'SDS2000X HD', 'Siglent', 'Osciloscopio de fosforo digital de alta resolucion, 12-bit.'),
(1029, 'SDG6052X', 'Siglent', 'Generador de Forma de Onda Arbitraria y Funciones, 500 MHz.'),
(1032, 'TRACE32-JTAG', 'Lauterbach', 'Herramienta de depuracion y testeo via interfaz JTAG.'),
(1033, 'CANalyzer', 'Vector', 'Herramienta de analisis y monitorizacion de bus CAN.'),
(1034, 'SPD3303X', 'Siglent', 'Fuente de Alimentacion DC programable, 3 salidas.'),
(1039, 'SHS800', 'Siglent', 'Osciloscopio de mano y multimetro (Handheld Scope).');

