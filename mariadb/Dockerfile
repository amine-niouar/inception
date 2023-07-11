FROM debian:latest

RUN apt-get update 
RUN apt install curl -y
RUN curl -sS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup
RUN apt-get install software-properties-common -y
RUN add-apt-repository 'deb [arch=amd64,arm64,ppc64el] http://sfo1.mirrors.digitalocean.com/mariadb/repo/10.3/ubuntu bionic main'
RUN apt update
RUN apt-get install mariadb-server -y
RUN  mkdir /var/log/mariadb  && touch /var/log/mariadb/error.log
COPY 50-server.cnf /etc/mysql/mariadb.conf.d/
ENTRYPOINT service mariadb restart && mysql -e "CREATE DATABASE wp; GRANT ALL PRIVILEGES ON *.* TO 'root'@'my-wordpress.inception_default' IDENTIFIED BY 'root' WITH GRANT OPTION; FLUSH PRIVILEGES;GRANT ALL PRIVILEGES ON *.* TO 'root'@'my-adminer.inception_default' IDENTIFIED BY 'root' WITH GRANT OPTION; FLUSH PRIVILEGES;" && bash 
CMD [ "mysql" ]
#lsb-release gnupg 