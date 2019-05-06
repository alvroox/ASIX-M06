#!/bin/bash
#Actualizar repositorios
apt-get update
#Instalar apache2, MySQL y php
apt-get install -y apache2
apt-get install -y php libapache2-mod-php php-mysql mysql-server
#Reinicia el servicio apache
sudo /etc/init.d/apache2 restart
#Descargar adminer
cd /var/www/html
wget https://github.com/vrana/adminer/releases/download/v4.3.1/adminer-4.3.1-mysql.php
mv adminer-4.3.1-mysql.php adminer.php



