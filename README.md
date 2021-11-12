# Dotfiles

My dotfiles for:

- Alacritty
- Neovim

> by Paul Koeck

## Example

![alt example](https://github.com/paulkoeckdev/DotFiles/blob/main/example.png?raw=true)

## Installation

```bash
curl -sLf https://raw.githubusercontent.com/poeck/Dotfiles/main/download.sh | bash
```

## Prequerities

1. [Alacritty](https://github.com/alacritty/alacritty)
2. [Neovim](https://neovim.io/) (Latest)
3. [Vim-plug](https://github.com/junegunn/vim-plug)
4. [tmux](https://github.com/tmux/tmux)

### Install on Ubuntu

```bash
sudo apt install snapd
snap install alacritty
sudo apt-get install neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
sudo apt install tmux
curl -sLf https://raw.githubusercontent.com/poeck/Dotfiles/main/download.sh | bash
```
