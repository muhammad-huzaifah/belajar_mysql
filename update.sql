SHOW TABLES ;

DESC products;

ALTER TABLE products
    ADD COLUMN category ENUM('Makanan', 'Minuman', 'Lain-lain')
        AFTER name;

DESC products;

SELECT * FROM products;

SELECT * FROM products WHERE id='P0001';

UPDATE products
SET category = 'Makanan'
WHERE id='P0001';

UPDATE products
SET category = 'Makanan'
WHERE id='salah';

UPDATE products
SET category='Makanan',
    description='Mie Ayama Original + Ceker'
WHERE id='P0003';

SELECT * FROM products;

UPDATE products
SET price=price+5000
WHERE id='P0005';

SELECT * FROM products;