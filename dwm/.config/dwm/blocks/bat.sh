#!/bin/sh

[[ -e /tmp/bat ]] && rm /tmp/bat

while true; do
bat=$(upower -d /xorg/freedesktop/upower/devices/battery_BAT0 | grep -A 20 'BAT0' | grep 'percentage:'| tr -d [[:space:]] | tr -d 'percentage:') 
echo "BAT.: $bat" >/tmp/bat
sleep 120
done &
