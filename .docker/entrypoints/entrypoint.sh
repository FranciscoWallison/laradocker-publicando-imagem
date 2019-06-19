#!/bin/bash

if [ ! -e "/vendor" ];then
	echo " Execultando 'composer install...'"
	composer install
fi

echo " Artisan ... "
php artisan key:generate
php artisan migrate
	

php-fpm