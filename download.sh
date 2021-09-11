#!/bin/bash
# download.sh

git clone https://github.com/paulkoeckdev/dotfiles ~/dotfiles
cd ~/dotfiles
chmod +x ./install.sh
./install.sh
