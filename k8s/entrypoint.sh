#!/bin/bash
php artisan config:cache
php artisan migrate:reset
php artisan migrate
php artisan queue:listen