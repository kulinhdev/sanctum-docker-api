#!/bin/bash

#Auto run after restart docker workspace
# composer install && \
# composer dumpautoload && \
cp .env.example .env && \
php artisan key:generate --force && \
php artisan migrate --force && \
php artisan cache:clear && \
php artisan config:clear && \
php artisan event:clear && \
php artisan event:clear && \
php artisan optimize:clear && \
php artisan view:clear && \
# composer dumpautoload && \
chown -R 33:33 /var/www && \
chmod -R 777 /var/www

