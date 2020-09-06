#!/usr/bin/env bash

crypto=$( cat </tmp/crypto )
vol=$( ~/.config/dwm/blocks/volume.sh )
lys=$( ~/.config/dwm/blocks/lys.sh )
bat=$( cat < bat )
tid=$( ~/.config/dwm/blocks/tid.sh )

xsetroot -name " $crypto  $vol  lys $lys%  bat. $bat  $tid"
