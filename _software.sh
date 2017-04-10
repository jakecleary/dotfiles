#!/usr/bin/env bash

# install ruby version namager and use latest stable ruby
printf "Installing RVM and upgrading ruby to latest stable release… (https://rvm.io)."
\curl -sSL https://get.rvm.io | bash -s stable --ruby
source ~/.rvm/scripts/rvm

printf "Installing NVM… (https://github.com/creationix/nvm)."
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install node

# install brew
printf "\nInstalling homebrew… (https://brew.sh)"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install brew cask
printf "\nInstalling homebrew cask… (https://caskroom.github.io)"
brew tap caskroom/cask

# install programs
printf "\nInstalling programs using brew…"
brew install git yarn

# install binary programs
printf "\nInstalling binary programs using brew cask…"
brew cask install github-desktop sourcetree visual-studio-code google-chrome iterm2 spectacle bartender alfred

# configure ssh
printf "\nGenerating an SSH key for this machine…"
ssh-keygen -t rsa -b 4096 -C "shout@jakecleary.net"
printf "Making sure your SSH keys are available after every reboot…"
printf "Host *" >> ~/.ssh/config
printf "  AddKeysToAgent yes" >> ~/.ssh/config
printf "  UseKeychain yes" >> ~/.ssh/config
printf "  IdentityFile ~/.ssh/id_rsa" >> ~/.ssh/config
printf "\nAdding key to ssh-agent…"
ssh-add -K ~/.ssh/id_rsa