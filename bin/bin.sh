#!/usr/bin/env bash

set -euo pipefail

DIR=$(dirname "$0")
cd "$DIR"

source ../scripts/functions.sh

SOURCE="$(realpath --canonicalize-missing .)"
DESTINATION="$(realpath --canonicalize-missing ~/bin)"

info "Setting up user bin..."

substep_info "Creating user bin folder..."
mkdir -p "$DESTINATION"

find -- * -not -name "$(basename "$0")" -type f | while read -r fn; do
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done

clear_broken_symlinks "$DESTINATION"

success "Finished setting up user bin."
