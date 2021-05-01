CREATE TABLE sellers(
                        id INT NOT NULL AUTO_INCREMENT,
                        name VARCHAR(100) NOT NULL,
                        name2 VARCHAR(100) NOT NULL,
                        name3 VARCHAR(100) NOT NULL,
                        email  VARCHAR(100) NOT NULL,
                        PRIMARY KEY (id),
                        UNIQUE KEY email_unique (email),
                        INDEX name_index (name),
                        INDEX name_index2 (name2),
                        INDEX name_index3 (name3)
) ENGINE = InnoDB;

drop table sellers;

SHOW TABLES ;

CREATE TABLE sellers(
                        id INT NOT NULL AUTO_INCREMENT,
                        name VARCHAR(100) NOT NULL,
                        name2 VARCHAR(100),
                        name3 VARCHAR(100),
                        email  VARCHAR(100) NOT NULL,
                        PRIMARY KEY (id),
                        UNIQUE KEY email_unique (email),
                        INDEX name1_name2_name3_index (name, name2, name3)
) ENGINE = InnoDB;

DESC sellers;