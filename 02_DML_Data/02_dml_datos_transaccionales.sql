USE inventario_rd_automotriz; 
SET sql_notes = 0;
SET FOREIGN_KEY_CHECKS = 0;


-- 6. PROJECT (10 entradas totales)
INSERT INTO Project (id, name, client_id, team_lead_id) VALUES
(1, 'Proyecto Raptor 2026', 101, 501),       -- Ford / Fernando
(2, 'EV Battery Research', 102, 502),        -- GM / Miguel
(3, 'ADAS Software Stack', 105, 503),        -- Honda / Eduardo
(4, 'Next-Gen Cluster', 103, 504),           -- VW / Jose
(5, 'Stellantis Platform Integration', 104, 505), -- Stellantis / Nicole
(6, 'Hybrid Powertrain Calibration', 101, 502),  -- Ford / Miguel
(7, 'In-Vehicle Networking Testing', 102, 504),  -- GM / Jose
(8, 'VW MQB Audio Systems', 103, 501),        -- VW / Fernando
(9, 'Honda Sensing 3.0', 105, 503),           -- Honda / Eduardo
(10, 'Stellantis Connectivity Module', 104, 505);-- Stellantis / Nicole


-- 7. DEVICE (36 entradas totales - todos los type_id son compatibles con el catalogo anterior)
INSERT INTO Device (id, sn, project_id, laboratory_id, status_id, type_id) VALUES
-- Dispositivos Iniciales
(1, 'F-Raptor-SN001', 1, 601, 1, 1005),
(2, 'F-Raptor-SN002', 1, 601, 1, 1005),
(3, 'GM-BATT-VCU05', 2, 603, 2, 1001),
(4, 'HON-ADAS-S01', 3, 605, 1, 1004),
(5, 'VW-Cluster-ID4', 4, 602, 4, 1002),
(6, 'STEL-BCM-Z9', 4, 603, 1, 1003),
(7, 'TEST-OSC-A7', 2, 602, 1, 1021),
(8, 'TEST-CAN-V1', 1, 601, 1, 1023),
(9, 'TEST-PSU-T3-OLD', 2, 602, 1, 1034), 

-- Nuevas Entradas de ECUs
(10, 'STEL-BCM-Z9-B', 5, 603, 1, 1003),
(11, 'FORD-PCM-B', 6, 601, 2, 1005),
(12, 'VW-IPC-C', 8, 602, 1, 1002),
(13, 'HON-ADAS-S02', 9, 605, 4, 1004),
(14, 'GM-VCU-06', 7, 603, 1, 1001),
(15, 'FORD-PCM-C', 6, 601, 1, 1005),
(16, 'VW-IPC-D', 4, 602, 1, 1002),
(17, 'HON-ADAS-S03', 3, 605, 1, 1004),
(18, 'STEL-BCM-Z9-C', 5, 603, 1, 1003),
(19, 'GM-VCU-07', 2, 603, 1, 1001),

-- Nuevas Entradas de Instrumentacion
(20, 'TOOL-SCOPE-D4', 6, 602, 1, 1021),
(21, 'TOOL-DGR-A1', 7, 605, 1, 1022),
(22, 'TOOL-CANOE-B3', 8, 601, 1, 1023),
(23, 'TOOL-SCOPE-HD', 9, 602, 4, 1024),
(24, 'TOOL-FG-B2', 10, 604, 1, 1029),
(25, 'TOOL-JTAG-C3', 1, 605, 1, 1032),
(26, 'TOOL-CANALYZER-D4', 2, 601, 3, 1033),
(27, 'TOOL-PSU-E5', 3, 603, 1, 1034),
(28, 'TOOL-HANDSCOPE-F6', 4, 602, 1, 1039),
(29, 'TOOL-SCOPE-G7', 5, 602, 1, 1021),
(30, 'TOOL-DGR-H8', 6, 605, 1, 1022),
(31, 'TOOL-CANOE-I9', 7, 601, 1, 1023),
(32, 'TOOL-SCOPE-J10', 8, 602, 1, 1024),
(33, 'TOOL-FG-K11', 9, 604, 1, 1029),
(34, 'TOOL-JTAG-L12', 10, 605, 1, 1032),
(35, 'TOOL-CANALYZER-M13', 1, 601, 1, 1033),
(36, 'TOOL-PSU-N14', 2, 603, 1, 1034);

-- Reactivar la verificacion de claves foraneas y notas
SET FOREIGN_KEY_CHECKS = 1;
SET sql_notes = 1;