#!/bin/bash
# download.sh

sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
sudo apt install snapd
snap install alacritty --classic
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
sudo apt install tmux
curl -sLf https://raw.githubusercontent.com/poeck/Dotfiles/main/download.sh | bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
