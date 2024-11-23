autoload -Uz compinit
compinit

eval "$(mise activate zsh)"

eval "$(starship init zsh)"

if [ -e "$HOME/.iterm2_shell_integration.zsh" ]; then
    source "$HOME/.iterm2_shell_integration.zsh"
fi
