-- Total dengue cases by year
SELECT
    c.year,
    SUM(c.numero_casos) AS total_casos
FROM casos AS c
GROUP BY c.year
ORDER BY c.year;

-- Top municipalities by total cases
SELECT
    m.municipio,
    SUM(c.numero_casos) AS total_casos
FROM casos AS c
JOIN municipios AS m
    ON c.municipio_id = m.id
GROUP BY m.municipio
ORDER BY total_casos DESC
LIMIT 10;

-- Top municipalities by total cases including department
SELECT
    m.municipio,
    m.departamento,
    SUM(c.numero_casos) AS total_casos
FROM casos AS c
JOIN municipios AS m
    ON c.municipio_id = m.id
GROUP BY
    m.municipio,
    m.departamento
ORDER BY total_casos DESC
LIMIT 10;

-- Top municipalities in 2024
SELECT
    m.municipio,
    m.departamento,
    SUM(c.numero_casos) AS total_casos
FROM casos AS c
JOIN municipios AS m
    ON c.municipio_id = m.id
WHERE c.year = 2024
GROUP BY
    m.municipio,
    m.departamento
ORDER BY total_casos DESC
LIMIT 10;

-- Dengue cases by department
SELECT
    m.departamento,
    SUM(c.numero_casos) AS total_casos
FROM casos AS c
JOIN municipios AS m
    ON c.municipio_id = m.id
GROUP BY m.departamento
ORDER BY total_casos DESC;
