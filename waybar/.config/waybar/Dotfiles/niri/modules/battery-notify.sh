#!/bin/bash

capacity=$(cat /sys/class/power_supply/BAT0/capacity)
status=$(cat /sys/class/power_supply/BAT0/status)

if [[ "$status" == "Discharging" && $capacity -le 15 ]]; then
  notify-send -u critical "  Low Battery" "$capacity% remaining"
fi
