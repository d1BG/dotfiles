#!/usr/bin/bash 
hyprpicker -rz &
sleep 0.1
grim -g "$(slurp -d)" - | wl-copy && pkill hyprpicker
wl-paste > /home/deni111bg/Pictures/Screenshots/Screenshot_$(date -u +%Y%m%d-%H%M%S).png
wl-paste | swappy -f -
