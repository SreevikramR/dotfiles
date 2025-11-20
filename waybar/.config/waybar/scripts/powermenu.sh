#!/bin/bash

# Use wofi for a dmenu-style power menu
# You can customize the prompt (-p) and other wofi flags

chosen=$(printf "  Lock\n  Logout\n  Restart\n  Shutdown" | wofi --dmenu -p "Power Menu")

case "$chosen" in
  "  Lock")
    hyprlock
    ;;
  "  Logout")
    hyprctl dispatch exit 0
    ;;
  "  Restart")
    systemctl reboot
    ;;
  "  Shutdown")
    systemctl poweroff
    ;;
  *)
    exit 1
    ;;
esac
