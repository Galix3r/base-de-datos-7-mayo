-- Crear base de datos prueba g1

--permite crear una base de datos(SQL-LDD)
CREATE DATABASE prueba1;

--utilizar base ede datos
USE prueba1;

-- crear una tabla (SQL-LDD)

CREATE TABLE alumno (
id INT NOT NULL,
nombre VARCHAR(20) NOT NULL,
edad INT not null,
matricula INT NOT NULL,
direccion VARCHAR(20) NULL.
CONSTRAINT pk_alumno
PRIMARY KEY (id),
CONSTRAINT unique_matricula
UNIQUE (matricula)
);

-- AGREGAR 2 ALUMNOS(SQL-LMD)
INSERT INTO alumno (id, nombre, edad, matricula, direccion)
VALUES (1, 'ARCADIA', 65 , 123456, 'CALLE ZIGUATANEJO'),
       (2, 'NARNIA', 19 , 123457, 'CALLE BARRIO');
       
--SELECCIONAR LOS ALUMNOS(SQL-LMD)
SELECT *
FROM alumno;
SET nombre = 'MONICO'
WHERE id = 1;