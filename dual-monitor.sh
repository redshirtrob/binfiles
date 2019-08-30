#!/bin/bash
#
# Move workspaces to HDMI-2
#
# usage: dual-monitor.sh

xrandr --output eDP-1 --auto --output HDMI-2 --auto --right-of eDP-1

workspaces=$(i3-msg -t get_workspaces | jq '.[] | select(.output == "HDMI-2") | .num' | tr '\n' ' ')

for workspace in $workspaces
do
    i3-msg "workspace $workspace, move workspace to output HDMI-2"
done

