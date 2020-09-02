#!/usr/bin/env bash

bat=$( cat < bat )
tid=$( ~/.config/dwm/blocks/tid.sh )
lys=$( ~/.config/dwm/blocks/lys.sh )
vol=$( ~/.config/dwm/blocks/volume.sh )

xsetroot -name "$vol | lys $lys% |  bat. $bat | $tid"
