SELECT AVG (price) FROM products;

SELECT * FROM products WHERE price > 14975;

SELECT * FROM products
WHERE price > (SELECT AVG(price) FROM products);

SELECT MAX (price) FROM products;

SELECT * FROM products;

UPDATE products
SET price = 1000000
WHERE id = 'X0003';

SELECT MAX(price) FROM (SELECT price FROM categories
JOIN products ON (products.id_category = categories.id)) AS cp;

SELECT MAX(price)
FROM (SELECT price
    FROM categories
        INNER JOIN products
            ON (products.id_category = categories.id)) AS cp;