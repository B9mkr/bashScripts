#! /bin/bash

i=1
n=9

while [ $i -lt $n ]
do
  i=$(( $i + 1 ))
  j=1
  while [ $j -lt $n ]
  do
  
    j=$(( $j + 1 ))
    echo "$i * $j = $(( $i*$j ))"

  done

  printf "\n"
done

