-- Inserciones para estudiante
INSERT INTO estudiante (id_estudiante, nombre, programa) VALUES
(nextval('id_estudiante_seq'), 'Estudiante1', 'Programa1'),
(nextval('id_estudiante_seq'), 'Estudiante2', 'Programa2'),
(nextval('id_estudiante_seq'), 'Estudiante3', 'Programa3'),
(nextval('id_estudiante_seq'), 'Estudiante4', 'Programa4'),
(nextval('id_estudiante_seq'), 'Estudiante5', 'Programa5');

-- Inserciones para instructor
INSERT INTO instructor (id_instructor, nombre, departamento, titulo) VALUES
(nextval('id_instructor_seq'), 'Profe1', 'Depto1', 'Titulo1'),
(nextval('id_instructor_seq'), 'Profe2', 'Depto2', 'Titulo2'),
(nextval('id_instructor_seq'), 'Profe3', 'Depto3', 'Titulo3'),
(nextval('id_instructor_seq'), 'Profe4', 'Depto4', 'Titulo4'),
(nextval('id_instructor_seq'), 'Profe5', 'Depto5', 'Titulo5');

-- Inserciones para curso
INSERT INTO curso (id_curso, titulo, syllabus, creditos) VALUES
(nextval('id_curso_seq'), 'Curso1', 'Syllabus1', 3),
(nextval('id_curso_seq'), 'Curso2', 'Syllabus2', 4),
(nextval('id_curso_seq'), 'Curso3', 'Syllabus3', 3),
(nextval('id_curso_seq'), 'Curso4', 'Syllabus4', 4),
(nextval('id_curso_seq'), 'Curso5', 'Syllabus5', 3);

-- Inserciones para oferta_curso
INSERT INTO oferta_curso (id_curso, id_seccion, anio, semestre, horario, aula) VALUES
(currval('id_curso_seq'), 1, 2023, 'Primavera', '10:00 AM', 'Aula1'),
(currval('id_curso_seq'), 2, 2023, 'Otoño', '2:00 PM', 'Aula2'),
(currval('id_curso_seq'), 1, 2022, 'Verano', '3:30 PM', 'Aula3'),
(currval('id_curso_seq'), 2, 2022, 'Otoño', '9:00 AM', 'Aula4'),
(currval('id_curso_seq'), 1, 2023, 'Primavera', '1:00 PM', 'Aula5');

-- Inserciones para matricula
INSERT INTO matricula (id_estudiante, id_curso, id_seccion, semestre, anio, calificacion) VALUES
(7488, currval('id_curso_seq'), 1, 'Primavera', 2023, 4.0),
(7656, currval('id_curso_seq'), 2, 'Otoño', 2023, 3.5),
(7488, currval('id_curso_seq'), 1, 'Verano', 2022, 3.0),
(7656, currval('id_curso_seq'), 2, 'Otoño', 2022, 4.5),
(7488, currval('id_curso_seq'), 1, 'Primavera', 2023, 3.8);
