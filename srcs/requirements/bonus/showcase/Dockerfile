from debian:bullseye


RUN apt-get update
RUN apt install unzip python3 git -y
RUN mkdir /var/www/
WORKDIR /var/www
RUN git clone https://github.com/amine-niouar/showcase app


CMD ["python3","-m","http.server","2023","--bind","0.0.0.0","--directory","/var/www/app/"]