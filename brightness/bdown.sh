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

newb=`expr $thisb - $scale`

if [ $newb -le $minb ]
then
  sudo echo $minb > /sys/class/backlight/intel_backlight/brightness
  #echo $minb
else
  sudo echo $newb > /sys/class/backlight/intel_backlight/brightness
  #echo $newb
fi

