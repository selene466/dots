#!/bin/bash

selected_brightness=$(echo '10
9
8
7
6
5
4
3
2
1' | tofi)

if [ -n "$selected_brightness" ]; then
  dimland -a "$(echo $selected_brightness | awk '{print (10 - $1)/10}')"
  notify-send "Brightness set to $selected_brightness"
else
  notify-send "No brightness selected"
fi
