#!/usr/bin/env bash

[[ -e /tmp/net ]] && rm /tmp/net

while true; do
test_net=$(ping -q -w 1 -c 1 8.8.8.8 &>/dev/null; echo $?) 
for nr in $test_net; do
if [[ "$nr" == "0" ]]; then
  nmcli c s | awk '!/NAME/'| while read line; do
    if [[ ! "$line" == *"--"* ]]; then
      echo $line | awk '/[0-9]/ {print $1 " (WWW)"}' >/tmp/net
    fi
    done &
elif [[ "$nr" == "2" ]]; then
    echo " intet internet" >/tmp/net
fi
done &
sleep 15
done &
