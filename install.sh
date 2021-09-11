#!/bin/bash
# install.sh

dir=~/dotfiles
backup=~/dotfiles_old
configs="nvim alacritty"

echo ""
echo $"Creating $backup to backup files."
mkdir -p $backup
echo ""

for config in $configs; do
    mv ~/.config/$config $backup 
    echo "Creating symlink to $config in home directory."
    ln -s $dir/$config ~/.config/
done

echo ""
echo "Finished!"
echo ""
