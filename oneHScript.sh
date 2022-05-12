#!/bin/bash

#echo "my actual script"

#echo "installing for latex convert"
#sudo apt-get install texlive
#sudo apt install texinfo
#sudo apt-get install texlive-fonts-recommended
#sudo apt-get install texlive-fonts-extra
#sudo apt-get install texlive-latex-extra

# ----------------------------

#wget -O- https://rss.nbp.pl/kursy/TabelaA.xml > /tmp/ta.xml

#cat /tmp/ta.xml | grep EUR
#sed -n -e '/EURO/p' /tmp/ta.xml

#cat /tmp/ta.xml | grep EUR

#grep ^EUR /tmp/ta.xml
#grep 'EUR' /tmp/ta.xml
#grep ^EUR /tmp/ta.xml

#grep '2021 z dnia' /tmp/ta.xml > /tmp/daty.xml
#sed 's/*2021\ z\ dnia//g' /tmp/daty.xml

# ----------------------------

#i=`ls /tmp/ta*`

#if [ $i -lt 0 ]
#then
  #echo "true"
#else  
  #echo "false"
#fi

tme=`date +%H:%M:%S`
touch "/home/bm/Desktop/$tme"
# notify-send "crontab $tme"

