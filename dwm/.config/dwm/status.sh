#!/usr/bin/env bash

while true; do
  crypto=$( cat </tmp/crypto )
  vol=$( ~/.config/dwm/blocks/volume.sh )
  lys=$( ~/.config/dwm/blocks/lys.sh )
  bat=$( cat </tmp/bat  )
  tid=$( ~/.config/dwm/blocks/tid.sh )
  net=$(  ~/.config/dwm/blocks/net.sh )

  xsetroot -name " $crypto  |  LYS: $lys%  |  $vol  |  BAT.: $bat  |  NET: $net   |  $tid "
  sleep 30
done &
