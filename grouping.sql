SELECT COUNT(id) AS 'Total Product', category FROM products GROUP BY category;

SHOW TABLES ;

SELECT * FROM products;

SELECT MAX(price) AS 'Harga Termahal', category FROM products GROUP BY category;

SELECT MIN(price) AS 'Harga Termahal', category FROM products GROUP BY category;

SELECT AVG(price) AS 'Harga Termurah', category FROM products GROUP BY category;

SELECT SUM(quantity) AS 'Total Stock', category FROM products GROUP BY category;

SELECT COUNT(id) AS 'Total', category FROM products GROUP BY category HAVING Total > 5;

SELECT COUNT(id) AS 'Total', category FROM products GROUP BY category HAVING Total > 1;