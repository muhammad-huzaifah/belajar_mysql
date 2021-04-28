SELECT id,
       category
FROM products;

SELECT id,
       category,
       CASE category
            WHEN 'Makanan' THEN 'Enak'
            WHEN 'Minuman' THEN 'Segar'
            ELSE 'Apa Itu'
            END AS 'Kategori'
FROM products;

SELECT id,
       price
FROM products;

SELECT id,
       price,
       IF (price <= 15000, 'Murah', 'Mahal')
FROM products;

SELECT id,
       price,
       IF (price <= 15000, 'Murah', 'Mahal') AS 'Mahal?'
FROM products;

SELECT id,
       price,
       IF(price <= 15000, 'Murah', IF(price <= 20000, 'Mahal', 'Mahal Banget')) AS 'Mahal?'
FROM products;

SELECT id, name, IFNULL(description, 'Kosong') FROM products;