#! /bin/bash

#i=0

sl=$1

tms=`date`

echo "start timer ($tms)"
#say "start timer"

sleep $sl

tme=`date`

echo "end timer ($tme)"
say "end timer"
notify-send "Time off"

#while [ $i -le 1 ]
#do
  #time=$(date +%I)
  #sleep $sl

  #notify-send 'Time off' "$time"
  #echo "$time"
  #k=0
  #while [ $k -le $time ]
  #do
    #echo "$k "
    #play -q a1.ogg
    #k=$(( $k + 1 ))
  #done

  #i=$(( $i + 1 ))
#done

