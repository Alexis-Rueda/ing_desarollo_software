SELECT * FROM mysql.user;

CREATE USER 'uveg_user'@'localhost' IDENTIFIED BY '123';

CREATE ROLE 'read_store_role';

GRANT SELECT, INSERT ON store.* TO 'read_store_role';

GRANT 'read_store_role' TO 'uveg_user'@'localhost';

FLUSH PRIVILEGES;

SET DEFAULT ROLE ALL TO 'uveg_user'@'localhost';

REVOKE INSERT ON store.* FROM 'read_store_role';