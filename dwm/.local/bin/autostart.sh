#!/usr/bin/env bash

# Statusbar
  # Opdatér info, der ikke startes fra status skriptet.
~/.config/dwm/blocks/crypto.sh
~/.config/dwm/blocks/bat.sh
  # Start status skriptet.
~/.config/dwm/status.sh

# Autostart skrivebords applikationer.
picom -b &
nitrogen --restore &
setxkbmap dk &
