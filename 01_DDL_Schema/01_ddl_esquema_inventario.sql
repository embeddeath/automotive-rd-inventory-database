-- 01_DDL_Esquema_Inventario.sql
-- Creación de la estructura física de la Base de Datos de Inventario R&D.
USE inventario_rd_automotriz; 

-- 1. TEAM_LEAD
CREATE TABLE Team_Lead (
    id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);

-- 2. CLIENT
CREATE TABLE Client (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

-- 3. LABORATORY
CREATE TABLE Laboratory (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    location VARCHAR(150) NOT NULL
);

-- 4. PROJECT (Depende de CLIENT y TEAM_LEAD)
CREATE TABLE Project (
    id INT PRIMARY KEY,
    name VARCHAR(150) NOT NULL UNIQUE,
    client_id INT NOT NULL,
    team_lead_id INT NOT NULL,
    
    FOREIGN KEY (client_id) REFERENCES Client(id),
    FOREIGN KEY (team_lead_id) REFERENCES Team_Lead(id)
);

-- 5. DEVICE_STATUS (Nuevo catálogo para Normalización del estado)
CREATE TABLE Device_Status (
    status_id INT PRIMARY KEY,
    description VARCHAR(50) NOT NULL UNIQUE -- Guarda el nombre del estado (Operativo, Mantenimiento)
);

-- 6. DEVICE_TYPE (Nuevo catálogo para Normalización de Modelo y Fabricante)
CREATE TABLE Device_Type (
    type_id INT PRIMARY KEY,
    model VARCHAR(100) NOT NULL,
    manufacturer VARCHAR(100) NOT NULL,
    description TEXT, -- Se mueve la descripción genérica a este catálogo
    
    -- Asegura que la combinación Modelo+Fabricante sea única
    UNIQUE (model, manufacturer)
);


-- 7. DEVICE (Actualizada con FKs. Depende de PROJECT, LABORATORY, DEVICE_STATUS y DEVICE_TYPE)
CREATE TABLE Device (
    id INT PRIMARY KEY,
    sn VARCHAR(50) NOT NULL UNIQUE, -- Serial Number debe ser único
    
    -- Claves foráneas para las relaciones 1:N
    project_id INT NOT NULL,-- FK para la asignación única al Proyecto
    laboratory_id INT NOT NULL,-- FK para la ubicación única al Laboratorio
    status_id INT NOT NULL,-- FK para el catálogo de estados
    type_id INT NOT NULL,-- FK para el catálogo de tipo/modelo
    
    FOREIGN KEY (project_id) REFERENCES Project(id),
    FOREIGN KEY (laboratory_id) REFERENCES Laboratory(id),
    FOREIGN KEY (status_id) REFERENCES Device_Status(status_id),
    FOREIGN KEY (type_id) REFERENCES Device_Type(type_id)
);