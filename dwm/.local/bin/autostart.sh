#!/usr/bin/env bash

# Statusbar

mkfifo bat &

~/.config/dwm/blocks/crypto.sh

while true; do
    ~/.config/dwm/blocks/bat.sh
    sleep 120
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
