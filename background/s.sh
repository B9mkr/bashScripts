#! /bin/bash

i=0
n=25 # number of repetitions

or="source/original1920x1080.jpg"
#or="set00.sh"
#thisHour=`date +%H`

while [ $i -lt $n ]
do
  #name="source"
  if [ $i -lt 10 ]; then
    wal="w0$i.jpg"
  else
    wal="w$i.jpg"
  fi

  echo "cp $or source/$wal"
  cp $or "source/$wal"

  #cp $or $wal
  #if [ $i -eq $thisHour ]; then
    #echo "thisHour: $thisHour"
    #gsettings set org.gnome.desktop.background picture-uri "file:///home/bm/Documents/bashScripts/background/source/$wal"
  #fi
   
  i=$(( $i + 1 ))

done

