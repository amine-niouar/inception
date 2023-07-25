from debian:bullseye

RUN apt-get update
RUN apt install adminer wget   -y
RUN wget "https://www.adminer.org/latest.php" -O /var/www/html/index.php
RUN "Alias /adminer.php /usr/share/adminer/adminer.php" |  tee /etc/apache2/conf-available/adminer.conf
RUN a2enconf adminer.conf
RUN service apache2 start 
CMD ["php","-S","0.0.0.0:80","-t","/var/www/html/"]
