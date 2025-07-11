#!/bin/bash

# Only launch if not running
pgrep -x steam >/dev/null || steam &
pgrep -x discord >/dev/null || discord &

# Switch to the workspace
i3-msg workspace "3: gaming"
