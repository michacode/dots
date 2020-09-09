#!/usr/bin/env bash

# Statusbar

~/.config/dwm/blocks/crypto.sh

#mkfifo bat &
~/.config/dwm/blocks/bat.sh

~/.config/dwm/status.sh

# Autostart desktop
picom -b &
nitrogen --restore &
setxkbmap dk &
