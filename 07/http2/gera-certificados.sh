#!/bin/sh

echo CORRIGINDO FUSO HORARIO
timedatectl set-timezone America/Sao_Paulo

echo GERANDO CERTIFICADO
openssl genrsa -out ubuntu.key 2048
openssl req -new -x509 -key ubuntu.key -out ubuntu.crt -nodes -days 3650  -subj '/C=BR/ST=SP/L=Sao Paulo/O=Meu Site/CN=ubuntu'