#!/bin/sh

# Matando processos anteriores
kill -9 $(lsof -t -i:443) > /dev/null
kill -9 $(lsof -t -i:8000) > /dev/null

clear

#######################################################################
echo -e "\n\e[32mCriando proxy reverso na porta 443 (https)... \e[0m"
nginx -c $PWD/index.conf
echo
echo -e "\n\n\e[32mProxy reverso criado com sucesso na porta 443 \e[0m"
echo
echo "https://linux/"

#echo echo -e "\e[32mCriando o site galeria... \e[0m"
#nginx -c $PWD/index.conf
#echo 
#echo -e "\e[32mSite galeria criado!... \e[0m"
#echo
#echo "http://linux:8000"
#echo