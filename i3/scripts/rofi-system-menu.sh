#!/bin/bash

# Lock screen command (adjust to your setup)
LOCK_CMD="$HOME/.config/i3/scripts/lock.sh"

chosen=$(printf " Lock\n Logout\n Suspend\n Hibernate\n Reboot\n Shutdown" | \
    rofi -dmenu -i -p "System")

case "$chosen" in
    " Lock") $LOCK_CMD ;;
    " Logout") i3-msg exit ;;
    " Suspend") $LOCK_CMD && systemctl suspend ;;
    " Hibernate") $LOCK_CMD && systemctl hibernate ;;
    " Reboot") systemctl reboot ;;
    " Shutdown") systemctl poweroff -i ;;
esac
