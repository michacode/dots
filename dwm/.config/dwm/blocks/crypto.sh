#!/bin/sh

while true; do
   curl -s usd.rate.sx/?qT:BTC | awk '/BTC/{print "$BTC: "$6," ·  24t /"$8,"  ·  1t /"$10;}' | awk 'NR==2' >/tmp/crypto
   ~/.config/dwm/status.sh
  sleep 300
done &
