# Dotfiles

My personal Dotfiles, including:

- Alacritty
- Neovim
- tmux

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
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
sudo apt install snapd
snap install alacritty
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
sudo apt install tmux
curl -sLf https://raw.githubusercontent.com/poeck/Dotfiles/main/download.sh | bash
```

## Credits

- https://github.com/gpakosz/.tmux
