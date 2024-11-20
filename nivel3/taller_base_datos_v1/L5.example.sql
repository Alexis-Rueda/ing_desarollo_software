INSERT INTO store (id, name, address) VALUES
(987, 'Store E', '234 Elm St');

/* Ordenar datos */
SELECT * FROM product
ORDER BY price ASC;

SELECT * FROM product
ORDER BY price DESC;

/* Restringir datos */
SELECT * FROM product
LIMIT 5, 3;

/* Agrupar datos */
SELECT store_id, COUNT(*) FROM product
GROUP BY store_id;

/* Unión de datos */
SELECT * FROM store
INNER JOIN product ON store.id = product.store_id;

SELECT * FROM store
LEFT JOIN product ON store.id = product.store_id;

SELECT  * FROM store
RIGHT JOIN product ON store.id = product.store_id;

/* Consultas anidadas  */
SELECT * FROM store
WHERE id = (
	SELECT store_id FROM product WHERE id = 301
);

/* Vistas */
CREATE VIEW product_description AS
SELECT name, description, price  FROM product;

SELECT * FROM product_description;


/* Consulta de registros */
SELECT * FROM store;
SELECT * FROM product;