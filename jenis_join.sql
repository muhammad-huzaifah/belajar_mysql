INSERT INTO categories(id, name)
VALUES ('c0004', 'Oleh-Oleh'),
       ('c0005', 'Gadget');

INSERT INTO products(id, name, price, quantity)
VALUES ('X0001', 'X satu', 25000, 200),
       ('X0002', 'X dua', 10000, 300),
       ('X0003', 'X tiga', 15000, 500);

SELECT * FROM products;

SELECT * FROM categories
INNER JOIN products ON (products.id_category = categories.id);

SELECT * FROM categories
JOIN products ON (products.id_category = categories.id);

SELECT * FROM categories
LEFT JOIN products ON (products.id_category = categories.id);

SELECT * FROM categories
RIGHT JOIN products ON (products.id_category = categories.id);

SELECT * FROM categories
CROSS JOIN products;

CREATE TABLE numbers(
    id INT NOT NULL,
    PRIMARY KEY (id)
)ENGINE = InnoDB;

INSERT INTO numbers(id) VALUES (1),(2),(3), (4), (5), (6), (7), (8), (9), (10);

SELECT * FROM numbers;

SELECT * FROM numbers AS numbers1
    CROSS JOIN numbers AS numbers2
ORDER BY numbers1.id, numbers2.id;

SELECT numbers1.id, numbers2.id, (numbers1.id * numbers2.id)
FROM numbers AS numbers1
                  CROSS JOIN numbers AS numbers2
ORDER BY numbers1.id, numbers2.id;