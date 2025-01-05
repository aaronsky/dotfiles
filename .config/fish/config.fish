set --query XDG_CACHE_HOME || set --universal XDG_CACHE_HOME $HOME/.cache
set --query XDG_CONFIG_HOME || set --universal XDG_CONFIG_HOME $HOME/.config
set --query XDG_DATA_HOME || set --universal XDG_DATA_HOME $HOME/.local/share
set --query XDG_STATE_HOME || set --universal XDG_STATE_HOME $HOME/.local/state
set --query XDG_RUNTIME_DIR || set --universal XDG_RUNTIME_DIR $HOME/.local/run

set --export BUNDLE_USER_CACHE $XDG_CACHE_HOME/bundle
set --export BUNDLE_USER_CONFIG $XDG_CONFIG_HOME/bundle
set --export BUNDLE_USER_HOME $XDG_DATA_HOME/bundle
set --export CARGO_HOME $XDG_DATA_HOME/cargo
set --export GNUPGHOME $XDG_DATA_HOME/gnupg
set --export GOPATH $XDG_DATA_HOME/go
set --export MISE_PYTHON_DEFAULT_PACKAGES_FILE $XDG_CONFIG_HOME/python/default-python-packages
set --export MISE_RUBY_DEFAULT_PACKAGES_FILE $XDG_CONFIG_HOME/ruby/default-gems
set --export NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/config
set --export NPM_CONFIG_CACHE $XDG_CACHE_HOME/npm
set --export PYTHON_HISTORY $XDG_STATE_HOME/python/history
set --export RUSTUP_HOME $XDG_DATA_HOME/rustup
set --export STARSHIP_CONFIG $XDG_CONFIG_HOME/starship/config.toml

set --export EDITOR hx
set --export PAGER less
set --export LESSHISTFILE -

set --export ANDROID_SDK_HOME $HOME/Library/Android/sdk

fish_add_path \
    /opt/homebrew/bin \
    /opt/homebrew/sbin \
    $CARGO_HOME/bin \
    $GOPATH/bin \
    $HOME/.local/bin

if status is-interactive
    mise activate fish | source
else
    mise activate fish --shims | source
end

starship init fish | source

zoxide init fish | source
