#!/bin/sh
echo Instalando PHP...
apt-get install php php-fpm -y

echo Instalando PHP extras...
apt-get install php-mbstring php-gd -y
