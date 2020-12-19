#!/bin/bash
# a imagem já está criada.
echo "Instalando dependencias php..... DIR: $(pwd)"
composer install
echo "Instalando dependencias node....."
npm install
echo "Executando key:Generate....."
php artisan key:generate
echo "Executando migrate....."
php artisan migrate
php-fpm