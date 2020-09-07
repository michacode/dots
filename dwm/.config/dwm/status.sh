#!/usr/bin/env bash

crypto=$( cat </tmp/crypto )
vol=$( ~/.config/dwm/blocks/volume.sh )
lys=$( ~/.config/dwm/blocks/lys.sh )
bat=$( cat < bat )
tid=$( ~/.config/dwm/blocks/tid.sh )
net=$(  ~/.config/dwm/blocks/net.sh )
#ikon_btc=$(echo -e '\xEF\x8D\xB9')
#ikon_tid=$(echo -e )
xsetroot -name " $crypto  |  $vol  |  lys $lys%  |  net $net  |  bat. $bat  |  $tid"
