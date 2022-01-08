CREATE USER 'hospitalapp'@'localhost' IDENTIFIED BY 'khavar';

GRANT ALL PRIVILEGES ON * . * TO 'hospitalapp'@'localhost';

# Changing authentication plugin to mysql_native_password from caching_sha2_password
ALTER USER 'hospitalapp'@'localhost' IDENTIFIED WITH mysql_native_password BY 'khavar';