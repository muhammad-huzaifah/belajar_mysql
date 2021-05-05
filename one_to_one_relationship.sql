CREATE TABLE wallet(
    id INT NOT NULL AUTO_INCREMENT,
    id_customer INT NOT NULL,
    balance INT NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    UNIQUE KEY fk_id_customer_unique (id_customer),
    CONSTRAINT fk_wallet_customer
                   FOREIGN KEY (id_customer) REFERENCES customers(id)
)ENGINE = InnoDB;

DESC wallet;

SHOW CREATE TABLE wallet;

SELECT * FROM customers;

INSERT INTO customers(id, email, first_name, last_name)
VALUES (2, 'rachmahoctarina@gmail.com', 'Rachmah', 'Ockatrina');

SELECT * FROM wallet;

INSERT INTO wallet(id_customer) VALUES (1), (2);

SELECT customers.email, wallet.balance
FROM wallet JOIN customers ON (wallet.id_customer = customers.id);
