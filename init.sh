#!/bin/bash

#
# init.sh
# =======
# This script creates symlinks from the home directory
# to any desired dotfiles in ~/dotfiles.
#

#
# Variables
#

# Dotfiles directory:
dir=~/dotfiles
# Backup the currently present dotfiles to this folder:
olddir=~/dotfiles_old
# List of files/folders to symlink in homedir
dotfiles="bash_profile bashrc bash_aliases gitconfig hushlogin"
# regular files of the non dotted variety
files="z.sh"

#
# Start
#

# Create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# Change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# Move any existing dotfiles in homedir to dotfiles_old directory, then create
# symlinks from the homedir to any files in the ~/dotfiles directory
# specified in $files.
for dotfile in $dotfiles; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    sleep 3
    mv ~/.$dotfile ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    sleep 3
    ln -s $dir/$dotfile ~/.$dotfile
done

# Move any existing files in homedir to dotfiles_old directory, then
# create symlinks from the homedir to any files in the ~/dotfiles directory
# specified in $files.
for file in $files; do
    echo "Moving any existing files from ~ to $olddir"
    sleep 3
    mv ~/$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    sleep 3
    ln -s $dir/$file ~/$file
done
