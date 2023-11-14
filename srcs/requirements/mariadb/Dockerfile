FROM debian:bullseye


RUN apt-get update
RUN apt-get install mariadb-server -y

COPY tools/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY tools/scripts.sh /tmp
WORKDIR /tmp
RUN chmod u+x ./scripts.sh

CMD ["/tmp/scripts.sh" ]
