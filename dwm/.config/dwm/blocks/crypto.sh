#!/bin/sh
[[ -e "/tmp/crypto.sh" ]] && rm /tmp/crypto
while true; do
  curl -s usd.rate.sx/?qT:BTC | awk '/BTC/{print "$BTC: "$6,"· 24t /"$8;}' | awk 'NR==2' >/tmp/crypto
  curl -s usd.rate.sx/?gT:ETH  | awk '/ETH/{print "$ETH: "$6,"· 24t /"$8;}' | awk 'NR==1' >>/tmp/crypto

  ~/.config/dwm/status.sh
  sleep 300
done &
