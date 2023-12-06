#!/bin/bash

set -e

env

if [[ -n "$1" ]]; then
    exec "$@"
else
    composer install
    docker-php-ext-install pdo pdo_mysql
    wait-for-it mysql-service.repo.svc:3306 -t 45
    yes | php artisan migrate
    chown -R www-data:www-data storage
    exec apache2-foreground
fi
