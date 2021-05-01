CREATE TABLE customers(
                          id INT NOT NULL AUTO_INCREMENT,
                          email VARCHAR(100) NOT NULL ,
                          first_name VARCHAR(100) NOT NULL ,
                          last_name VARCHAR(100) NOT NULL ,
                          PRIMARY KEY (id),
                          UNIQUE KEY email_unique (email)
) ENGINE = InnoDB;

DESC customers;

ALTER TABLE customers
DROP CONSTRAINT email_uniqUe;

ALTER TABLE customers
ADD CONSTRAINT email_unique UNIQUE (email);

INSERT INTO customers(email, first_name, last_name)
VALUES ('huzaifah2009@gmail.com', 'Muhammad', 'Huzaifah');

SELECT * FROM customers;

INSERT INTO customers(email, first_name, last_name)
VALUES ('huzaifah@gmail.com', 'Muhammad', 'Huzaifah');

INSERT INTO products(id, name, category, price, quantity)
VALUES ('P0016', 'Permen', 'Lain-lain', 500, 1000);

SELECT * FROM products;

UPDATE products
SET price=1000
WHERE id='P0016';

ALTER TABLE products
ADD CONSTRAINT price_check CHECK ( price>= 1000 );

SELECT * FROM products;

DESC products;

SHOW TABLES ;

SHOW CREATE TABLE products;

INSERT INTO products(id, name, category, price, quantity)
VALUES ('P0017', 'Permen Manis', 'Lain-lain', 500, 1000);

UPDATE products
SET price=500
WHERE id='P0016';

SELECT * FROM products;


