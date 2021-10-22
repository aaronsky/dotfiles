#!/bin/sh

link .gitignore_global
link .gitconfig

if [ "$(uname -s)" = "Darwin" ]; then
    git config --global credential.helper osxkeychain
fi
