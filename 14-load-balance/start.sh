#!/bin/sh


chmod +x criando-sites.sh
chmod +x 1000.conf

echo SUBINDO SITES PHP	
nohup ./criando-sites.sh &> /dev/null &

echo SUBINDO NGINX
kill -9 $(lsof -t -i:1000)
nginx -c /home/curso/14-load-balance/1000.conf

#while sleep 0.5; do curl http://ubuntu:1000 ; done