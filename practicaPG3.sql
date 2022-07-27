SELECT generos.nombre, COUNT(*)
FROM canciones
INNER JOIN generos ON id_genero = generos.id
GROUP BY nombre