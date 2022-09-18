#!/bin/sh

echo Copiando o site...
cp -r /home/curso/extras/site-demo-php /home/curso/07/http2/site

echo Criando pasta logs...
mkdir logs

echo Criando certificado...
chmod +x gera-certificados.sh
./gera-certificados.sh