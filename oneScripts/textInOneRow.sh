#!/bin/bash

function textInOneRow {
  local url="$1"
  if [ $(cat $url | wc -l) -gt 1 ]
  then
    local newUrl="/tmp/tempUrl$$"
    echo -n "" > $newUrl
    local whileLastRow=""
    local lastRow=""
    while IFS= read -r row; 
    do 
      echo -n "$row " >> $newUrl
      whileLastRow="$row"
    done < $url
    lastRow="$(tail -n 1 $url)"
    if [ "$lastRow" != "$whileLastRow" ]
    then
      echo -n "$lastRow " >> $newUrl
    fi
    cat "$newUrl" > $url
    rm -f $newUrl
  fi
}

