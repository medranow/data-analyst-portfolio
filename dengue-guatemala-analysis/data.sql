-- Data import pipeline for MSPAS dengue dataset 2012-2024
-- Raw file: enfermedades-transmitidas-por-vectores-2012-al-2024-dengue.csv

-- 1. Temporary table for raw CSV data
DROP TABLE IF EXISTS dengue_temp;

CREATE TABLE dengue_temp (
    year INTEGER,
    departamento TEXT,
    municipio TEXT,
    grupo_etario TEXT,
    sexo TEXT,
    casos INTEGER
);

-- 2. Import CSV into dengue_temp
-- Run these commands inside sqlite3:
-- .mode csv
-- .separator ;
-- .import --skip 1 enfermedades-transmitidas-por-vectores-2012-al-2024-dengue.csv dengue_temp

-- 3. Insert municipalities from raw data
INSERT OR IGNORE INTO municipios (municipio, departamento)
SELECT DISTINCT
    TRIM(municipio),
    TRIM(departamento)
FROM dengue_temp;

-- 4. Insert disease
INSERT OR IGNORE INTO enfermedades (nombre)
VALUES ('dengue');

-- 5. Insert aggregated cases into normalized table
INSERT INTO casos (municipio_id, semana, year, enfermedad_id, numero_casos)
SELECT
    m.id,
    0 AS semana,
    t.year,
    e.id,
    SUM(t.casos) AS numero_casos
FROM dengue_temp AS t
JOIN municipios AS m
    ON TRIM(UPPER(m.municipio)) = TRIM(UPPER(t.municipio))
JOIN enfermedades AS e
    ON e.nombre = 'dengue'
GROUP BY
    m.id,
    t.year,
    e.id;
