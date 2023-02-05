#!/bin/sh

echo Copiando o site...
cp -r /home/curso/extras/site-demo-php /home/curso/06/auth/site

echo Criando pasta logs...
mkdir logs

echo Baixando pacote apache2-utils
apt install apache2-utils -y

