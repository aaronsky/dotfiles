set PATH \
    /usr/local/bin \
    /usr/local/sbin \
    $HOME/go/bin \
    $HOME/.cargo/bin \
    $HOME/bin \
    $PATH

set -x ANDROID_SDK_HOME $HOME/Library/Android/sdk
set -x -U GOPATH $HOME/go
set -x BAT_THEME TwoDark

starship init fish | source

source /usr/local/opt/asdf/asdf.fish
. ~/.asdf/plugins/java/set-java-home.fish
