"------------------
"   Set's
"------------------

set ic
set relativenumber
set expandtab
set smarttab
set autoindent
set smartindent
set cindent
set modifiable
set noshowmode
set notimeout
set hidden
set laststatus=2
set softtabstop=4
set shiftwidth=4
set tabstop=4
set background=dark
set termguicolors

if exists('$TMUX')
    let &t_8f = "<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "<Esc>[48;2;%lu;%lu;%lum"
endif

