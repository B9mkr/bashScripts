#! /bin/bash

#thisb=4643
thisb=`cat /sys/class/backlight/intel_backlight/brightness`
#maxb=`cat /sys/class/backlight/intel_backlight/max_brightness`
maxb=937
minb=15

scale=50
# scale=$1

#echo "this brightness: $thisb"
#echo "max brightness: $maxb"
#echo "min brightness: $minb"
#echo "scale: $scale"

newb=`expr $thisb + $scale`

if [ $newb -ge $maxb ]
then
  sudo echo $maxb > /sys/class/backlight/intel_backlight/brightness
  #echo $maxb
else
  sudo echo $newb > /sys/class/backlight/intel_backlight/brightness
  #echo $newb
fi

