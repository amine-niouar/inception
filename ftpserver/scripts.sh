#!/bin/bash
adduser talker
echo "talker:root" | chpasswd
 mkdir /var/www/ && mkdir /var/www/html
 chown -R talker: /var/www/html
 chmod 550 /var/www/ && chmod 550 /var/www/html/
 echo "talker" |  tee -a /etc/vsftpd.userlist
  touch /var/log/vsftpd.log
ufw allow 21
 service vsftpd start


exec vsftpd