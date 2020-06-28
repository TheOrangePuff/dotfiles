#!/bin/sh

# Configure desktops
if [ $HOSTNAME = "Daniels-Laptop" ]; then
	# if only one monitor
    if [ $(xrandr | grep " connected " | awk '{ print$1 }' | wc -l) = 1 ]; then
        bspc monitor eDP-1 -d "Browser 1" Terminal Misc VM Terminal "Browser 2" Misc
    else
        bspc monitor HDMI-2 -d "Browser 1" Terminal Misc VM
	    bspc monitor eDP-1 -d Terminal "Browser 2" Misc
    fi
else
	bspc monitor DVI-D-0 -d Chat Misc
	bspc monitor HDMI-0 -d "Browser Main" Misc
	bspc monitor DP-0 -d Terminal "Browser Secondary" Steam
fi

###
