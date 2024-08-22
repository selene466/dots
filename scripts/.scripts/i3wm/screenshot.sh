#!/bin/bash

if [ ! -d /tmp/screenshot ]; then
  mkdir -p /tmp/screenshot
fi

screenshot_file="/tmp/screenshot/shot_$(date +%Y_%m_%d_-_%H_%M_%S).png"
maim -s "$screenshot_file"

selected_file=$(ls -t /tmp/screenshot/*.png | dmenu -l 20 -i -p "Select Screenshot to Copy:")

if [ -n "$selected_file" ]; then
  xclip -selection clipboard -t image/png -i <"$selected_file"
  notify-send "Screenshot copied to clipboard"
else
  notify-send "No screenshot selected"
fi
