#!/usr/bin/bash
vol="$(wpctl get-volume @DEFAULT_SINK@)"
vol="${vol//Volume: /}"
echo "${vol//./}"
if [ "${vol//./}" -lt 101 ]
    then wpctl set-volume @DEFAULT_SINK@ 5%-
fi
