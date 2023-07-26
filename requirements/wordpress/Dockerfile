FROM debian:bullseye


#wget mariadb-client

RUN apt-get update
RUN apt install curl git wget unzip zip vim -y
RUN apt install  mariadb-client -y
RUN  apt install php php-fpm php-mysql -y

RUN wget https://wordpress.org/latest.zip
RUN unzip latest.zip -d /tmp/
RUN rm -rf /var/www/html/index.html
RUN mkdir -p /var/www/html/
RUN cp -rf /tmp/wordpress/* /var/www/html/
RUN chown -R www-data:www-data /var/www/html/
RUN find /var/www/html/ -type d -exec chmod 755 {} \;
RUN find /var/www/html/ -type f -exec chmod 644 {} \;
COPY tools/script.sh /tmp
RUN chmod +x ./tmp/script.sh
#COPY wp-config-sample.php /var/www/html/wp-config.php
COPY tools/www.conf /etc/php/7.4/fpm/pool.d/
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN  mv wp-cli.phar /usr/local/bin/wp

#RUN 
#RUN wp config create --dbname=wp --dbuser=root --prompt=root --dbhost=mariadb --allow-root --path=/var/www/html/
CMD  ["./tmp/script.sh" ]   

#RUN wp core install  --title=shit --admin_user=root --admin_password=root --admin_email=shit@shit.com --allow-root --path=/var/www/html/ --url=localhost

# CMD ["tail","-f"]
# CMD ["/etc/init.d/php8.2-fpm","-F","-R"]

#CMD [ "mysql" ]
#lsb-release gnupg 
##wp core install --title=$TITLE --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL --allow-root --path=$PATH --url=$URL --verbose
