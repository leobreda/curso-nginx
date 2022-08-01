#!/bin/sh

for counter in $(seq 1 5); do
	curl -I http://127.0.0.1:1001/ ;
done
