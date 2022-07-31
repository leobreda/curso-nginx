#!/bin/sh

echo Instalando Apache...
apt-get install apache2 -y

echo Iniciando o Apache...
service apache2 start

