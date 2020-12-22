#!/bin/sh
php artisan config:cache
php artisan queue:listen