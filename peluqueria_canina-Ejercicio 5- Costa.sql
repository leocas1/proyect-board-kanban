CREATE DATABASE peluqueria_canina;
USE peluqueria_canina;

CREATE TABLE dueno (
dni int primary key not null,
nombre varchar(40) not null,
apellido varchar(40) not null,
telefono int not null,
direccion varchar(100) not null
);

CREATE TABLE perro (
id_perro int primary key auto_increment,
nombre varchar(40) not null,
fecha_de_nacimiento date not null,
sexo enum('M','F') not null,
dni_dueno int not null,
constraint fk_dni foreign key (dni_dueno) references dueno(dni)
);

CREATE TABLE historial (
id_historial int primary key auto_increment,
fecha date not null,
perro int not null,
descripcion varchar(200),
monto int,
constraint fk_id_p foreign key (perro) references perro(id_perro)
);

-- datos #
INSERT INTO dueno VALUES (35123646, 'David','Costa',154647572,'Rivadavia 542 e');
INSERT INTO dueno VALUES (35114410, 'Nico','Aballay',155644472,'Alem 102 s');
INSERT INTO dueno VALUES (33334410, 'David','Costa',154647572,'Urquiza 30 n');
INSERT INTO dueno VALUES (35924410, 'Nico','Aballay',155644472,'Alem 102 s');
INSERT INTO dueno VALUES (35114417, 'Nico','Grimal',154647147,'Alem 102 s');

INSERT INTO perro (nombre, fecha_de_nacimiento, sexo, dni_dueno) VALUES ('Tito', '2007-04-13' ,'M',35123646);
INSERT INTO perro (nombre, fecha_de_nacimiento, sexo, dni_dueno) VALUES ('Maite', '2003-05-27' ,'F',35114410);
INSERT INTO perro (nombre, fecha_de_nacimiento, sexo, dni_dueno) VALUES ('Paco', '2005-09-17' ,'M',33334410);
INSERT INTO perro (nombre, fecha_de_nacimiento, sexo, dni_dueno) VALUES ('Mortadela', '2017-06-14' ,'M',35924410);
INSERT INTO perro (nombre, fecha_de_nacimiento, sexo, dni_dueno) VALUES ('Paco', '2005-09-17' ,'M',35114417);
INSERT INTO perro (nombre, fecha_de_nacimiento, sexo, dni_dueno) VALUES ('Mortadela', '2017-06-14' ,'M',35114417);

INSERT INTO historial (fecha, perro, descripcion, monto) VALUES ('2021-01-22',2,'Consulta por estornudos constates',2900);
INSERT INTO historial (fecha, perro, descripcion, monto) VALUES ('2020-05-03',3,'escoriaciones menores',1260);
INSERT INTO historial (fecha, perro, descripcion, monto) VALUES ('2019-12-15',1,'inflamacion abdominal',3000);
INSERT INTO historial (fecha, perro, descripcion, monto) VALUES ('2017-02-01',4,'cuadro alergico',4500);

-- Ejercicios
SELECT fecha, perro FROM historial WHERE (year(now()) - year(fecha))  > 5;  
DELETE FROM historial WHERE (year(now()) - year(fecha))  > 5; 
DELETE FROM perro WHERE id_perro = 3;
SELECT * FROM perro;
 
SELECT dueno.nombre AS "Nombre del Dueño", perro.nombre AS "Nombre perro"
FROM dueno
JOIN perro
ON dueno.dni = perro.dni_dueno
WHERE dueno.nombre = "Pedro"

UPDATE dueno
SET direccion = "Libertad 123"
WHERE dueno.dni =12345678


