SELECT pais_de_facturacion, SUM(total)
FROM facturas
GROUP BY pais_de_facturacion
HAVING SUM(total) > 100