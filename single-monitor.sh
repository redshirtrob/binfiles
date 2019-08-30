#!/bin/bash
#
# Move workspaces to eDP-1
#
# usage: single-monitor.sh

workspaces=$(i3-msg -t get_workspaces | jq '.[] | select(.output == "eDP-1") | .num' | tr '\n' ' ')

for workspace in $workspaces
do
    i3-msg "workspace $workspace, move workspace to output eDP-1"
done

xrandr --output eDP-1 --auto
