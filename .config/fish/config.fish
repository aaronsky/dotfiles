set PATH \
    /usr/local/bin \
    /usr/local/sbin \
    $HOME/go/bin \
    $HOME/.cargo/bin \
    $HOME/bin \
    $PATH
set ANDROID_HOME $HOME/Library/Android/sdk
set -x FASTLANE_HIDE_CHANGELOG 1
set -x FASTLANE_SKIP_UPDATE_CHECK 1
set -x XCODEGEN_OPTIONS "-q"

. $HOME/Repos/py/Environments/default/bin/activate.fish

starship init fish | source

status --is-interactive; and source (rbenv init -|psub)
