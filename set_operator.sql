CREATE TABLE guestbooks(
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    title VARCHAR(100) NOT NULL,
    content TEXT,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

SELECT * FROM customers;

INSERT INTO guestbooks(email, title, content)
VALUES ('guest1@gmail.com', 'Hello', 'Hello'),
       ('guest2@gmail.com', 'Hello', 'Hello'),
       ('guest3@gmail.com', 'Hello', 'Hello'),
       ('huzaifah2009@gmail.com', 'Hello', 'Hello'),
       ('rachmahoctarina@gmail.com', 'Hello', 'Hello');

SELECT * FROM guestbooks;

SELECT DISTINCT email FROM customers
UNION
SELECT DISTINCT email FROM guestbooks;

SELECT DISTINCT email FROM customers
UNION ALL
SELECT DISTINCT email FROM guestbooks;

SELECT email FROM customers
UNION
SELECT email FROM guestbooks;

SELECT  email FROM customers
UNION ALL
SELECT  email FROM guestbooks;

SELECT emails.email, COUNT(emails.email) FROM
(SELECT email FROM customers
    UNION ALL
    SELECT email FROM guestbooks) AS emails

GROUP BY emails.email;

SELECT * FROM guestbooks;

SELECT DISTINCT email FROM customers
WHERE email IN (SELECT DISTINCT email FROM guestbooks);

SELECT DISTINCT customers.email FROM customers
INNER JOIN guestbooks ON (guestbooks.email = customers.email);

SELECT  customers.email FROM customers
INNER JOIN guestbooks ON (guestbooks.email = customers.email);

SELECT * FROM customers;

SELECT * FROM guestbooks;

SELECT DISTINCT customers.email, guestbooks.email FROM customers
LEFT JOIN guestbooks ON (guestbooks.email = customers.email)
WHERE guestbooks.email IS NULL;
