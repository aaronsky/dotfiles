# shellcheck shell=bash

config_home="${XDG_CONFIG_HOME:-$HOME/.config}"
if [ -f "$config_home/shells/common.sh" ]; then
    # shellcheck source=../shells/common.sh
    source "$config_home/shells/common.sh"
fi

export HISTFILE="${XDG_STATE_HOME:-$HOME/.local/state}/bash/history"

eval "$(mise activate bash)"

eval "$(starship init bash)"

eval "$(zoxide init bash)"
