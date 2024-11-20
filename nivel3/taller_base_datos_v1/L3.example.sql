CREATE DATABASE store;

USE store;

CREATE TABLE store(
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(50) NULL
);

DROP TABLE store;

-- DROP DATABASE store;

CREATE TABLE product(
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DOUBLE NOT NULL,
    description VARCHAR(150) NULL
    -- store_id INT NOT NULL,
);

ALTER TABLE product
ADD store_id INT NOT NULL,
ADD remove_property INT NOT NULL;

ALTER TABLE product
DROP COLUMN remove_property;

DESCRIBE product;

ALTER TABLE product
ADD CONSTRAINT fk_store_product
FOREIGN KEY (store_id) REFERENCES store(id);