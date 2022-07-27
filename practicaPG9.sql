SELECT  generos.nombre, COUNT(canciones.nombre)
FROM canciones
INNER JOIN generos ON id_genero = generos.id
GROUP BY generos.nombre