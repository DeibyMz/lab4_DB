-- Creación de tablas
CREATE TABLE estudiante (
    id_estudiante SERIAL PRIMARY KEY,
    nombre VARCHAR(255),
    programa VARCHAR(255)
);

CREATE TABLE instructor (
    id_instructor SERIAL PRIMARY KEY,
    nombre VARCHAR(255),
    departamento VARCHAR(255),
    titulo VARCHAR(255)
);

CREATE TABLE curso (
    id_curso SERIAL PRIMARY KEY,
    titulo VARCHAR(255),
    syllabus TEXT,
    creditos INTEGER
);

CREATE TABLE oferta_curso (
    id_curso INTEGER REFERENCES curso(id_curso),
    id_seccion INTEGER,
    anio INTEGER,
    semestre VARCHAR(255),
    horario VARCHAR(255),
    aula VARCHAR(255),
    PRIMARY KEY (id_curso, id_seccion, anio, semestre)
);

CREATE TABLE matricula (
    id_estudiante INTEGER REFERENCES estudiante(id_estudiante),
    id_curso INTEGER REFERENCES curso(id_curso),
    id_seccion INTEGER,
    semestre VARCHAR(255),
    anio INTEGER,
    calificacion NUMERIC(3,2) CHECK (calificacion > 1.00 AND calificacion < 5.00),
    PRIMARY KEY (id_estudiante, id_curso, id_seccion, semestre, anio)
);

CREATE TABLE ensena (
    id_curso INTEGER REFERENCES curso(id_curso),
    id_seccion INTEGER,
    semestre VARCHAR(255),
    anio INTEGER,
    id_instructor INTEGER REFERENCES instructor(id_instructor),
    PRIMARY KEY (id_curso, id_seccion, semestre, anio, id_instructor)
);

CREATE TABLE requiere (
    id_curso_principal INTEGER REFERENCES curso(id_curso),
    id_prerequisito INTEGER REFERENCES curso(id_curso),
    PRIMARY KEY (id_curso_principal, id_prerequisito)
);

-- Creación de secuencias
CREATE SEQUENCE id_estudiante_seq START WITH 7488 INCREMENT BY 168;
CREATE SEQUENCE id_curso_seq START WITH 837827 INCREMENT BY 23;
