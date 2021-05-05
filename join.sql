SELECT * FROM wishlist JOIN products ON wishlist.id_product = products.id;

SELECT wishlist.id, products.id, products.name, wishlist.description
FROM wishlist JOIN products ON wishlist.id_product = products.id;

SELECT w.id, p.id, p.name, w.description
FROM wishlist AS w JOIN products AS p ON w.id_product = p.id;

SELECT w.id AS id_wishlist,
       p.id AS id_product,
       p.name AS product_name,
       w.description AS wishlist_description
FROM wishlist AS w JOIN products AS p ON w.id_product = p.id;

DESC wishlist;

ALTER TABLE wishlist
ADD COLUMN id_customer INT;

ALTER TABLE wishlist
ADD CONSTRAINT fk_wishlist_customers
FOREIGN KEY (id_customer) REFERENCES customers(id);

SHOW CREATE TABLE wishlist;

SELECT * FROM wishlist;

SELECT * FROM customers;

UPDATE wishlist SET id = 1 WHERE id = 2;

UPDATE wishlist SET id_customer = 1 WHERE id = 1;

SELECT customers.email, products.id, products.name, wishlist.description
FROM wishlist
JOIN products ON (products.id = wishlist.id_product)
JOIN customers ON (customers.id = wishlist.id);

