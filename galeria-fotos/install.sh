#!/bin/sh
clear
#######################################################################
echo -e "\e[32mBAIXANDO EXTRAS... \e[0m"
rm *.jpg
cp ../extras/galeria-fotos/*.jpg .

#######################################################################
echo -e "\e[32mINSTALANDO MODULOS... \e[0m"
apt install libnginx-mod-http-image-filter

#######################################################################
echo -e "\e[32mLIBERANDO PORTA 8000 NO FIREWALL... \e[0m"
ufw allow 8000/tcp
