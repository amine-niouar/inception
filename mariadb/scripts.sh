#!/bin/bash

service mariadb start
sleep 2

mysql -u root -e "CREATE USER IF NOT EXISTS 'root'@'%' IDENTIFIED BY 'root';"
mysql -u root -e "CREATE DATABASE IF NOT EXISTS wp;"
mysql -u root -e "GRANT ALL PRIVILEGES ON wp.* TO 'root'@'%'"
mysql -u root -e "FLUSH PRIVILEGES;"
service mariadb stop
sleep 2
mysqld_safe
