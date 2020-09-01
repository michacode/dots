#!/bin/sh

crit=70

read -r temp </sys/class/thermal/thermal_zone0/temp
temp=${temp%???}

if [ "$temp" -ge "$crit" ] ; then
  echo "(!) ${temp}°C"
else
    echo "${temp}°C"
fi
