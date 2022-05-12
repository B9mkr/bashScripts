#! /bin/bash

thisb=`cat /sys/class/backlight/intel_backlight/brightness`

echo $thisb > ~/.config/brightness/brightness

notify-send -u low "brightness: $thisb"
#espeak "brightness: $thisb"

