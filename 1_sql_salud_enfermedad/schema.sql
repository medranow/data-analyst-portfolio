CREATE TABLE municipios (
    "id" INTEGER PRIMARY KEY,
    "municipio" TEXT NOT NULL,
    "departamento" TEXT NOT NULL
);

CREATE TABLE enfermedades (
    "id" INTEGER PRIMARY KEY,
    "nombre" TEXT NOT NULL UNIQUE
);

CREATE TABLE poblacion (
    "municipio_id" INTEGER NOT NULL,
    "year" INTEGER NOT NULL,
    "poblacion" INTEGER NOT NULL,
    PRIMARY KEY ("municipio_id", "year"),
    FOREIGN KEY ("municipio_id") REFERENCES "municipios"("id")
);

CREATE TABLE casos (
    "municipio_id" INTEGER NOT NULL,
    "semana" INTEGER NOT NULL,
    "year" INTEGER NOT NULL,
    "enfermedad_id" INTEGER NOT NULL,
    "numero_casos" INTEGER NOT NULL,
    PRIMARY KEY ("municipio_id", "semana", "year", "enfermedad_id"),
    FOREIGN KEY ("municipio_id") REFERENCES "municipios"("id"),
    FOREIGN KEY ("enfermedad_id") REFERENCES "enfermedades"("id")
);