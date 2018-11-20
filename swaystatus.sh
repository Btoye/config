#!/bin/sh

# Battery status
BAT=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "state|percentage" | sed "s/:[ \t]*/: /" | xargs)

VOL=$(pactl list sinks | grep -o -E -m1 "(\/.*?\/)")

printf "%s\n" "BAT: $BAT VOL: $VOL"
