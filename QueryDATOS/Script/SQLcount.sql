CREATE DATABASE BrayanSQL


CREATE TABLE colaboradores (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    provincia VARCHAR(50)
);

CREATE TABLE junta_directiva (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    fecha_nacimiento DATE,
    fecha_fallecimiento DATE NULL
);


INSERT INTO junta_directiva (id,nombre, fecha_nacimiento, fecha_fallecimiento) VALUES
(1,'José Figueres', '1906-09-25', '1990-06-08'),
(2,'Óscar Arias', '1940-09-13', NULL),
(3,'Laura Chinchilla', '1959-03-28', NULL),
(4,'Juan Mora Fernández', '1784-07-12', '1854-06-23');

INSERT INTO colaboradores (id, nombre, provincia) VALUES
(1, 'María Pérez', 'San José'),
(2, 'Carlos Ramírez', 'Alajuela'),
(3, 'Ana Gómez', 'Heredia'),
(4, 'Pedro Sánchez', 'San José'),
(5, 'Sofía Vargas', 'Cartago');

SELECT COUNT(*) AS cantidad_de_directores FROM junta_directiva; 

SELECT COUNT(*) AS cantidad_de_directores_fallecidos 
FROM junta_directiva 
WHERE fecha_fallecimiento IS NOT NULL;

SELECT COUNT(DISTINCT provincia) AS cantidad_de_provincias FROM colaboradores;