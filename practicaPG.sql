SELECT canciones.nombre, generos.nombre
FROM canciones
INNER JOIN generos ON canciones.id_genero = generos.id
WHERE generos.nombre = "Rock";

SELECT titulo, nombre
FROM albumes
INNER JOIN artistas ON id_artista = artistas.id
WHERE artistas.nombre = "Deep Purple";

SELECT canciones.nombre, tipos_de_medio.nombre
FROM canciones
INNER JOIN tipos_de_medio ON id_tipo_de_medio = tipos_de_medio.id
WHERE tipos_de_medio.nombre = "MPEG audio file";

SELECT generos.nombre, COUNT(*)
FROM canciones
INNER JOIN generos ON id_genero = generos.id
GROUP BY nombre;

SELECT COUNT(primer_nombre)z, pais
FROM clientes
WHERE pais LIKE "Bra%";

SELECT SUM(total)
FROM facturas;

SELECT MIN(bytes)
FROM canciones;

SELECT pais_de_facturacion, SUM(total)
FROM facturas
GROUP BY pais_de_facturacion
HAVING SUM(total) > 100;

SELECT ciudad, COUNT(ciudad)
FROM clientes
GROUP BY ciudad
HAVING COUNT(ciudad) >=2;

SELECT  generos.nombre, COUNT(canciones.nombre)
FROM canciones
INNER JOIN generos ON id_genero = generos.id
GROUP BY generos.nombre;

SELECT artistas.nombre AS Banda, albumes.titulo AS Album, canciones.nombre AS Cancion, milisegundos AS Duracion
FROM canciones
INNER JOIN albumes ON id_album = albumes.id
INNER JOIN artistas ON artistas.id = id_artista
WHERE albumes.titulo = "Let There Be Rock";

SELECT clientes.id AS cliente, MAX(facturas.total) AS factura_maxima
FROM clientes
INNER JOIN facturas ON clientes.id = facturas.id_cliente
WHERE clientes.id = 48;