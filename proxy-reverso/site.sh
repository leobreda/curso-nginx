#!/bin/sh

# Matando processos anteriores
kill -9 $(lsof -t -i:8000) > /dev/null

clear

#######################################################################
echo -e "\e[32mCriando o site galeria... \e[0m"
nginx -c $PWD/site.conf
echo 
echo -e "\e[32mSite galeria criado!... \e[0m"
echo
echo "http://linux:8000"
echo