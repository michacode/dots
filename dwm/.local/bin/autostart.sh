#!/usr/bin/env bash
mkfifo bat
while true; do
    ~/.config/dwm/blocks/bat.sh
    sleep 120
done &
while true; do
    ~/.config/dwm/status.sh
   sleep 30 
done &

# Autostart section
picom -b &
nitrogen --restore &
st &
setxkbmap dk &
