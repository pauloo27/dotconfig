# set some zsh options
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# golang
export GOPATH="$HOME/dev/go"
export PATH="$PATH:$GOPATH/bin"

# good to have
export PATH="$HOME/.local/bin:$PATH"

# some general scripts
export PATH="$HOME/.config/scripts:$PATH"

[ -f $HOME/.extra.zsh ] && source $HOME/.extra.zsh

# pnpm
export PNPM_HOME="/home/paulo/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
