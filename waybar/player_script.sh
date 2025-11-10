#!/bin/bash

# get player status
player_status=$(playerctl -p lowfi.chillhop status)
player_title=$(playerctl -p lowfi.chillhop metadata title)

# print all the information
# echo "$player_status\n$player_title\nclass"
printf '{"text": "%s", "tooltip": "Chillhop - %s"}\n' "$player_status" "$player_title"
