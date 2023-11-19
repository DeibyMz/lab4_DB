-- Obtener departamento y titulo de instructores
SELECT departamento, titulo FROM instructor;

-- Obtener nombre y programa del estudiante con id_estudiante = 7656
SELECT nombre, programa FROM estudiante WHERE id_estudiante = 7656;

-- Obtener nombres de estudiantes que se han matriculado en el curso con id_curso = 837873
SELECT e.nombre
FROM estudiante e
JOIN matricula m ON e.id_estudiante = m.id_estudiante
WHERE m.id_curso = 837873;

-- Crear la vista better_students
CREATE VIEW mejores_estudiantes AS
SELECT m.id_estudiante, m.semestre, m.anio, MAX(m.calificacion) AS max_calificacion
FROM matricula m
WHERE m.anio BETWEEN 1900 AND 2018
GROUP BY m.id_estudiante, m.semestre, m.anio;

-- Consultar la vista better_students
SELECT * FROM mejores_estudiantes;
