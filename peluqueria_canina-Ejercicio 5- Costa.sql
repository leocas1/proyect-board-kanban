-- 5 Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro 
SELECT dueno.nombre AS "Nombre del Dueño", perro.nombre AS "Nombre perro"
FROM dueno
JOIN perro
ON dueno.dni = perro.dni_dueno
WHERE dueno.nombre = "Pedro"

