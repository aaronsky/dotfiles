# shellcheck shell=bash

export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:=$HOME/.config}

# shellcheck source=.config/bash/.bashrc
source "$XDG_CONFIG_HOME/bash/.bashrc"
