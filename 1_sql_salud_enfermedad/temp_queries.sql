-- 1. Total de casos por municipio
SELECT
    "municipios"."municipio",
    SUM("casos"."numero_casos") AS "total_casos"
FROM "municipios"
JOIN "casos"
    ON "municipios"."id" = "casos"."municipio_id"
GROUP BY "municipios"."municipio"
ORDER BY "total_casos" DESC;

-- 2. Total de casos por year
SELECT
    "year",
    SUM("numero_casos") AS "total_casos"
FROM "casos"
GROUP BY "year"
ORDER BY "year";

-- 3. Total de casos por enfermedad
SELECT
    "enfermedades"."nombre" AS "enfermedad",
    SUM("casos"."numero_casos") AS "total_casos"
FROM "casos"
JOIN "enfermedades"
    ON "casos"."enfermedad_id" = "enfermedades"."id"
GROUP BY "enfermedades"."nombre"
ORDER BY "total_casos" DESC;

-- 4. Incidencia por municipio y year
SELECT
    "municipios"."municipio",
    "casos"."year",
    SUM("casos"."numero_casos") AS "total_casos",
    "poblacion"."poblacion",
    ROUND(
        SUM("casos"."numero_casos") * 100000.0 / "poblacion"."poblacion",
        2
    ) AS "incidencia_por_100000"
FROM "casos"
JOIN "municipios"
    ON "casos"."municipio_id" = "municipios"."id"
JOIN "poblacion"
    ON "casos"."municipio_id" = "poblacion"."municipio_id"
    AND "casos"."year" = "poblacion"."year"
GROUP BY
    "municipios"."municipio",
    "casos"."year",
    "poblacion"."poblacion"
ORDER BY
    "casos"."year",
    "incidencia_por_100000" DESC;
