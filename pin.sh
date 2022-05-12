#! /bin/bash

# Example:
#
# ./pin.sh 4 30s
#
# Repeat the ping command 4 times with an interval of 30 seconds

i=0
pingUrl="www.google.com"
sendingCount=3

if [ ! "$1" ] ; then
  n=10 # number of repetitions
  t="30s" # waiting time between pings
else
  if [ ! "$2" ] ; then
    t="30s" # waiting time between pings
  else
    t=$2 # waiting time between pings
  fi
  n=$1 # number of repetitions
fi

while [ $i -lt $n ]
do
  i=$(( $i + 1 ))
  data=`date +%H:%M:%S`
  #echo "$i / $n, $[ $[ $SECONDS / 60 ] / 60 ] : $[ $SECONDS / 60 ] ; $data"
  
  timeSpent=`date -ud @$SECONDS "+%H:%M:%S"`
  
  echo "start ping: $data ; Time spent: $timeSpent ; $i / $n"
  ping -c $sendingCount $pingUrl
  data=`date +%H:%M:%S`
  echo "  end ping: $data"
    
  if [ $i -lt $n ]
  then
    sleep "$t"
  fi
done

