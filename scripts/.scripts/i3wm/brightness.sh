#!/bin/bash

display='HDMI-0'

selected_brightness=$(echo '10
9
8
7
6
5
4
3
2
1' | dmenu -l 20 -i -p "Select brightness:")

if [ -n "$selected_brightness" ]; then
  xrandr --output "$display" --brightness "$(echo $selected_brightness | awk '{print $1/10}')"
  notify-send "Brightness set to $selected_brightness"
else
  notify-send "No brightness selected"
fi
