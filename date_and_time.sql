SELECT id, create_at,
       EXTRACT(YEAR FROM create_at) as Year,
       EXTRACT(MONTH FROM create_at) as Month
FROM products;

SELECT id, create_at, YEAR(create_at), MONTH(create_at) FROM products;