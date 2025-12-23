# set some zsh options
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Nix
if [ -e "$HOME/.nix-profile/etc/profile.d/nix.sh" ]; then
  . "$HOME/.nix-profile/etc/profile.d/nix.sh"
else
  # Fallback: manually add Nix to PATH
  export PATH="$HOME/.nix-profile/bin:$PATH"
fi

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
