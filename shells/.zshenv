path=(
    "/opt/homebrew/bin"
    "/opt/homebrew/sbin"
    "$HOME/go/bin"
    "$HOME/.cargo/bin"
    "$HOME/.local/bin"
    "$HOME/bin"
    $path
)
fpath=(
    "/opt/homebrew/share/zsh/site-functions"
    $fpath
)

export ANDROID_SDK_HOME="$HOME/Library/Android/sdk"
export GOPATH="$HOME/go"
