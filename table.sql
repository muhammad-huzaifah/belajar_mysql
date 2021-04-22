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