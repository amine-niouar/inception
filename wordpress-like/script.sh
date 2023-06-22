#!/bin/bash
#service php8.2-fpm start 
wp core install  --title=shit --admin_user=root --admin_password=root --admin_email=shit@shit.com --allow-root --path=/var/www/html/ --url=localhost 
wp theme install twentysixteen --activate --allow-root --path=/var/www/html/
#wp theme install twentysixteen --activate  --admin_user=root --admin_password=root --admin_email=shit@shit.com --allow-root --path=/var/www/html/ --url=localhost 

# exec tail -f
exec /usr/sbin/php-fpm8.2 -F
