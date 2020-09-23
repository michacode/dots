#!/usr/bin/env bash

www(){
if ping -q -w 1 -c 1 8.8.8.8 > /dev/null; then
  echo "(WWW)"
else
  echo "(XXX)"
fi
}

nmcli c s | awk '!/NAME/'| while read line; do
    if [[ ! "$line" == *"--"* ]]; then
      echo $line | awk '/[0-9]/ {print $1}'
      www
    fi
done &
