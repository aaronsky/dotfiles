#!/bin/sh

## Vim

# Link user settings
link vim/.vimrc .vimrc

## Code

install_code_extension() {
    code --install-extension "$@"
}

# Link user settings
link vscode/settings.json "$VSCODE_USER_PREFS/settings.json"

# Install Code extensions
install_code_extension 'bungcip.better-toml'
install_code_extension 'codezombiech.gitignore'
install_code_extension 'esbenp.prettier-vscode'
install_code_extension 'foxundermoon.shell-format'
install_code_extension 'golang.go'
install_code_extension 'matklad.rust-analyzer'
install_code_extension 'mischah.relaxed-theme'
install_code_extension 'ms-azuretools.vscode-docker'
install_code_extension 'ms-dotnettools.csharp'
install_code_extension 'ms-python.python'
install_code_extension 'ms-toolsai.jupyter'
install_code_extension 'rebornix.ruby'
install_code_extension 'skyapps.fish-vscode'
install_code_extension 'timonwong.shellcheck'
install_code_extension 'vadimcn.vscode-lldb'
install_code_extension 'wingrunr21.vscode-ruby'
install_code_extension 'yzhang.markdown-all-in-one'
