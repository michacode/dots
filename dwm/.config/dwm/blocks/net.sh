#!/usr/bin/env bash

nmcli c s | while read line; do
    if [[ ! "$line" == *"--"* ]]; then 
      echo $line | awk '/[0-9]/ {print $1}'
    fi
done &
