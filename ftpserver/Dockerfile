from debian:buster


RUN apt update
RUN apt install vsftpd -y
RUN service vsftpd start
RUN mkdir /var/www/ && mkdir /var/www/html
RUN chown -R root: /var/www/html
RUN chmod 550 /var/www/html/
RUN echo "root" |  tee -a /etc/vsftpd.userlist

RUN apt install ufw -y
RUN ufw allow 20/tcp
RUN ufw allow 21/tcp
RUN ufw reload
CMD ["vsftpd"]