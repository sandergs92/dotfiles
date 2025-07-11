#!/bin/bash

# Only launch if not running
pgrep -x kitty >/dev/null || kitty &

# Switch to the workspace
i3-msg workspace "1: terms"
