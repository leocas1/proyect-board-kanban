#CONSULTA 12
INSERT INTO dueno VALUES("481235612","Ricardo","Mendez","7432555","Usuashia 3084");
Insert INTO perro (nombre, fecha_de_nacimiento, sexo, dni_dueno)VALUES("Lobo","2020-02-13","M","481235612");
select *FROM perro where sexo ="m" and fecha_de_nacimiento >"2020-01-01";