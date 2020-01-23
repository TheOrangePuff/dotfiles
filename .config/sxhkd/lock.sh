#!/usr/bin/env bash

# Start i3lock-color with a bunch of arguments
i3lock -n -i $HOME/Wallpapers/homer_lock.png \
    --insidecolor=373445ff --ringcolor=ffffffff --line-uses-inside \
    --keyhlcolor=d23c3dff --bshlcolor=d23c3dff --separatorcolor=00000000 \
    --insidevercolor=fecf4dff --insidewrongcolor=d23c3dff \
    --ringvercolor=ffffffff --ringwrongcolor=ffffffff --indpos="x+86:y+1013" \
    --radius=15 --veriftext="" --wrongtext="" --noinputtext="" --screen 1

