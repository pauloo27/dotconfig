# set some zsh options
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# good to have
export PATH="$HOME/.local/bin:$PATH"

[ -f $HOME/.extra.zsh ] && source $HOME/.extra.zsh
