#!/usr/bin/env bash

set -euo pipefail

DIR=$(dirname "$0")
cd "$DIR"

source ../scripts/functions.sh

SOURCE="$(realpath --canonicalize-missing .)"
DESTINATION="$(realpath --canonicalize-missing ~)"

info "Configuraing git..."

find . -name ".git*" | while read -r fn; do
    fn=$(basename "$fn")
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done

success "Finished configuring git."
