from debian:bullseye


RUN apt-get update
RUN apt install unzip python3 -y
RUN mkdir /var/www/
COPY tools/app /var/www/
WORKDIR /var/www/app

CMD ["python3","-m","http.server","2023","--bind","0.0.0.0","--directory","/var/www/app/"]