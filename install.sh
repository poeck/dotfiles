#!/bin/bash
# install.sh

dir=~/dotfiles
backup=~/dotfiles_old
config="nvim alacritty"
tmux=".tmux.conf .tmux.conf.local"
home=".doom.d"

echo ""
echo $"Creating $backup to backup files."
mkdir -p $backup
echo ""

for config in $config; do
    mv ~/.config/$config $backup 
    echo "Creating symlink to $config in .config directory."
    ln -s $dir/$config ~/.config/
done

for file in $tmux; do
    mv ~/$folder $backup
    echo "Creating symlink for $file in ~ directory."
    ln -s $dir/tmux/$file ~/$file
done

for folder in $home; do
    mv ~/$folder $backup
    echo "Creating symlink to $folder in ~ directory."
    ln -s $dir/$folder ~/
done

echo ""
echo "Finished!"
echo ""
