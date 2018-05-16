# Add `~/bin` to the `$PATH`
set PATH $HOME/.bin $PATH
set PATH /usr/local/sbin $PATH

# Add rbenv to the `$PATH`
# set PATH $HOME/.rbenv/bin $PATH

# Add Android command line tools to the `$PATH`
# set PATH $HOME/Library/Android/sdk/tools $PATH
# set PATH $HOME/Library/Android/sdk/platform-tools $PATH

# Add Cargo to the `$PATH`
set PATH $HOME/.cargo/bin $PATH

# Add Yarn to the `$PATH`
# set PATH $HOME/.yarn/bin $PATH

# Add Python 3.6 to the `$PATH`
set PATH $HOME/Library/Python/3.6 $PATH

# Add custom programs to the `$PATH`
set PATH $HOME/.bin $PATH

# swiftenv setup
if which swiftenv > /dev/null; status --is-interactive; and source (swiftenv init -|psub); end

# rbenv setup
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1