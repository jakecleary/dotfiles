if status is-interactive
    # Commands to run in interactive sessions can go here
end

# NVM (https://github.com/nvm-sh/nvm)
export NVM_DIR="$HOME/.nvm"
[ -s "(brew --prefix)/opt/nvm/nvm.sh" ] && \. "(brew --prefix)/opt/nvm/nvm.sh"
set -gx NVM_DIR (brew --prefix nvm)

# homebrew and random scipts
set PATH /opt/homebrew/bin/ $PATH
set PATH /Users/jake/bin/ $PATH

# aliases
source aliases.fish

# starship prompt (https://starship.rs/)
starship init fish | source
