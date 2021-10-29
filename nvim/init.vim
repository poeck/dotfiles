"  _       _ _         _
" (_)     (_) |       (_)
"  _ _ __  _| |___   ___ _ __ ___
" | | '_ \| | __\ \ / / | '_ ` _ \
" | | | | | | |_ \ V /| | | | | | |
" |_|_| |_|_|\__(_)_/ |_|_| |_| |_|
"

" Is running in Visual Studio Code
if exists('g:vscode')
   source $HOME/.config/nvim/vscode.vim
" Is running in NeoVim
else
   source $HOME/.config/nvim/nvim.vim
endif
