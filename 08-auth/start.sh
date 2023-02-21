#!/bin/sh

Encerrando processo na porta 1001
kill -9 $(lsof -t -i:1001)


echo Copiando o site...
cp -r /home/curso/extras/site-demo-php /home/curso/08-auth/site

echo Criando pasta logs...
mkdir logs

echo Baixando pacote apache2-utils
apt install apache2-utils -y

