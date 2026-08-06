INSERT INTO municipios (municipio, departamento) VALUES
('Quetzaltenango', 'Quetzaltenango'),
('Coatepeque', 'Quetzaltenango');

INSERT INTO enfermedades (nombre) VALUES
('dengue'),
('malaria');

INSERT INTO poblacion (municipio_id, year, poblacion) VALUES
(1, 2024, 180000),
(2, 2024, 120000);

INSERT INTO casos (municipio_id, semana, year, enfermedad_id, numero_casos) VALUES
(1, 1, 2024, 1, 30),
(1, 2, 2024, 1, 45),
(2, 1, 2024, 1, 60),
(2, 2, 2024, 2, 20);