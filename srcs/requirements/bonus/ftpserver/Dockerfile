FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y && apt-get install -y sudo && apt-get install -y vsftpd

# COPY ./tools/vsftpd.conf /etc/vsftpd.conf

COPY ./tools/scripts.sh /

RUN chmod 777 scripts.sh

EXPOSE 21

CMD ["./scripts.sh"]