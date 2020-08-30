#!/usr/bin/env bash

bat=$( ~/.config/dwm/blocks/bat.sh )
tid=$( ~/.config/dwm/blocks/tid.sh )
#lav lys knap
lys=$( sh ~/.config/dwm/blocks/lys.sh )
vol=$( sh ~/.config/dwm/blocks/volume.sh )

xsetroot -name "$vol | lys $lys% |  bat. $bat | $tid"
