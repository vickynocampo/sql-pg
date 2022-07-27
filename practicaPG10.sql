SELECT artistas.nombre AS Banda, albumes.titulo AS Album, canciones.nombre AS Cancion, milisegundos AS Duracion
FROM canciones
INNER JOIN albumes ON id_album = albumes.id
INNER JOIN artistas ON artistas.id = id_artista
WHERE albumes.titulo = "Let There Be Rock";