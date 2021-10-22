#!/bin/sh

repos_path="${REPOS_PATH:-"$HOME/repos"}"

clone_repo() {
    url="$1"
    dest="$1/$2/$3"
    git clone "$url" "$dest"
}

mkdir -p "$repos_path"

mkdir -p "$repos_path/cider"

mkdir -p "$repos_path/extra"

mkdir -p "$repos_path/go"

mkdir -p "$repos_path/ios"

mkdir -p "$repos_path/js"
clone_repo js aaronsky git@github.com:aaronsky/aaronsky.git

mkdir -p "$repos_path/rs"

mkdir -p "$repos_path/swift"
