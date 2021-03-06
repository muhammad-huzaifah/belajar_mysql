CREATE TABLE barang(
                       id INT,
                       nama  VARCHAR(100),
                       harga INT,
                       jumlah INT
)ENGINE = innoDB;

SHOW TABLES ;

DESCRIBE barang;

SHOW CREATE TABLE barang;

ALTER TABLE barang
    ADD COLUMN deskripsi TEXT;

ALTER TABLE barang
    ADD COLUMN salah TEXT;

ALTER TABLE barang
    MODIFY nama VARCHAR(200) AFTER salah;

ALTER TABLE barang
    MODIFY nama VARCHAR(200) FIRST;

DESCRIBE barang;

ALTER TABLE barang
    MODIFY id INT NOT NULL ;

ALTER TABLE barang
    MODIFY nama VARCHAR(200) NOT NULL ;

SHOW CREATE TABLE barang;


ALTER TABLE barang
    MODIFY harga INT NOT NULL DEFAULT 0;

ALTER TABLE barang
    MODIFY jumlah INT NOT NULL DEFAULT 0;

ALTER TABLE barang
    ADD COLUMN waktu_dibuat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

INSERT INTO barang (id, nama) VALUES (1, 'Ujeb');

SELECT * FROM barang;

TRUNCATE TABLE barang;

SHOW TABLES ;

DROP TABLE barang;

CREATE TABLE products(
                         id VARCHAR(10) NOT NULL,
                         name VARCHAR(100) NOT NULL,
                         description TEXT,
                         price INT UNSIGNED NOT NULL,
                         quantity INT UNSIGNED NOT NULL DEFAULT 0,
                         create_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB;

DESCRIBE products;

INSERT INTO products(id, name, price, quantity)
VALUES ('P0001', 'Mie Ayam Original', 15000, 100);

SELECT * FROM products;

INSERT INTO products(id, name, description, price, quantity)
VALUES ('P0002', 'Mie Ayam Bakso Tahu', 'Mie Ayam Original + Bakso Tahu', 200000, 100);

INSERT INTO products(id, name, price, quantity)
VALUES ('P0003', 'Mie Ayam Ceker', 20000, 100),
       ('P0004', 'Mie Ayam Spesial', 25000, 100),
       ('P0005', 'Mie Ayam Yamin', 15000, 100);

SELECT id, name, price, quantity FROM products;

DELETE FROM products WHERE id='P0001';

INSERT INTO products(id, name, price, quantity)
VALUES('P0001', 'Mie Ayam Original', 15000, 100);

SELECT * FROM products;





