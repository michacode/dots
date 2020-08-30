#!/bin/sh
case "$1" in
    1) pactl set-sink-volume 0 -5% && sh ~/.config/dwm/status.sh;;
    2) pactl set-sink-volume 0 +5% && sh ~/.config/dwm/status.sh;;
#    3) pamixer --set-volume 60 ;;
esac
