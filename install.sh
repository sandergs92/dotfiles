#!/bin/bash

########
# nvim #
########
rm -rf "$HOME/.config/nvim"
ln -s "$HOME/dotfiles/nvim" "$HOME/.config"

########
# x11  #
########
rm -rf "$HOME/.config/X11"
ln -s "$HOME/dotfiles/X11" "$HOME/.config"

########
# i3   #
########
rm -rf "$HOME/.config/i3"
ln -s "$HOME/dotfiles/i3" "$HOME/.config"

########
#polyb.#
########
rm -rf "$HOME/.config/polybar"
ln -s "$HOME/dotfiles/polybar" "$HOME/.config"

########
# zsh  #
########
mkdir -p "$HOME/.config/zsh"
mkdir -p "$HOME/.config/local/share"
ln -sf "$HOME/dotfiles/zsh/.zshenv" "$HOME"
ln -sf "$HOME/dotfiles/zsh/.zshrc" "$HOME/.config/zsh"
ln -sf "$HOME/dotfiles/zsh/aliases" "$HOME/.config/zsh/aliases"
rm -rf "$HOME/.config/zsh/external"
ln -sf "$HOME/dotfiles/zsh/external" "$HOME/.config/zsh"

########
# kitty#
########
rm -rf "$HOME/.config/kitty"
ln -s "$HOME/dotfiles/kitty" "$HOME/.config"

########
# picom#
########
rm -rf "$HOME/.config/picom"
ln -s "$HOME/dotfiles/picom" "$HOME/.config"
