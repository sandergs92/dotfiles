#!/bin/bash

# Only launch if not running
pgrep -x firefox >/dev/null || firefox &

# Switch to the workspace
i3-msg workspace "2: web"
