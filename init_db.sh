#!/bin/bash

# Inicializar o MariaDB
service mysql start
sleep 5

# Criar o banco de dados e o usuário
mysql -e "CREATE DATABASE IF NOT EXISTS bugtracker;"
mysql -e "CREATE USER IF NOT EXISTS 'mantisbt'@'localhost' IDENTIFIED BY 'root';"
mysql -e "GRANT ALL PRIVILEGES ON bugtracker.* TO 'mantisbt'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"

# Manter o container ativo
tail -f /dev/null
