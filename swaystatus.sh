#!/bin/sh
while true
do
	#Date & Time
	TIME="$(date +"%H:%M")"

	# Battery status
	BAT=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "percentage" | sed "s/:[ \t]*/: /" | xargs)

	# System volume taken from web. Spent too long trying to grep the volume
	VOL=$(pactl list sinks | grep '^[[:space:]]Volume:' | \
	    head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')

	# TODO Show muted status

	# TODO Fix capslock light..

	printf "%s\n" "${BAT}" "VOL: ${VOL}%" "${TIME}"
	sleep 10
done
