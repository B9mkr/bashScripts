#! /bin/bash

#thisb=4643
thisb=`cat /sys/class/backlight/intel_backlight/brightness`
#maxb=`cat /sys/class/backlight/intel_backlight/max_brightness`
maxb=4600
minb=40

#scale=100
scale=$1

#echo "this brightness: $thisb"
#echo "max brightness: $maxb"
#echo "min brightness: $minb"
#echo "scale: $scale"

newb=`expr $thisb + $scale`

if [ $newb -ge $maxb ]
then
  echo $maxb > /sys/class/backlight/intel_backlight/brightness
  #echo $maxb
else
  echo $newb > /sys/class/backlight/intel_backlight/brightness
  #echo $newb
fi

