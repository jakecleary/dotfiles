# Enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Open specified files in Sublime Text
alias subl="open -a 'Sublime Text'"

#
# Git
# ===
# A collection of aliases and functions related to Git.
#

# Three letter is just too much
alias g='git'

#
# Key directories
# ===============
# These are directories that I frequently access.
#

# Personal projects
alias p="cd ~/pp"

# Work projects
alias w="cd ~/wp"

#
# Wordpress
#

# Bit of a convoluted way of getting Wordpress in your current directory
alias wordpress="curl -O https://wordpress.org/latest.zip && unzip latest.zip && mv wordpress/* . && rm -rf wordpress latest.zip && open ."

#
# Laravel
#

alias art="php artisan"

#
# Misc
# ====
# Random aliases that don;t have a home.
#

# Go back a directory easily.
alias b="cd .."
alias bb="cd ../.."
alias bbb="cd ../../.."
alias bbbb="cd ../../../.."

# Apache/general server stuff
alias hosts="sudo atom /etc/hosts"

# Show/Hide hidden files
alias sF="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app"
alias hF="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app"

# Use thefuck tool
alias fuck='eval $(thefuck $(fc -ln -1)); history -r'
