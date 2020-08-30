#!/usr/bin/env bash
while true; do
    ~/.config/dwm/status.sh
   sleep 60 
done &

while true; do
    ~/.config/dwm/blocks/bat.sh
    sleep 120
done &

# Autostart section
picom -b &
nitrogen --restore &
st &
setxkbmap dk &
