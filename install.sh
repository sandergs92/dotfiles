#!/bin/bash

set -euo pipefail

# Defaults (only if not already set)
: "${DOTFILES:=$HOME/dotfiles}"
: "${XDG_CONFIG_HOME:=$HOME/.config}"
: "${XDG_DATA_HOME:=$HOME/.local/share}"

########
# nvim #
########
rm -rf "$XDG_CONFIG_HOME/nvim"
ln -s "$DOTFILES/nvim" "$XDG_CONFIG_HOME"

########
# x11  #
########
rm -rf "$XDG_CONFIG_HOME/X11"
ln -s "$DOTFILES/X11" "$XDG_CONFIG_HOME"

########
# i3   #
########
rm -rf "$XDG_CONFIG_HOME/i3"
ln -s "$DOTFILES/i3" "$XDG_CONFIG_HOME"

########
#polyb.#
########
rm -rf "$XDG_CONFIG_HOME/polybar"
ln -s "$DOTFILES/polybar" "$XDG_CONFIG_HOME"

########
# zsh  #
########
mkdir -p "$XDG_CONFIG_HOME/zsh"
mkdir -p "$XDG_DATA_HOME"
ln -sf "$DOTFILES/zsh/.zshenv" "$HOME/.zshenv"
ln -sf "$DOTFILES/zsh/.zshrc" "$XDG_CONFIG_HOME/zsh/.zshrc"
ln -sf "$DOTFILES/zsh/aliases" "$XDG_CONFIG_HOME/zsh/aliases"
rm -rf "$XDG_CONFIG_HOME/zsh/external"
ln -sf "$DOTFILES/zsh/external" "$XDG_CONFIG_HOME/zsh/external"

########
# kitty#
########
rm -rf "$XDG_CONFIG_HOME/kitty"
ln -s "$DOTFILES/kitty" "$XDG_CONFIG_HOME"

########
# ghost#
########
rm -rf "$XDG_CONFIG_HOME/ghostty"
ln -s "$DOTFILES/ghostty" "$XDG_CONFIG_HOME"

########
# picom#
########
rm -rf "$XDG_CONFIG_HOME/picom"
ln -s "$DOTFILES/picom" "$XDG_CONFIG_HOME"

########
# tmux #
########
mkdir -p "$XDG_CONFIG_HOME/tmux"
ln -sf "$DOTFILES/tmux/tmux.conf" "$XDG_CONFIG_HOME/tmux/tmux.conf"

# Make all bash scripts in dotfiles executable
find "$DOTFILES" -type f -name '*.sh' -exec chmod +x {} \;
