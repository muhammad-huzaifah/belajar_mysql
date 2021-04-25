 INSERT INTO products(id, category, name, price, quantity)
 VALUES('P0006', 'Makanan', 'Bakso Rusuk', 25000, 200),
       ('P0007', 'Minuman', 'Es Jeruk', 10000, 300),
       ('P0008', 'Minuman', 'Es Campur', 15000, 500),
       ('P0009', 'Minuman', 'Es Teh Manis', 5000, 400),
       ('P0010', 'Lain-lain', 'Kerupuk', 2500, 300),
       ('P0011', 'Lain-lain', 'Keripik Udang', 10000, 300),
       ('P0012', 'Lain-lain', 'Es Krim', 5000, 200),
       ('P0013', 'Makanan', 'Mie Ayam Jamur', 25000, 50),
       ('P0014', 'Makanan', 'Bakso Telur', 25000, 150),
       ('P0015', 'Makanan', 'Bakso Jando', 25000, 300);

SELECT * FROM products;

SELECT * FROM products WHERE quantity > 100;

SELECT * FROM products WHERE quantity >= 100;

 SELECT * FROM products WHERE name = 'Mie Ayam Bakso';

 SELECT * FROM products WHERE category != 'Makanan';

 SELECT * FROM products WHERE category <> 'Minuman';

 SELECT * FROM products WHERE quantity > 100 AND price > 20000;

 SELECT * FROM products WHERE category = 'Makanan' AND price < 20000;

 SELECT * FROM products WHERE quantity > 100 OR price > 20000;

 SELECT * FROM products WHERE (category = 'Makanan' OR quantity > 500) AND price > 20000;

 SELECT * FROM products WHERE name LIKE '%Mie%';

 SELECT * FROM products WHERE name LIKE '%Bakso%';

 SELECT * FROM products WHERE name LIKE '%usu%';

 SELECT * FROM products WHERE description IS NULL;

 SELECT * FROM products WHERE description IS NOT NULL;

SELECT * FROM products WHERE price BETWEEN 10000 AND 20000;

SELECT * FROM products WHERE price NOT BETWEEN 10000 AND 20000;

SELECT * FROM products WHERE category IN ('Makanan', 'Minuman');

SELECT * FROM products WHERE category = 'Makanan' OR category = 'Minuman';

SELECT * FROM products WHERE category NOT IN ('Makanan', 'Minuman');
