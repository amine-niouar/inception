#!/bin/bash

ftp_user=user
ftp_pass=pass

mkdir -p /var/run/vsftpd/empty

useradd -m ${ftp_user}

echo ${ftp_user} >> /etc/vsftpd.userlist

chown ${ftp_user}:${ftp_user} /home/${ftp_user}

echo "$ftp_user:$ftp_pass" | chpasswd

vsftpd