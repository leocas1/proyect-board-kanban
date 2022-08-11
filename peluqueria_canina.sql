CREATE DATABASE peluqueria_canina;
USE peluqueria_canina;

# TABLA DUEÑO #

CREATE TABLE dueno (
dni int primary key not null,
nombre varchar(40) not null,
apellido varchar(40) not null,
telefono int not null,
direccion varchar(100) not null
);

# TABLA PERRO #

CREATE TABLE perro (
id_perro int primary key auto_increment,
nombre varchar(40) not null,
fecha_de_nacimiento date not null,
sexo enum('M','F') not null,
dni_dueno int not null,
constraint fk_dni foreign key (dni_dueno) references dueno(dni)
);

# TABLA HISTORIAL #

CREATE TABLE historial (
id_historial int primary key auto_increment,
fecha date not null,
perro int not null,
descripcion varchar(200),
monto int,
constraint fk_id_p foreign key (perro) references perro(id_perro)
);



# INSERCIONES #

# 2 #

INSERT INTO dueno VALUES (45184238, 'Maximiliano','Tabaez',1178479981,'Jose Hernandez 1819');

INSERT INTO perro (nombre, fecha_de_nacimiento, sexo, dni_dueno) VALUES ('Tito', '2007-04-13' ,'M',45184238);

INSERT INTO dueno VALUES (44178239, 'Jose','Galindez',71482978,'Maria Korcheck 2478');

INSERT INTO dueno VALUES (39876342, 'Pedro','Marquez',71489987,'Marcos de ALdaño 2876');

INSERT INTO perro (nombre, fecha_de_nacimiento, sexo, dni_dueno) VALUES ('Maite', '2003-05-27' ,'F',44178239);
INSERT INTO perro (nombre, fecha_de_nacimiento, sexo, dni_dueno) VALUES ('Paco', '2005-09-17' ,'M',44178239);
INSERT INTO perro (nombre, fecha_de_nacimiento, sexo, dni_dueno) VALUES ('Mortadela', '2017-06-14' ,'M',39876342);

INSERT INTO historial (fecha, perro, descripcion, monto) VALUES ('2020-06-27',1,'Castracion',4500);
INSERT INTO historial (fecha, perro, descripcion, monto) VALUES ('2015-03-28',3,'Intoxicacion',6600);
INSERT INTO historial (fecha, perro, descripcion, monto) VALUES ('2019-11-08',2,'Control',1000);
INSERT INTO historial (fecha, perro, descripcion, monto) VALUES ('2019-07-23',4,'Control',1000);

# 3 #

SELECT fecha, perro FROM historial WHERE (year(now()) - year(fecha))  > 5;  

DELETE FROM historial WHERE (year(now()) - year(fecha))  > 5; 

DELETE FROM perro WHERE id_perro = 3;

SELECT * FROM perro;
