function update --description 'Get OS X Software Updates and update Homebrew, mas, and npm packages'
    sudo softwareupdate ---install --all
    brew upgrade
    brew cleanup
    rustup update
end
