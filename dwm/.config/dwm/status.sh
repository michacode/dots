#!/usr/bin/env bash

crypto_btc=$( cat </tmp/crypto | awk 'NR==1' )
crypto_eth=$( cat </tmp/crypto | awk 'NR==2' )
vol=$( ~/.config/dwm/blocks/volume.sh )
lys=$( ~/.config/dwm/blocks/lys.sh )
bat=$( cat </tmp/bat  )
tid=$( ~/.config/dwm/blocks/tid.sh )
net=$(  ~/.config/dwm/blocks/net.sh )

xsetroot -name " $crypto_btc  ·  $crypto_eth  |  LYS: $lys%  |  $vol  |  BAT.: $bat  |  NET: $net   |  $tid "
