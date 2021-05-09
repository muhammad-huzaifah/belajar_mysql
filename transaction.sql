START TRANSACTION;

INSERT INTO guestbooks (email, title, content)
VALUES ('contoh@gmail.com', 'contoh', 'contoh'),
       ('contoh2@gmail.com', 'contoh', 'contoh'),
       ('contoh3@gmail.com', 'contoh', 'contoh');

SELECT * FROM guestbooks;

COMMIT ;

START TRANSACTION ;

DELETE FROM guestbooks;

SELECT * FROM guestbooks;

ROLLBACK ;