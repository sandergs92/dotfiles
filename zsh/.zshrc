source "$XDG_CONFIG_HOME/zsh/aliases"

setopt AUTO_PARAM_SLASH
unsetopt CASE_GLOB

zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

autoload -U compinit; compinit

# autocomplete hidden files
_comp_options+=(globdots)
source $DOTFILES/zsh/external/completion.zsh

fpath=($ZDOTDIR/external $fpath)

autoload -Uz prompt_purification_setup; prompt_purification_setup

# Push the current direcotry visited on to the stack
setopt AUTO_PUSHD
# Do not store duplicate directories in the stack
setopt PUSHD_IGNORE_DUPS
# Do not print the directory stack after using pushd or popd
setopt PUSHD_SILENT

bindkey -v
export KEYTIMEOUT=1

autoload -Uz cursor_mode && cursor_mode

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

source $DOTFILES/zsh/external/bd.zsh
source $DOTFILES/zsh/scripts.sh

if [ $(command -v "fzf") ]; then
    source /usr/share/fzf/completion.zsh
    source /usr/share/fzf/key-bindings.zsh
fi

if [ "$(tty)" = "/dev/tty1" ];
then
    pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi

if [ -f "/home/sandergs/miniconda3/bin/conda" ]; then
    eval "$(/home/sandergs/miniconda3/bin/conda shell.zsh hook)"
fi

bindkey -r '^l'
bindkey -r '^g'
bindkey -s '^g' 'clear\n'

# should always be at bottom
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
