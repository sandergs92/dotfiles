#!/bin/bash

# Kitty should already be running in the background
kitty &

# Switch to the workspace
i3-msg workspace "1: terms"
