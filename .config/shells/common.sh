# shellcheck shell=sh

export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_STATE_HOME="${XDG_STATE_HOME:-$HOME/.local/state}"
export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:-$HOME/.local/run}"

export BUNDLE_USER_CACHE="$XDG_CACHE_HOME/bundle"
export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME/bundle"
export BUNDLE_USER_HOME="$XDG_DATA_HOME/bundle"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GOPATH="$XDG_DATA_HOME/go"
export MISE_PYTHON_DEFAULT_PACKAGES_FILE="$XDG_CONFIG_HOME/python/default-python-packages"
export MISE_RUBY_DEFAULT_PACKAGES_FILE="$XDG_CONFIG_HOME/ruby/default-gems"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/config"
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
export PYTHON_HISTORY="$XDG_STATE_HOME/python/history"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/config.toml"

export EDITOR=hx
export PAGER=less
export LESSHISTFILE=-

export ANDROID_SDK_HOME="$HOME/Library/Android/sdk"

export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$CARGO_HOME/bin:$GOPATH/bin:$HOME/.local/bin:$PATH"
