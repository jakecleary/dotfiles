# dotfiles

Currently a simple backup of some config files I care about.
This does not do anything fancy, like automated installation or backup.
It's just a bunch of copy-pasted files, and a list of programs I usually
install using homebrew, etc.

This is for my own benefit. Don't expect to be able to turn this into 
anything useful for yourself. Maybe one day I'll automate this and it'll 
be of use to someone else, but today is not that day 😄

For the CLI, I use...

- [kitty](https://sw.kovidgoyal.net/kitty/invocation/) as my terminal emulator
- [fish](https://fishshell.com/) as my shell
- [starship](https://starship.rs) as my prompt

I also use [lazygit](https://github.com/jesseduffield/lazygit) to interact with 
git repos without straying too far from the command-line.

## setup

1. Install homebrew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Install oh-my-fish

```
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
```

3. Install node-version-manager (NVM)

```
omf install nvm
```

4. Install programs

```
chmod +x install.fish
./install.fish
```

5. Copy over files from /.config (take a backup of ~/.config first!)

```
cp -r .config ~/.config
```

6. Copy over .gitconfig

```
cp .gitconfig ~/.gitconfig
```