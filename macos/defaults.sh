#!/bin/sh

# Save screenshots to the Desktop
defaults write com.apple.screencapture location -string "$HOME/Desktop"

# Save screenshots in PNG format
defaults write com.apple.screencapture type -string png

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Finder | Show icons for external hard drives on the Desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true

# Finder | Show icons for hard drives on the Desktop
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true

# Finder | Show icons for servers on the Desktop
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true

# Finder | Show icons for removable media on the Desktop
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Finder | Show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder | Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Avoid creating .DS_Store files on USB volumes
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# will always appear to be changed
# Show the $HOME/Library folder
chflags nohidden "$HOME/Library"

# will always appear to be changed
# Show the /Volumes folder
chflags nohidden /Volumes

# Activity Monitor | Show the main window on launch
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

# Activity Monitor | Show all processes
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# Activity Monitor | Sort results by CPU usage
defaults write com.apple.ActivityMonitor SortColumn -string CPUUsage

# Activity Monitor | Sort results descending
defaults write com.apple.ActivityMonitor SortDirection -int 0

# Photos | Prevent from opening automatically when devices are plugged in
defaults write com.apple.ImageCapture disableHotPlug -bool true
