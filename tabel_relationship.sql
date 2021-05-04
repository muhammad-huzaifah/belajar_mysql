CREATE TABLE wishlist(
                         id INT NOT NULL AUTO_INCREMENT,
                         id_product VARCHAR(10) NOT NULL,
                         description TEXT,
                         PRIMARY KEY (id),
                         CONSTRAINT fk_wishlist_product
                             FOREIGN KEY (id_product) REFERENCES products (id)
) ENGINE = InnoDB;

DESC wishlist;

SHOW CREATE TABLE wishlist;

ALTER TABLE wishlist
DROP CONSTRAINT fk_wishlist_product;

ALTER TABLE wishlist
ADD CONSTRAINT fk_wishlist_product
    FOREIGN KEY (id_product) REFERENCES products (id);

INSERT INTO wishlist(id_product, description)
VALUES ('P0001', 'Makanan Kesukaan');

INSERT INTO wishlist (ID_PRODUCT, DESCRIPTION)
VALUES ('Salah', 'Makanan Kesukaan');

DELETE FROM products
WHERE id = 'P0001';

ALTER TABLE wishlist
    ADD CONSTRAINT fk_wishlist_product
        FOREIGN KEY (id_product) REFERENCES products (id)
            ON DELETE CASCADE ON UPDATE CASCADE;

SHOW CREATE TABLE wishlist;

INSERT INTO products (id, name, category, price, quantity)
VALUES ('Pxxx', 'Contoh', 'Lain-lain', 1000, 1000 );

SELECT * FROM products;

INSERT INTO wishlist(id_product, description)
VALUES ('PxxX', 'Makanan Kesukaan');

SELECT * FROM wishlist;

SHOW CREATE TABLE wishlist;

DELETE FROM products WHERE id = 'Pxxx';

