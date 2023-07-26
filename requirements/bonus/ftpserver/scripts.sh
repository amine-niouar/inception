#!/bin/bash

mkdir -p /var/run/vsftpd/empty
chmod 755 /var/run/vsftpd/empty
useradd -m -p $(openssl passwd -1 $FTP_PASSWORD) $FTP_USER

echo "$FTP_USER:$FTP_PASSWORD" | chpasswd
chown -R talker /var/www/html

/usr/sbin/vsftpd /etc/vsftpd.conf