#! /bin/bash

# Example:
#
# ./pin.sh 4 30s
#
# Repeat the ping command 4 times with an interval of 30 seconds

i=0
n=$1 # number of repetitions
t=$2 # waiting time between pings
pingUrl="www.google.com"
sendingCount=10

while [ $i -lt $n ]
do
  i=$(( $i + 1 ))
  data=`date +%H:%M:%S`
  #echo "$i / $n, $[ $[ $SECONDS / 60 ] / 60 ] : $[ $SECONDS / 60 ] ; $data"

  timeSpent=`date -ud "@$SECONDS" "+%H:%M:%S"`

  echo "$i / $n ; Time spent: $timeSpent ; start ping: $data"
  ping -c $sendingCount $pingUrl
  data=`date +%H:%M:%S`
  echo "                                    end ping: $data"
  
  if [ $i -lt $n ]
  then
    sleep "$t"
  fi
done


