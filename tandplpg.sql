-- Trigger para matricula
CREATE OR REPLACE FUNCTION verificar_calificacion()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.calificacion < 1.00 OR NEW.calificacion > 5.00 THEN
        RAISE EXCEPTION 'El valor a guardar en calificacion es incorrecto o inválido';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER matricula_verificar_calificacion
BEFORE INSERT OR UPDATE ON matricula
FOR EACH ROW
EXECUTE FUNCTION verificar_calificacion();

CREATE OR REPLACE FUNCTION registrar_cambio_calificacion()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.calificacion <> OLD.calificacion THEN
        RAISE NOTICE 'La calificacion ha sido modificada de % a %', OLD.calificacion, NEW.calificacion;
    ELSE
        RAISE NOTICE 'El valor no ha sido modificado';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER matricula_registrar_cambio_calificacion
BEFORE UPDATE ON matricula
FOR EACH ROW
EXECUTE FUNCTION registrar_cambio_calificacion();

-- Procedimiento create_teaches
CREATE OR REPLACE PROCEDURE crear_ensena(id_instructor_arg INTEGER, id_curso_arg INTEGER)
AS $$
DECLARE
    info_curso RECORD;
BEGIN
    SELECT oc.id_curso, oc.id_seccion, oc.anio, oc.semestre
    INTO info_curso
    FROM oferta_curso oc
    WHERE oc.id_curso = id_curso_arg
    LIMIT 1;

    INSERT INTO ensena (id_curso, id_seccion, anio, semestre, id_instructor)
    VALUES (info_curso.id_curso, info_curso.id_seccion, info_curso.anio, info_curso.semestre, id_instructor_arg);
END;
$$ LANGUAGE plpgsql;
