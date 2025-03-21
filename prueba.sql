CREATE DATABASE PRUEBA;

CREATE USER 'prueba'@'%' IDENTIFIED BY 'Mero_8439*';

GRANT ALL PRIVILEGES ON PRUEBA.* TO 'prueba'@'%'; WITH GRANT OPTION;
USE PRUEBA;

CREATE TABLE asignaturas(
    asignatura_id INT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    semestre INT DEFAULT NULL
);

CREATE TABLE estudiante(
    numero_cuenta INT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL
);

CREATE TABLE inscripcion(
    curso_id INT PRIMARY KEY,
    calificacion DECIMAL(4,2) DEFAULT NULL,
    asignatura_id INT,
    numero_cuenta INT,
    FOREIGN KEY (asignatura_id) REFERENCES asignaturas(asignatura_id),
    FOREIGN KEY (numero_cuenta) REFERENCES estudiante(numero_cuenta)
);

SELECT COUNT(*) FROM asignaturas;