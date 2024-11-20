/* Se agregan registos*/
INSERT INTO store (id, name, address) VALUES
(459, 'Store A', '123 Main St'),
(346, 'Store B', '456 Oak Ave'),
(549, 'Store C', '789 Maple Blvd'),
(876, 'Store D', '101 Pine Rd');

INSERT INTO product (id, name, price, description, store_id) VALUES
(301, 'Product 1', 19.99, 'High-quality product 1', 549),
(305, 'Product 5', 10.99, 'Budget-friendly product', 549),
(310, 'Product 8', 35.50, 'High value for price', 549);

INSERT INTO product (id, name, price, description, store_id) VALUES
(302, 'Product 2', 29.99, 'Best seller product 2', 876),
(303, 'Product 3', 15.49, 'Affordable and reliable', 876),
(304, 'Product 4', 45.00, 'Premium choice for customers', 876),
(306, 'Product 6', 60.00, 'Top-rated performance', 876),
(307, 'Product 7', 22.99, 'Durable and sustainable', 876);

-- Productos para la tienda con id 459
INSERT INTO product (id, name, price, description, store_id) VALUES
(9, 'Product A1', 25.99, 'Innovative design, popular item', 459),
(10, 'Product A2', 18.50, 'Compact and portable', 459),
(11, 'Product A3', 99.99, 'High-end, excellent quality', 459);

-- Productos para la tienda con id 346
INSERT INTO product (id, name, price, description, store_id) VALUES
(12, 'Product B1', 8.99, 'Everyday essential', 346),
(13, 'Product B2', 15.75, 'Customer favorite', 346),
(14, 'Product B3', 120.00, 'Exclusive product, premium features', 346);

-- Productos para la tienda con id 549
INSERT INTO product (id, name, price, description, store_id) VALUES
(15, 'Product C1', 5.99, 'Affordable and practical', 549),
(16, 'Product C2', 25.99, 'Perfect for outdoor activities', 549),
(17, 'Product C3', 60.49, 'Quality material, long-lasting', 549);

-- Productos para la tienda con id 876
INSERT INTO product (id, name, price, description, store_id) VALUES
(18, 'Product D1', 35.00, 'Modern design and efficient', 876),
(19, 'Product D2', 49.99, 'Multi-purpose, highly durable', 876),
(20, 'Product D3', 75.00, 'Top-rated by users', 876);

/* Se actualiza registro */
UPDATE product
SET name="Celular ET2019 -19xs", description = "Ideal para el trabajo y escuela"
WHERE id = 305;

/* Eliminar registro */
DELETE FROM product
WHERE id = 302;

/* Consulta de registros */
SELECT * FROM store;
SELECT * FROM product;
SELECT name, price, description FROM product;

/*  Recuperación de datos en MySQL (backups) */



