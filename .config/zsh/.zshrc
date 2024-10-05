# Cool envs
export EDITOR=nvim
export GPG_TTY=$(tty)


# Load Keybinds
autoload -U select-word-style
select-word-style bash
source $ZDOTDIR/keybinds

# Completion
autoload -Uz compinit
compinit

# `cd` but better
eval "$(zoxide init --cmd cd zsh)"

zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' rehash true
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion::complete:*' gain-privileges 1

# Plugins

# zsh mode and fzf history conflicts without this:  
ZVM_INIT_MODE=sourcing

source ~/.local/antidote.zsh # i just symlink from /usr/share/zsh-antidote/antidote.zsh
antidote load

# Load integrations
eval "$(starship init zsh)"
source $ZDOTDIR/aliases

# Set history stuff
ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion history)
HISTFILE=$ZDOTDIR/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt interactivecomments

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

eval "$(fzf --zsh)"

# System fetch
f
