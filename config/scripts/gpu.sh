#!/usr/bin/bash
GPUSTATE=$(cat /sys/bus/platform/devices/INTC1040:00/odvp2)

case $GPUSTATE in 
  0 )
    echo "󰾅";;
  1 )
    echo "󰓅";;
  2 )
    echo "󰾆";;
esac
