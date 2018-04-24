#!/bin/zsh
killall -q polybar
MONITOR=eDP-1 polybar example &
MONITOR=HDMI-1 polybar example &
