#!/usr/bin/bash
vol="$(wpctl get-volume @DEFAULT_SINK@)"
vol="${vol//Volume: /}"

case $1 in

inc )
if [ "${vol//./}" -lt 100 ]
  then wpctl set-volume @DEFAULT_SINK@ 5%+ && dunstify -h string:x-dunst-stack-tag:volume -t 1500 Volume: $(wpctl get-volume @DEFAULT_SINK@ | awk '{print $2 * 100}')% 
fi
;;

dec )
if [ "${vol//./}" -lt 101 ]
    then wpctl set-volume @DEFAULT_SINK@ 5%- && dunstify -h string:x-dunst-stack-tag:volume -t 1500 Volume: $(wpctl get-volume @DEFAULT_SINK@ | awk '{print $2 * 100}')% 
fi 
;;

micmute )
    wpctl set-mute @DEFAULT_SOURCE@ toggle
    sleep 0.1
    while [[ $(wpctl get-volume @DEFAULT_SOURCE@ | awk '{print $3}') == "[MUTED]" ]]
    do
        dunstify -h string:x-dunst-stack-tag:volume -t 5000 'Mic Muted'
        sleep 60
    done
;;

mute )
    wpctl set-mute @DEFAULT_SINK@ toggle
    sleep 0.1
    if [[ $(wpctl get-volume @DEFAULT_SINK@ | awk '{print $3}') == "[MUTED]" ]] then
        dunstify -h string:x-dunst-stack-tag:volume -t 1500 'Audio Muted'
    else 
        dunstify -h string:x-dunst-stack-tag:volume -t 1500 Volume: $(wpctl get-volume @DEFAULT_SINK@ | awk '{print $2 * 100}')%
    fi
;;

* )
  dunstify Invalid;
;;

esac
