#!/bin/sh

Encerrando processos nas portas 1001 a 1004
kill -9 $(lsof -t -i:1001)
kill -9 $(lsof -t -i:1002)
kill -9 $(lsof -t -i:1003)
kill -9 $(lsof -t -i:1004)


echo Copiando o site...
cp -r /home/curso/extras/site-demo-php /home/curso/09-headers/site

echo Adicionando biblioteca nginx-extras
apt install nginx-extras -y

echo Criando pasta logs...
mkdir logs
