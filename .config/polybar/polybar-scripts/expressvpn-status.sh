#!/bin/sh
STATUS=$(expressvpn status | grep "Connected" | cut -d " " -f1 | tr -d " ")
if [ "$STATUS"="Connected" ]; then
	echo "%{F#82E0AA}ExpressVPN: $(expressvpn status | grep "Connected" | cut -d " " -f3-)%{F-}"
    else
	echo ""
fi
