#!/bin/sh

echo Copiando o site...
cp -r /home/curso/extras/site-demo-php /home/curso/06/headers/site

echo Adicionando biblioteca nginx-extras
apt install nginx-extras -y

echo Criando pasta logs...
mkdir logs
