#!/usr/bin/env bash

#bat=$( cat ~/.config/dwm/blocks/bat.txt )
bat=$( cat < bat )
tid=$( ~/.config/dwm/blocks/tid.sh )
#lav lys knap
lys=$( ~/.config/dwm/blocks/lys.sh )
vol=$( ~/.config/dwm/blocks/volume.sh )

xsetroot -name "$vol | lys $lys% |  bat. $bat | $tid"
