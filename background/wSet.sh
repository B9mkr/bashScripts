#! /bin/bash

#enter=$1

#url="/home/bm/Documents/bashScripts/background/source/dark.jpg"
#if [ $enter -eq "d" ]; then
#else
  #url="/home/bm/Documents/bashScripts/baskground/source/white.jpg"
#fi
   
#gsettings set org.gnome.desktop.background picture-uri "file://$url"

thisHour=`date +%H`

i=0
n=25

url="/home/bm/Documents/bashScripts/background/source"

while [ $i -lt $n ]
do
  if [ $i -lt 10 ]; then
    wal="w0$i.jpg"
  else
    wal="w$i.jpg"
  fi

  #echo "cp $or source/$wal"
  #cp $or "source/$wal"

  #cp $or $wal
  if [ $i -eq $thisHour ]; then
    #echo "thisHour: $thisHour"
    gsettings set org.gnome.desktop.background picture-uri "file://$url/$wal"
  fi
   
  i=$(( $i + 1 ))

done

echo "done"

