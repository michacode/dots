#!/bin/sh

echo $(upower -d /xorg/freedesktop/upower/devices/battery_BAT0 | grep -A 20 'BAT0' | grep 'percentage:'| tr -d [[:space:]] | tr -d 'percentage:') > bat 
