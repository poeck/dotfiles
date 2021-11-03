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
   source $HOME/.config/nvim/nvim.vim
endif
