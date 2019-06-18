#!/bin/bash
#composer install
#php artisan migrate

if [ ! -e "/vendor" ]
then
echo " o diretorio existe"
php artisan migrate
else
echo " o diretorio não existe vamos criar o diretorio"
fi

