# For dotfiles
export XDG_CONFIG_HOME="$HOME/.config"

# For specific data
export XDG_DATA_HOME="$HOME/.local/share"

# For cached files
export XDG_CACHE_HOME="$HOME/.cache"

# Set favorite editor
export EDITOR="nvim"
export VISUAL="nvim"

# zbash directory
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# History filepath
export HISTFILE="$ZDOTDIR/.zhistory"
# Max events for internal history
export HISTSIZE=10000
# Max events in history file
export SAVEHIST=10000

# Dotfiles var
export DOTFILES="$HOME/dotfiles"

# ripgrep
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
