#!/usr/bin/env bash

# Statusbar
  # Opdatér info, der ikke startes fra status skriptet.
~/.config/dwm/blocks/net.sh
~/.config/dwm/blocks/crypto.sh
~/.config/dwm/blocks/bat.sh

# Start status skriptet.
while true; do
  ~/.config/dwm/status.sh
  sleep 30
done &

# Autostart skrivebords applikationer.
picom -b &
nitrogen --restore &
setxkbmap dk &
