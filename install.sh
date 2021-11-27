#!/bin/bash
# install.sh

# Colors
FgBlack='\e[30m'
FgRed='\e[31m'
FgGreen='\e[32m'
FgYellow='\e[33m'
FgBlue='\e[34m'
FgMagenta='\e[35m'
FgCyan='\e[36m'
FgWhite='\e[37m'

# Variables
dir=~/dotfiles
backup=~/dotfiles_old
config="nvim alacritty omf fish"
tmux=".tmux.conf .tmux.conf.local"
home=".doom.d .tmux"

# Functions
info() {
    printf "${FgBlue}[INFO]:${FgWhite} $1\n" 
}

warn() {
    printf "${FgYellow}[WARN]:${FgWhite} $1\n" 
}

success() {
    printf "${FgGreen}[SUCCESS]:${FgWhite} $1\n" 
}


# New line at beginning 
echo

info "Cloning repo to $dir"
git clone https://github.com/poeck/dotfiles $dir

# Initialize Backup
info $"Creating \"$backup\" to backup files."
rm -rf $backup
mkdir -p $backup

# Files in .config dir
for config in $config; do
    mv ~/.config/$config $backup 
    info "Creating symlink to $config in \"~/.config\"."
    ln -s $dir/$config ~/.config/
done

# Files in ~
for file in $tmux; do
    mv ~/$file $backup
    info "Creating symlink for $file in \"~\"."
    ln -s $dir/tmux/$file ~/$file
done

# Folders in ~
for folder in $home; do
    mv ~/$folder $backup
    info "Creating symlink to $folder in \"~\"."
    ln -s $dir/$folder ~/
done

# Warning
echo 
warn "Don't forget to:"
warn "   - Run :PlugInstall inside vim"
warn "   - Press Ctrl+Space+I inside tmux"
echo

# Notify success
success "Finished installation!"

# Last empty line
echo 
