FROM debian:bullseye


#wget mariadb-client

RUN apt-get update
RUN apt install curl git wget unzip zip vim -y
RUN apt install  mariadb-client -y
RUN  apt install php php-fpm php-mysql -y

RUN wget https://wordpress.org/latest.zip

RUN mkdir -p /var/www/html
RUN unzip latest.zip -d /tmp/

RUN cp -rf /tmp/wordpress/* /var/www/html/


COPY tools/script.sh /tmp
RUN chmod +x ./tmp/script.sh
COPY tools/www.conf /etc/php/7.4/fpm/pool.d/
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN  mv wp-cli.phar /usr/local/bin/wp

CMD  ["./tmp/script.sh" ]   
