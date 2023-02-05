#!/bin/sh

for i in $(seq 1 20); do
  curl -s http://ubuntu:1001
done