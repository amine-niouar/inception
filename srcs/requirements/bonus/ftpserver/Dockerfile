from debian:bullseye


RUN apt update
RUN apt install vsftpd ufw -y
COPY tools/scripts.sh /tmp/scripts.sh
COPY tools/vsftpd.conf /etc/vsftpd.conf
#COPY ftpusers /etc/ftpusers
RUN chmod u+x ./tmp/scripts.sh
CMD [ "./tmp/scripts.sh" ]