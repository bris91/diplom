#!/bin/bash
#Скачать файл с репозитория и распаковать zabbix
wget https://repo.zabbix.com/zabbix/7.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_7.0-2+ubuntu22.04_all.deb
dpkg -i zabbix-release_7.0-2+ubuntu22.04_all.deb
apt update
#Установка zabbix
apt install zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-sql-scripts zabbix-agent mysql-server -y
#Создание БД
sudo mysql -uroot -e "create user zabbix@localhost identified with mysql_native_password by 'pswd123';"
sudo mysql -uroot -e "create database zabbix character set utf8 collate utf8_bin;" 
sudo mysql -uroot -e "grant all privileges on zabbix.* to zabbix@localhost;"
sudo mysql -uroot -e "FLUSH PRIVILEGES;"
zcat /usr/share/zabbix-sql-scripts/mysql/server.sql.gz | sudo mysql -uroot zabbix
#Добавить пароль БД в zabbix_server.conf
echo DBPassword=pswd123 >> /etc/zabbix/zabbix_server.conf
#Рестарт
systemctl restart zabbix-server apache2