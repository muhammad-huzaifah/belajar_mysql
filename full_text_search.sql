ALTER TABLE products
    ADD FULLTEXT product_fulltext (name, description);

SHOW CREATE TABLE products;

SELECT * FROM products;

SELECT * FROM products WHERE name LIKE '%ayam%' OR description LIKE '%ayam%';

SELECT * FROM products WHERE MATCH(name, description) AGAINST('ayam' IN NATURAL LANGUAGE MODE);

SELECT * FROM products WHERE MATCH(name, description) AGAINST('+ayam -bakso' IN BOOLEAN MODE );

SELECT * FROM products WHERE MATCH(name, description) AGAINST('bakso' WITH QUERY EXPANSION);

