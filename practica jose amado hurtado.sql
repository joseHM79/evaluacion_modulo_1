-- Usa esta estructura de tabla:

CREATE TABLE alumnos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  edad INT,
  promedio DECIMAL(4,2),
  genero CHAR(1),
  fecha_ingreso DATE
);


-- Parte A: Lenguaje DDL (10 puntos)
-- 1. Escribe el comando SQL para crear la tabla anterior. (5 pts)
CREATE TABLE alumnos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  edad INT,
  promedio DECIMAL(4,2),
  genero CHAR(1),
  fecha_ingreso DATE
);

-- 2. Agrega una restricción para que el promedio no pueda ser menor a 6. (5 pts)
SELECT AVG(promedio) 
FROM alumnos
WHERE promedio > 6.0
;


-- Parte B: Inserción y actualización (20 puntos)
-- 3. Inserta tres alumnos con datos reales. (10 pts)
INSERT INTO alumnos 
(nombre,edad,promedio,genero,fecha_ingreso) 
values ('Juan Pérez',20, 6.1, 'M','2000-07-22'),
('Ana Gómez',21, 9.1, 'F','2025-08-23'),
('LuisMartínez',22, 6.1, 'M','2006-09-24');


-- 4. Actualiza el promedio de un alumno a 9.5. (10 pts)
UPDATE alumnos
SET promedio = 10.0
WHERE id = 1 OR nombre = 'Juan Pérez';

-- Parte C: Consultas básicas (30 puntos)
-- 5. Muestra todos los alumnos. (5 pts)
SELECT * FROM alumnos;

-- 6. Muestra solo los nombres de las alumnas. (5 pts)
SELECT * 
FROM alumnos
WHERE genero = 'F'
;

-- 7. Muestra los alumnos con promedio mayor a 8. (5 pts)
SELECT AVG(promedio) 
FROM alumnos
WHERE promedio > 8.0
;


-- 8.Muestra los alumnos ordenados por fecha de ingreso. (5 pts)
SELECT * 
FROM alumnos
ORDER BY fecha_ingreso DESC
;

-- 9. Muestra el nombre y promedio con alias. (5 pts)
SELECT nombre AS Nombre_Alumno,
promedio AS Promedio_Alumno
FROM alumnos;

-- 10. Busca alumnos cuyo nombre comience con "A". (5 pts)
SELECT * 
FROM alumnos
WHERE nombre LIKE 'A%';
;


-- Parte D: Funciones y operadores (20 puntos)
-- 11. Cantidad total de alumnos. (5 pts)
SELECT COUNT(*) 
FROM alumnos
;

-- 12. Promedio general. (5 pts)
SELECT AVG(promedio) 
FROM alumnos
;

-- 13. Alumno con menor promedio. (5 pts)
SELECT * 
FROM alumnos
ORDER BY fecha_ingreso ASC
LIMIT 3
;

-- 14. Alumnos que ingresaron este año. (5 pts)
SELECT * 
FROM alumnos
WHERE fecha_ingreso >= '2025-01-01'
;







































