#!/bin/sh

# Check if this is macOS
if [ "$(uname -s)" != "Darwin" ]; then
    fatal "This script cannot be run on any non-macOS system"
fi

# Configure userdefaults
. defaults.sh

# Install Homebrew
setup macos/brew

# Configure iTerm2
# link iterm2/com.googlecode.iterm2.plist "$HOME/Library/Application Support/"
