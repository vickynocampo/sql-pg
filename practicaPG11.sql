SELECT clientes.id AS cliente, MAX(facturas.total) AS factura_maxima
FROM clientes
INNER JOIN facturas ON clientes.id = facturas.id_cliente
WHERE clientes.id = 48