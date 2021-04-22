SHOW DATABASES ;

CREATE DATABASE belajar_mysql2;

SHOW DATABASES ;

DROP DATABASE belajar_mysql2;

USE belajar_mysql2;

SHOW TABLES ;

SHOW ENGINES ;

CREATE TABLE barang (
    id INT,
    nama VARCHAR (100),
    harga INT,
    jumlah INT
) ENGINE = InnoDB;

SHOW TABLES;

DESC barang;

SHOW CREATE TABLE barang;

ALTER TABLE barang
ADD COLUMN deskripsi TEXT;

DESC barang;

ALTER TABLE barang
ADD COLUMN salah TEXT;

ALTER TABLE barang
DROP COLUMN salah;

DESC barang;

ALTER TABLE barang
MODIFY COLUMN nama VARCHAR(200);

ALTER TABLE barang
MODIFY nama VARCHAR(300);

DESC barang;

ALTER TABLE barang
ADD COLUMN salah TEXT;

ALTER TABLE barang
DROP salah;

DESC barang;

ALTER TABLE barang
MODIFY nama VARCHAR (200);

ALTER TABLE barang
MODIFY nama VARCHAR (200) AFTER deskripsi;

DESC barang;

ALTER TABLE barang
MODIFY nama VARCHAR (200) FIRST;

DESC barang;

ALTER TABLE barang
MODIFY id INT NOT NULL ;

DESC barang;

ALTER TABLE barang
MODIFY nama VARCHAR(200) NOT NULL ;

DESC barang;

SHOW CREATE TABLE barang;

DESC barang;

CREATE TABLE barang(
    id INT NOT NULL,
    nama VARCHAR(100) NOT NULL DEFAULT '',
    harga INT NOT NULL DEFAULT 0,
    jumlah INT NOT NULL DEFAULT 0
)ENGINE = innoDB;

ALTER TABLE barang
MODIFY jumlah INT NOT NULL DEFAULT 0;

ALTER TABLE barang
MODIFY harga INT NOT NULL DEFAULT 0;

DESC barang;

# Menambahan waktu di colom dengan waktu saat ini
ALTER TABLE barang
ADD COLUMN waktu TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

DESC barang;

ALTER TABLE barang
CHANGE waktu waktu_dibuat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

DESC barang;

ALTER TABLE barang
DROP COLUMN waktu;

DESC barang;

INSERT INTO barang (id, nama) VALUES (1, 'Apel');

SELECT * FROM barang;

TRUNCATE barang;

DESC barang;

SHOW TABLE STATUS ;

SHOW TABLES;

DROP TABLE barang;

SHOW TABLE STATUS ;

SHOW TABLES;

CREATE TABLE products(
    id VARCHAR(10) NOT NULL,
    name VARCHAR (100) NOT NULL,
    description TEXT,
    price INT UNSIGNED NOT NULL,
    quantity INT UNSIGNED NOT NULL DEFAULT 0,
    create_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = innoDB;

SHOW TABLES;

DESC products;

INSERT INTO products(id, name, price, quantity)
VALUES ('P0001', 'Mie Ayam Original', 15000, 100);

SELECT * FROM products;

INSERT INTO products(id, name, description, price, quantity)
VALUES ('P0002', 'Mie Ayam Bakso','Mie Ayam Original + Bakso', 20000, 100);

SELECT * FROM products;

INSERT INTO products(id, name, price, quantity)
VALUES ('P0003', 'Mie Ayam Ceker', 20000, 100),
       ('P0004', 'Mie Ayam Spesial', 25000, 100),
       ('P0005', 'Mie Ayam Yakim', 15000, 100);

SELECT * FROM products;