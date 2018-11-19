#!/bin/sh

# Battery status
BAT=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "state|percentage" | sed "s/:[ \t]*/: /" | xargs)

printf "%s\n" "BAT: $BAT"
