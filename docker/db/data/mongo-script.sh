#!/bin/bash 

file=$1
charlist=$(cat $1)
IFS='
'
echo
n=0
for i in $charlist; do
  echo -e "{\"Name\":\""$i"\", \"Id\":\""$n"\"}"
  n=$((n + 1))
done
