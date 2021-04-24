INSERT INTO products(id, name, price, quantity)
VALUES ('P0009', 'Mie Ayam Original', 15000, 100);

SELECT * FROM products;

DELETE FROM products
WHERE id='P0009';

SELECT * FROM products;