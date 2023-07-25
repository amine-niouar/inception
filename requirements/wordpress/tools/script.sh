#!/bin/sh

sleep 10
if [ ! -f /var/www/html/wp-config.php ]; then

mv  -f $path/wp-config-sample.php $path/wp-config.php
sed -i "s/database_name_here/$DB_DATABASE/g" $path/wp-config.php 
sed -i "s/username_here/$ADMIN_USER/g" $path/wp-config.php 
sed -i "s/password_here/$ADMIN_PASSWORD/g" $path/wp-config.php 
sed -i "s/localhost/$DB_HOST/g" $path/wp-config.php

wp core install  --title=$TITLE --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL --allow-root --path=$path --url=$URL 
wp theme install twentysixteen --activate --allow-root --path=$path
wp plugin install redis-cache --activate --allow-root --path=$path

wp config set WP_REDIS_HOST "$REDIS_HOST" --allow-root --path=$path
wp config set WP_REDIS_PORT "$REDIS_PORT" --allow-root --path=$path
wp config set WP_REDIS_DATABASE "$REDIS_DATABASE" --allow-root --path=$path
wp config set WP_REDIS_PASSWORD "$REDIS_PASSWORD" --allow-root --path=$path
wp redis enable --allow-root --path=/var/www/html/
fi
service php7.4-fpm start
sleep 2
service php7.4-fpm stop
sleep 2

php-fpm7.4 -F
#bash