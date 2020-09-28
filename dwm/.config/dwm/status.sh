#!/usr/bin/env bash

crypto_btc=$( cat </tmp/crypto | awk 'NR==1' )
crypto_dot=$( cat </tmp/crypto | awk 'NR==2' )
vol=$( ~/.config/dwm/blocks/volume.sh )
lys=$( ~/.config/dwm/blocks/lys.sh )
bat=$( cat </tmp/bat  )
tid=$( ~/.config/dwm/blocks/tid.sh )
net=$(  cat </tmp/net )

[[ "$crypto_btc" == "" ]] && crypto_btc='$BTC: ingen data'
[[ "$crypto_dot" == "" ]] && crypto_dot='$DOT: ingen data'

xsetroot -name " $crypto_btc  ·  $crypto_dot  |  LYS: $lys%  |  $vol  |  $bat  |  NET: $net   |  $tid "
