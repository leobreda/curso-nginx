#!/bin/sh

clear

echo Informe o nome do usuario pra acesso ao Painel de Controle...
read username

htpasswd -c .htpasswd $username
