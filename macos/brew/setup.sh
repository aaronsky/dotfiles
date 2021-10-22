#!/bin/sh

if ! command -v brew >/dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle --file="$DOTFILES_PATH/macos/brew/Brewfile"
brew cleanup
