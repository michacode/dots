#!/bin/sh

echo $(curl -s https//www.bitstamp.net/api/v2/ticker/btcusd | awk '/last/{print $4}' | sed 's/[",]//g') > crypto 
