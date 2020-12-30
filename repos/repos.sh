#!/usr/bin/env bash

set -euo pipefail

DIR=$(dirname "$0")
cd "$DIR"

source ../scripts/functions.sh

COMMENT=( \#* )
REPO_PATH=$(realpath --canonicalize-missing ~/repos)

find -- * -name "*.list" | while read -r fn; do
    folder="${fn%.*}"

    info "Cloning $folder repositories..."

    substep_info "Creating $folder folder..."
    mkdir -p "$REPO_PATH/$folder"
    while read -r repo; do
        if [[ "$repo" == "${COMMENT[*]}" ]]; then
            continue
        fi

        pushd "$REPO_PATH/$folder" &>/dev/null

        status=0
        git clone -- "$repo" || status=$?

        if [ $status -eq 128 ]; then
            substep_success "$repo already exists."
        elif [ $status -eq 0 ]; then
            substep_success "Cloned $repo."
        else
            substep_error "Failed to clone $repo."
        fi

        popd &>/dev/null
    done <"$fn"

    success "Finished cloning $folder repositories."
done
