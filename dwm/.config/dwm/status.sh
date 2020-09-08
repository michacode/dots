#!/usr/bin/env bash

crypto=$( cat </tmp/crypto )
vol=$( ~/.config/dwm/blocks/volume.sh )
lys=$( ~/.config/dwm/blocks/lys.sh )
bat=$( cat < bat )
tid=$( ~/.config/dwm/blocks/tid.sh )
net=$(  ~/.config/dwm/blocks/net.sh )

xsetroot -name " $crypto  |  lys $lys%  |  $vol  |  bat. $bat  |  net $net   |  $tid "
