#!/bin/sh
clear
for i in $(seq 1 100); do
  echo '-----------------------------------------'
  echo $i
  echo '-----------------------------------------'
  curl -I http://ubuntu:1002

done