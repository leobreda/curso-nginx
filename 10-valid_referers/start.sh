#!/bin/sh

Encerrando processo na porta 1001
kill -9 $(lsof -t -i:1001)


echo Copiando o site...
cp -r /home/curso/extras/site-demo-php /home/curso/10-valid_referers/site

echo Adicionando biblioteca nginx-extras
apt install nginx-extras -y

echo Criando pasta logs...
mkdir logs
