#!/bin/sh

volstatus=$(pactl list sinks | awk '/Volume: /{print $5; exit}')

echo "VOL.: $volstatus "
