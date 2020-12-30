#!/usr/bin/env bash

set -euo pipefail

DIR=$(dirname "$0")
cd "$DIR"

source ../scripts/functions.sh

COMMENT=( \#* )

sudo -v

###############################################################################
# Homebrew                                                                    #
###############################################################################

info "Installing Brewfile packages..."
brew bundle
success "Finished installing Brewfile packages."

###############################################################################
# asdf                                                                        #
###############################################################################

info "Installing asdf plugins..."

plugin_add_exit=0
asdf plugin add ruby || plugin_add_exit=$?
asdf plugin add nodejs || plugin_add_exit=$?
asdf plugin add python || plugin_add_exit=$?
asdf plugin add java || plugin_add_exit=$?

if [ $plugin_add_exit -ne 0 ] && [ $plugin_add_exit -ne 2 ]; then
    exit $plugin_add_exit
fi

info "Importing Node.js GPG keys..."
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring &>/dev/null

success "Finished installing asdf plugins."

info "Installing asdf versions..."
asdf install
success "Finished installing asdf versions."

###############################################################################
# Rustup                                                                      #
###############################################################################

info "Installing rustup..."
curl 'https://sh.rustup.rs' -sSf | sh -s -- -y
success "Finished installing rustup."

###############################################################################
# Everything else                                                             #
###############################################################################

find -- * -name "*.list" | while read -r fn; do
    cmd="${fn%.*}"
    set -- "$cmd"

    info "Installing $1 packages..."

    while read -r package; do
        if [ "$package" == "${COMMENT[*]}" ]; then
            continue
        fi

        substep_info "Installing $package..."
        $cmd "$package"
    done <"$fn"

    success "Finished installing $1 packages."
done
