#!/bin/sh

case "$1" in
  1) light -U 5 && sh ~/.config/dwm/status.sh;;
  2) light -A 5 && sh ~/.config/dwm/status.sh;;
esac
