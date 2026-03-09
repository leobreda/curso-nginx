#!/bin/sh
clear
#######################################################################
echo -e "\n\n\e[32mBAIXANDO EXTRAS... \e[0m"
rm ./*.jpg
rm ./*.pem
cp ../../extras/galeria-fotos/*.jpg ./

#######################################################################
#echo -e "\e[32mBLOQUEANDO PORTA 8000 NO FIREWALL... \e[0m"
#ufw deny 8000/tcp

#######################################################################
echo -e "\n\n\e[32mGerando certificado https ... \e[0m\n"

openssl genpkey -algorithm RSA -out server.

openssl req -new -key server.key -out server.csr \
  -subj "/C=BR/ST=SP/L=Sao Paulo/O=MyOrg/CN=192.168.0.8"

openssl x509 -req -days 365 -in server.csr -signkey server.key -out  server.crt