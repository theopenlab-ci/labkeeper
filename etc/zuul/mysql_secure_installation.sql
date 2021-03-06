DELETE FROM mysql.user WHERE User='';
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
DROP DATABASE IF EXISTS test;
DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';
FLUSH PRIVILEGES;
CREATE USER IF NOT EXISTS 'zuul'@'localhost' IDENTIFIED BY 'zuul';
CREATE DATABASE IF NOT EXISTS zuul;
GRANT ALL PRIVILEGES ON zuul.* TO 'zuul'@'localhost' IDENTIFIED BY 'zuul';
FLUSH PRIVILEGES;
