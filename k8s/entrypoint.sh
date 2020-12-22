#!/bin/bash
php artisan config:cache
php artisan queue:listen