create database veterinaria;
show databases;
use veterinaria;
#tabla dueño  
CREATE TABLE DUEÑO(
DNI varchar(10)primary key not null,
Nombre varchar(9)not null,
Apellido varchar(25)not null,
Telefono varchar(100)not null,
Direccion varchar(25)not null
);
#tabla perro
CREATE TABLE PERRO(
	idPerro int auto_increment not null primary key ,
    Nombre varchar (25)not null,
    Fecha_Nacimiento DATE not null,
    Sexo varchar(25)not null,
    DNI_dueño varchar(10)not null,
    foreign key(DNI_Dueño)references DUEÑO(DNI)
);
#tabla historial
create table Historial(
	id_historial int auto_increment not null,
    Fecha date not null,
    Perro int not null,
    Descripcion varchar(100) not null,
    monto int not null,
    primary key(id_historial),
    foreign key(perro)references Perro(idPerro)
    );
#Insercciones
select *from DUEÑO;
select*from PERRO;
INSERT INTO DUEÑO(DNI,Nombre,apellido,telefono,Direccion)values("48248975","carlos","riquelme","3545232523","guanasacate 3084"),
("48248665","roberto","carrera","3515432523","bajada pucara 3084");
INSERT INTO DUEÑO(DNI,Nombre,apellido,telefono,Direccion)values("481235612","ricardo","mendez","3515432555","usuashia 3084");
INSERT INTO PERRO(Nombre,Fecha_Nacimiento,Sexo,DNI_Dueño)values("lolo","2008-02-12","macho","48248975"),("brown","2018-02-15","macho","48248665");
INSERT INTO PERRO(Nombre,Fecha_Nacimiento,Sexo,DNI_Dueño)values("lobo","2020-02-13","macho","481235612");
#consulta 12
select *FROM PERRO where Sexo ="macho" and Fecha_Nacimiento >"2020-01-01";
#claves foraneas
ALTER TABLE PERRO
    ADD CONSTRAINT `fk_DNI_dueño` FOREIGN KEY (DNI_dueño)
        REFERENCES DUEÑO(DNI);
ALTER TABLE historial
    ADD CONSTRAINT `fk_Perro` FOREIGN KEY (Perro)
        REFERENCES PERRO(idPerro);
#
SELECT p.Nombre,P.Fecha_Nacimiento,p.DNI_dueño
FROM PERRO as p
JOIN DUEÑO as d
	ON p.DNI_dueño = d.DNI
WHERE d.Nombre LIKE '%ricardo%';



			

    