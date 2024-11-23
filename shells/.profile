# shellcheck shell=sh

export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$HOME/go/bin:$HOME/.cargo/bin:$HOME/.local/bin:$HOME/bin:$PATH"

export ANDROID_SDK_HOME="$HOME/Library/Android/sdk"
export GOPATH="$HOME/go"

eval "$(starship init bash)"

# export ASDF_DIR="/opt/homebrew/opt/asdf/libexec/asdf.sh"
# . "$(brew --prefix asdf)/libexec/asdf.sh"
# . "$HOME/.asdf/plugins/java/set-java-home.bash"
