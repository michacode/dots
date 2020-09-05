#!/usr/bin/env bash

# Statusbar

mkfifo bat &
mkfifo crypto &

while true; do
    ~/.config/dwm/blocks/bat.sh
    sleep 120
done &

while true; do
    ~/.config/dwm/blocks/crypto.sh
    sleep 300
done & 

while true; do
    ~/.config/dwm/status.sh
   sleep 30 
done &

# Autostart desktop
picom -b &
nitrogen --restore &
st &
setxkbmap dk &
