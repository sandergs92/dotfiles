#! /bin/bash

# Only launch if not running
pgrep -x gimp >/dev/null || gimp &
pgrep -x soffice.bin >/dev/null || libreoffice --writer &

# Switch to the workspace
i3-msg workspace "4: gamedev"
