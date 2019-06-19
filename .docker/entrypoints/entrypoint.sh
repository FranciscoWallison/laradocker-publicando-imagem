#!/bin/bash

if [ ! -e "/vendor" ];then
	echo " Execultar 'composer install'"
	
else
	echo " Criando as tabelas "
	php artisan migrate
fi

php-fpm