-- Eliminar triggers y funciones
DROP TRIGGER IF EXISTS matricula_verificar_calificacion ON matricula;
DROP FUNCTION IF EXISTS verificar_calificacion();

DROP TRIGGER IF EXISTS matricula_registrar_cambio_calificacion ON matricula;
DROP FUNCTION IF EXISTS registrar_cambio_calificacion();

-- Eliminar procedimiento
DROP PROCEDURE IF EXISTS crear_ensena;

-- Eliminar tablas
DROP TABLE IF EXISTS requiere;
DROP TABLE IF EXISTS ensena;
DROP TABLE IF EXISTS matricula;
DROP TABLE IF EXISTS oferta_curso;
DROP TABLE IF EXISTS curso;
DROP TABLE IF EXISTS instructor;
DROP TABLE IF EXISTS estudiante;

-- Eliminar secuencias
DROP SEQUENCE IF EXISTS id_estudiante_seq;
DROP SEQUENCE IF EXISTS id_curso_seq;
