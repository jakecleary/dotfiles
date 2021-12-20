#!/usr/bin/env bash

# install homebrew
printf "\nInstalling homebrew… (https://brew.sh)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install programs
printf "\nInstalling programs using brew…"
brew install \
    git \
    yarn \
    sqlite \
    git-extras \
    fish \
    lazygit \
    neofetch \
    nvm \
    starship \
    bitwarden \
    deepl \
    font-source-code-pro \
    google-chrome \
    gpg-suite \
    jetbrains-toolbox \
    kitty \
    pocket-casts \
    raycast \
    spotify \
    todoist \
    visual-studio-code \
    whatsapp \