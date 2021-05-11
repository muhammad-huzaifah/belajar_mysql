#USER 1

START TRANSACTION ;

SELECT * FROM guestbooks;

UPDATE guestbooks
SET title = 'Diubah oleh user1'
WHERE id = 15;

COMMIT ;

START TRANSACTION ;

SELECT * FROM products;

SELECT * FROM products WHERE id = 'P0001' FOR UPDATE ;

UPDATE products
SET quantity = quantity - 10
WHERE id = 'P0001';

COMMIT ;

# DEADLOCK

START TRANSACTION ;

SELECT * FROM products WHERE id = 'P0001' FOR UPDATE ;

SELECT * FROM products WHERE id = 'P0002' FOR UPDATE ;

# LOCK TABLE READ

LOCK TABLES products READ;

UPDATE products
SET quantity = 100
WHERE id = 'P0001';

UNLOCK TABLES;

# LOCK TABLE WRITE

LOCK TABLES products WRITE ;

UPDATE products
SET quantity = 100
WHERE id = 'P0001';

SELECT * FROM products;

UNLOCK TABLES ;

#LOCK INSTANCE

LOCK INSTANCE FOR BACKUP;

UNLOCK INSTANCE;

# USER 2

START TRANSACTION ;

SELECT * FROM guestbooks;

UPDATE guestbooks
SET title = 'Diubah oleh user2'
WHERE id = 15;

COMMIT ;

START TRANSACTION ;

SELECT * FROM products;

SELECT * FROM products WHERE id = 'P0001' FOR UPDATE ;

UPDATE products
SET quantity = quantity - 10
WHERE id = 'P0001';

COMMIT ;

SELECT * FROM products WHERE id = 'P0001';

# DEADLOCK

START TRANSACTION ;

SELECT * FROM products WHERE id = 'P0002' FOR UPDATE ;

SELECT * FROM products WHERE id = 'P0001' FOR UPDATE ;

ROLLBACK ;

# LOCK TABLE READ

SELECT * FROM products;

UPDATE products
SET quantity = 200
WHERE id = 'P0001';

# LOCK TABLE WRITE

SELECT * FROM products;

# LOCK INSTANCE
ALTER TABLE products
    ADD COLUMN sample VARCHAR(100);



