#!/bin/sh

notify-send "Now Playing" -- "$(mpc --format '%title% \n%artist% - %album%' current)"
