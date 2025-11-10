#!/bin/bash

# get brightness level
cur=$(brightnessctl g)
max=$(brightnessctl m)
per=$((cur * 100 / max))
brightness_percentage=$(echo "BRI󰃟 :$per%")

# get volume level
vol=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}')
mute=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')
if [[ "$mute" == "no" ]]
then
    volume=$(echo "VOL󰕾 :$vol")
else
    volume=$(echo "VML󰝟 :$vol")
fi

# get battery status
bat0=$(cat /sys/class/power_supply/BAT0/capacity)
bat1=$(cat /sys/class/power_supply/BAT1/capacity)
plug=$(cat /sys/class/power_supply/AC/online)
if [[ "$plug" == "1" ]]
then
    battery=$(echo "PLG0 :$bat0% PLG1 :$bat1%")
else
    battery=$(echo "BAT0 :$bat0% BAT1 :$bat1%")
fi

# get date
date=$(date +'%Y/%m/%d %A %I:%M:%S %p')

# get player status
player_status=$(playerctl -p lowfi.chillhop status)
player_title=$(playerctl -p lowfi.chillhop metadata title)

# print all the information
echo $player_status $player_title $brightness_percentage $volume $battery $date
