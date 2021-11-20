"  _       _ _         _
" (_)     (_) |       (_)
"  _ _ __  _| |___   ___ _ __ ___
" | | '_ \| | __\ \ / / | '_ ` _ \
" | | | | | | |_ \ V /| | | | | | |
" |_|_| |_|_|\__(_)_/ |_|_| |_| |_|
"

if exists('g:vscode')
   " Load vscode config
   source $HOME/.config/nvim/vscode.vim
else
   " Load nvim config
   source $HOME/.config/nvim/plugins.vim
   source $HOME/.config/nvim/options.vim
   source $HOME/.config/nvim/mappings.vim
   source $HOME/.config/nvim/vars.vim
   source $HOME/.config/nvim/functions.vim
   source $HOME/.config/nvim/other.vim
endif
