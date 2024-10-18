# Usar a imagem base do PHP
FROM php:8.0-apache

# Instalar extensões necessárias
RUN docker-php-ext-install mysqli

# Copiar os arquivos do projeto para o diretório do Apache
COPY . /var/www/html

# Expor a porta 80
EXPOSE 80
