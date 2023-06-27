from debian:buster


RUN apt update
RUN apt install vsftpd ufw -y
COPY scripts.sh /tmp/scripts.sh
COPY vsftpd.conf /etc/vsftpd.conf
COPY ftpusers /etc/ftpusers
RUN chmod u+x ./tmp/scripts.sh
ENTRYPOINT [ "./tmp/scripts.sh" ]