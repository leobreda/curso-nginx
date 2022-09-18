#!/bin/sh

echo Copiando o site...
cp -r /home/curso/extras/site-demo-php /home/curso/07/push/site

echo Criando pasta logs...
mkdir logs

echo Criando certificado...
chmod +x gera-certificados.sh
./gera-certificados.sh

echo instalando nghttp2-client
apt install nghttp2-client -y