SELECT canciones.nombre, generos.nombre
FROM canciones
INNER JOIN generos ON canciones.id_genero = generos.id
WHERE generos.nombre = "Rock"

SELECT titulo, nombre
FROM albumes
INNER JOIN artistas ON id_artista = artistas.id
WHERE artistas.nombre = "Deep Purple";