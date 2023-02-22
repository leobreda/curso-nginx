#!/bin/sh

echo criando 3 sites...

echo 'site1' > 1.html
echo 'site2' > 2.html
echo 'site3' > 3.html
 
kill -9 $(lsof -t -i:1001)
kill -9 $(lsof -t -i:1002)
kill -9 $(lsof -t -i:1003)
 
nohup php -S ubuntu:1001 1.html &> /dev/null &
nohup php -S ubuntu:1002 2.html &> /dev/null &
nohup php -S ubuntu:1003 3.html &> /dev/null &
