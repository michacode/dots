#!/bin/sh

[[ -e /tmp/bat ]] && rm /tmp/bat

while true; do
  echo $(upower -d /xorg/freedesktop/upower/devices/battery_BAT0 | grep -A 20 'BAT0' | grep 'percentage:'| tr -d [[:space:]] | tr -d 'percentage:') >/tmp/bat 
  sleep 120
done &
