#!/bin/bash

echo " Execultando 'composer install...'"
composer install
echo " Execultando 'npm install...'"
npm install
echo " Artisan ... "
php artisan key:generate
php artisan migrate
echo " Ok "

php-fpm