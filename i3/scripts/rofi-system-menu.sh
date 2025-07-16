#!/bin/bash

# Lock screen command
LOCK_CMD="$DOTFILES/i3/scripts/lock.sh"

chosen=$(printf " Lock\n Logout\n Suspend\n Reboot\n Shutdown" |
    rofi -dmenu -i -p "System")

case "$chosen" in
" Lock") $LOCK_CMD ;;
" Logout") i3-msg exit ;;
" Suspend") $LOCK_CMD && systemctl suspend ;;
" Reboot") systemctl reboot ;;
" Shutdown") systemctl poweroff -i ;;
esac
