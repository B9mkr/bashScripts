#!/bin/sh

green="\e[1;32m"
end="\e[0m"

url="/home/bm/Documents/ethernetProjects/abstractBackgroundGenerator/index.html"
identificate=`date +%y%m%d%H%M%S`
importTo="/home/bm/Desktop/image_$identificate.png"
minWidth=1920
minHeight=1080
delay=5

cutycapt --url=$url --min-width=$minWidth --min-height=$minHeight --delay=$delay --out=$importTo

# import -window root $importTo

echo -e "${green} Generated ${end} background to $importTo"

