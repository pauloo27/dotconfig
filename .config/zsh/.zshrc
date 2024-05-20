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
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' rehash true
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion::complete:*' gain-privileges 1

# Plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/zsh/plugins/zsh-sudo/sudo.plugin.zsh

ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion history)

# Load integrations
eval "$(starship init zsh)"
source $ZDOTDIR/aliases

# Set history stuff
HISTFILE=$ZDOTDIR/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

eval "$(fzf --zsh)"

# System fetch
f
