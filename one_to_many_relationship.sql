CREATE TABLE categories(
                           id VARCHAR(10) NOT NULL,
                           name VARCHAR(100) NOT NULL,
                           PRIMARY KEY (id)
) ENGINE = InnoDB;

DESC categories;

SHOW TABLES ;

DESC products;

ALTER TABLE products DROP COLUMN category;

ALTER TABLE products ADD COLUMN id_category VARCHAR(10);

DESC products;

ALTER TABLE products ADD CONSTRAINT fk_producst_categories FOREIGN KEY (id_category) REFERENCES categories(id);

SHOW CREATE TABLE products;

SELECT * FROM products;

SELECT * FROM categories;

INSERT INTO categories(id, name) VALUES ('c0001', 'Makanan'), ('c0002', 'Minuman'), ('c0003', 'Lain-lain');

UPDATE products SET products.id_category = 'C0001' WHERE id IN ('P0001', 'P0002', 'P0003', 'P0004', 'P0005', 'P0006', 'P0013', 'P0014', 'P0015');

UPDATE products SET products.id_category = 'C0002' WHERE id IN ('P0007', 'P0008', 'P0009');

UPDATE products SET products.id_category = 'C0003' WHERE id IN ('P0010', 'P0011', 'P0012', 'P0016');

SELECT * FROM products;

SELECT products.id, products.name, categories.name FROM products JOIN categories ON (categories.id = products.id_category);