CREATE TABLE admin(
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR (100) NOT NULL,
    last_name VARCHAR (100) NOT NULL ,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

DESC admin;

SHOW TABLES ;

INSERT INTO admin(first_name, last_name)
VALUES ('Muhammad', 'Huzaifah'),
       ('Rachmah', 'Octarina'),
       ('Khaira', 'Bishry');

DELETE FROM admin WHERE id=3;

INSERT INTO admin(FIRST_NAME, LAST_NAME)
VALUES ('Muhammad', 'Khairu');

INSERT INTO admin(FIRST_NAME, LAST_NAME)
VALUES ('Aleya', 'Ghaneya');

SELECT LAST_INSERT_ID();

SELECT * FROM admin;
