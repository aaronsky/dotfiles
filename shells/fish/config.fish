fish_add_path \
    /opt/homebrew/bin \
    /opt/homebrew/sbin \
    $HOME/go/bin \
    $HOME/.cargo/bin \
    $HOME/.local/bin \
    $HOME/bin

set --export ANDROID_SDK_HOME $HOME/Library/Android/sdk
set --export --universal GOPATH $HOME/go

if status is-interactive
    mise activate fish | source
else
    mise activate fish --shims | source
end

starship init fish | source

if test -e $HOME/.iterm2_shell_integration.fish
    source $HOME/.iterm2_shell_integration.fish
end
