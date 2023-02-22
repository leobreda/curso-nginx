#!/bin/sh

echo criando 3 sites...

echo 'site1' > 1.html
echo 'site2' > 2.html
echo 'site3' > 3.html
 
kill -9 $(lsof -t -i:1001)
kill -9 $(lsof -t -i:1002)
kill -9 $(lsof -t -i:1003)
 
php -S localhost:1001 1.html
php -S localhost:1002 2.html
php -S localhost:1003 3.html