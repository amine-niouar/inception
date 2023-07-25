#!/bin/bash
#adduser talker
#echo "talker:root" | chpasswd
 #mkdir /var/www/ && mkdir /var/www/html
 #chown -R talker: /var/www/html
 #chmod 550 /var/www/ && chmod 550 /var/www/html/
 #echo "talker" |  tee -a /etc/vsftpd.userlist
  #touch /var/log/vsftpd.log
#ufw allow 21
# service vsftpd start
mkdir -p /var/run/vsftpd/empty
chmod 755 /var/run/vsftpd/empty
useradd -m -p $(openssl passwd -1 toor) talker

echo "talker:toor" | chpasswd
chown -R talker /var/www/html

/usr/sbin/vsftpd /etc/vsftpd.conf