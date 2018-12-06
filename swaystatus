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

	#https://www.youtube.com/watch?v=MNwpdqD_I8Y
	# TODO Show remaining memory
	# TODO Show current cpu usage

	# TODO Show muted status
	# TODO Fix capslock light..
	# TODO Get hardrive space remaining
	# TODO Get current wifi details
	# TODO Get swaybar to work lol

	printf "%s\n" "${BAT}" "VOL: ${VOL}%" "${TIME}"
	sleep 10
done
