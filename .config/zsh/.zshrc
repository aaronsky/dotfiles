# shellcheck shell=zsh

config_home="${XDG_CONFIG_HOME:-$HOME/.config}"
if [ -f "$config_home/shells/common.sh" ]; then
    source "$config_home/shells/common.sh"
fi

export HISTFILE="${XDG_STATE_HOME:-$HOME/.local/state}/zsh/history"

typeset -U path
fpath+="/opt/homebrew/share/zsh/site-functions"

cache_home="${XDG_CACHE_HOME:-$HOME/.cache}"
zstyle ':completion:*' cache-path "$cache_home/zsh/zcompcache"
autoload -Uz compinit
compinit -d "$cache_home/zsh/zcompdump-$ZSH_VERSION"

eval "$(mise activate zsh)"

eval "$(starship init zsh)"

eval "$(zoxide init zsh)"
