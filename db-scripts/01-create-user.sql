CREATE USER 'sz_admin'@'localhost' IDENTIFIED BY 'khavar';

GRANT ALL PRIVILEGES ON * . * TO 'sz_admin'@'localhost';

# Changing authentication plugin to mysql_native_password from caching_sha2_password
ALTER USER 'sz_admin'@'localhost' IDENTIFIED WITH mysql_native_password BY 'sz_admin';