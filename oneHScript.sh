#!/bin/bash

. /home/bm/Documents/bashScripts/today.sh

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

# tme=`date +%H:%M:%S`
# touch "/home/bm/Desktop/$tme"

# notify-send "crontab $tme"

# ----------------------------

# notify-send "What are you doing now?"

# ----------------------------

python3 /home/bm/Documents/myProjects/telegramBot/everyMinut.py

