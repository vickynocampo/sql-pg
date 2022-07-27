SELECT ciudad, COUNT(ciudad)
FROM clientes
GROUP BY ciudad
HAVING COUNT(ciudad) >=2