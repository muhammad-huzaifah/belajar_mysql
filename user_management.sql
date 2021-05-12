CREATE USER 'ujeb'@'localhost';

CREATE USER 'ina'@'%';

GRANT SELECT ON belajar_mysql2.* TO 'ujeb'@'localhost';

GRANT SELECT ON belajar_mysql2.* TO 'ina'@'%';

GRANT INSERT, UPDATE, DELETE ON belajar_mysql2.* TO 'ina'@'%';

SHOW GRANTS FOR 'ujeb'@'localhost';

SHOW GRANTS FOR 'ina'@'%';

SET PASSWORD FOR 'ujeb'@'localhost' = 'rahasia';

SET PASSWORD FOR 'ujeb'@'localhost' = PASSWORD ('rahasia2');

SET PASSWORD FOR 'ina'@'%' = 'rahasia';

SET PASSWORD FOR 'ina'@'%' = PASSWORD ('rahasia2');