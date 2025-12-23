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

ZSH_HIGHLIGHT_STYLES[comment]='fg=8'

# Support bash-like completition
autoload bashcompinit
bashcompinit

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

# edit the command line in $EDITOR. Not in the keybinds file because it was being
# overwritten by the plugins
autoload -z edit-command-line
zle -N edit-command-line
bindkey '^E' edit-command-line

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

eval "$(fzf --zsh)"

source "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"

# System fetch
f

