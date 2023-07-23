#!/bin/bash

sleep 10
wp core install  --title=shit --admin_user=root --admin_password=root --admin_email=shit@shit.com --allow-root --path=/var/www/html/ --url=localhost 
wp theme install twentysixteen --activate --allow-root --path=/var/www/html/
wp plugin install redis-cache --activate --allow-root --path=/var/www/html/

wp config set WP_REDIS_HOST "redis-cache" --allow-root --path=/var/www/html/
wp config set WP_REDIS_PORT "6379" --allow-root --path=/var/www/html/
wp config set WP_REDIS_DATABASE "15" --allow-root --path=/var/www/html/
wp config set WP_REDIS_PASSWORD "root" --allow-root --path=/var/www/html/
wp redis enable --allow-root --path=/var/www/html/
service php7.4-fpm start
sleep 2
service php7.4-fpm stop
sleep 2

php-fpm7.4 -F
#bash