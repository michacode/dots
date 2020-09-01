#!/bin/sh

volstatus=$(pactl list sinks | awk '/Lydstyrke: /{print $5}')
echo "vol. $volstatus"
