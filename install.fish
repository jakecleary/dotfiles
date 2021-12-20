# install homebrew using bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install software I use
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

# install oh-my-fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

# install NVM
omf install nvm