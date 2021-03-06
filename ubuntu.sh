#!/bin/bash
# download.sh

sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo apt-get update -y
sudo apt-get install neovim -y
sudo apt install git -y
sudo apt install snapd -y
sudo snap install alacritty --classic 
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
sudo apt install tmux -y
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
sudo apt install fish -y
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
sudo chsh -s `which fish`
fish
omf install zeit
curl -sLf https://raw.githubusercontent.com/poeck/Dotfiles/main/install.sh | bash
chsh -s `which fish`
