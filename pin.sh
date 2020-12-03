#! /bin/bash

i=0
n=$1
t=$2

while [ $i -lt $n ]
do
  i=$(( $i + 1 ))
  echo "$i / $n, $[ $SECONDS / 60 ]"
  date +%H:%M:%S
  ping google.com
  date +%H:%M:%S
  if [ $i -lt $n ]
  then
    sleep "$t"
  fi
done

