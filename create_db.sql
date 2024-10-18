CREATE DATABASE IF NOT EXISTS bugtracker;
CREATE USER 'mantisbt'@'localhost' IDENTIFIED BY 'root';
GRANT ALL PRIVILEGES ON bugtracker.* TO 'mantisbt'@'localhost';
FLUSH PRIVILEGES;
