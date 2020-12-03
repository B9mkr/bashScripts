#! /bin/bash

i=0

while [ $i -le 1 ]
do
  time=$(date +%I)
  sleep 1h

  notify-send 'Time off' "$time"
  #echo "$time"
  k=0
  while [ $k -le $time ]
  do
    #echo "$k "
    play -q a1.ogg
    k=$(( $k + 1 ))
  done

  i=$(( $i + 1 ))
done

