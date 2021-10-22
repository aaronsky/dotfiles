#!/bin/sh

export DOTFILES_PATH="$HOME/dotfiles"
export CONFIG_PATH="$HOME/.config"

## Logging

fatal() {
    echo "$@"
    exit 1
}

## Link

symlink() {
    source="$1"
    dest="$2"
    if [ -n "${dest:-}" ]; then
        dest="$1"
    fi

    ln -sv "$DOTFILES_PATH/$source" "$dest"
}

setup() {
    . "$DOTFILES_PATH/$1/setup.sh"
}
