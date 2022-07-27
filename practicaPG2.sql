SELECT canciones.nombre, tipos_de_medio.nombre
FROM canciones
INNER JOIN tipos_de_medio ON id_tipo_de_medio = tipos_de_medio.id
WHERE tipos_de_medio.nombre = "MPEG audio file"