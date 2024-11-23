function update --description 'Update macOS packages, Homebrew and Rust'
    brew upgrade; and brew cleanup
    rustup update
end
