#!/usr/bin/bash 
grim - | wl-copy 


NAME=~/Pictures/Screenshots/Screenshot_$(date +%Y%m%d-%H%M%S).png

if [ "$(wl-paste | wc -c)" -gt 1 ]; then
    wl-paste > $NAME &&
    playsound ~/.config/scripts/screenshot/shutter.mp3 &
    dunstify -i "$NAME" -t 1500 "Screenshot saved at:" "$NAME"
fi

wl-paste | swappy -f - -o $NAME
