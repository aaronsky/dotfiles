#!/usr/bin/env bash

set -euo pipefail

DIR=$(dirname "$0")
cd "$DIR"

source ../scripts/functions.sh

SOURCE="$(realpath --canonicalize-missing .)"
DESTINATION="$(realpath --canonicalize-missing ~/Library/Application\ Support/Code/User)"

info "Setting up Visual Studio Code..."

substep_info "Creating Visual Studio Code folders..."
mkdir -p "$DESTINATION"

symlink "$SOURCE/settings.json" "$DESTINATION/settings.json"

while read -r fn; do
    code --force --install-extension "$fn"
done <"$SOURCE/extensions.list"

success "Finished setting up Visual Studio Code"
