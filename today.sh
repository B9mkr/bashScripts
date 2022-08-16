#!/bin/bash

. /home/bm/Documents/bashScripts/oneScripts/attachedFiles.sh

function today {
  local description=""
  if [ "$1" ]
  then
    description="$1"
  fi

  if [ "$2" ]
  then
    local dayNow=`date '+%Y-%m-%d' -d "@$2"`
    local dateAndTimeNow=`date '+%d.%m.%Y %H:%M:%S' -d "@$2"`
  else
    local dayNow=`date '+%Y-%m-%d'`
    local dateAndTimeNow=`date '+%d.%m.%Y %H:%M:%S'`
  fi
  
  # local dateAndTimeNow=`date '+%d.%m.%Y %H:%M:%S'`
  
  local originalDayNowUrl="/home/bm/Documents/base/csvDaily/$dayNow.csv"
  local dayNowUrl="/home/bm/Desktop/$dayNow.csv"
  
  if [ ! -e $originalDayNowUrl ]
  then
    touch $originalDayNowUrl
    descriptionStart="\"Time\" , \"Network IN bytes\" , \"Network OUT bytes\" , \"Battery %\" , \"Description\""
    contentToUrl "$descriptionStart" "$originalDayNowUrl"
  fi
  
  local bytesInResult="/tmp/bytesNetworkInNow$$"
  local bytesOutResult="/tmp/bytesNetworkOutNow$$"
  
  /sbin/ifconfig | tail -n 5 | head -n 1 | awk '{print $5}' > $bytesInResult
  /sbin/ifconfig | tail -n 3 | head -n 1 | awk '{print $5}' > $bytesOutResult
  
  # echo `bc <<< "scale = 5 ; $(cat $bytesResult) / 1048576"` > $megabytesResult
  # echo `bc <<< "scale = 5 ; $(cat $bytesResult) / 1073741824"` > $gigabytesResult
  
  local batteryResult="$(cat /sys/class/power_supply/BAT0/capacity)"
  
  content="\"$dateAndTimeNow\" , \"$(cat $bytesInResult)\" , \"$(cat $bytesOutResult)\" , \"$batteryResult\" , \"$description\""
  contentToUrl "$content" "$originalDayNowUrl"
  
  rm -f $bytesInResult
  rm -f $bytesOutResult

  if [ ! -e $dayNowUrl ]
  then
    ln -s $originalDayNowUrl $dayNowUrl
  fi
}

today "$1" "$2"
