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
set nowritebackup
set hidden
set list
set listchars=tab:▸\ ,trail:·
set scrolloff=8
set sidescrolloff=8
set laststatus=2
set softtabstop=4
set shiftwidth=4
set tabstop=4
set background=dark
set termguicolors
set updatetime=300
set timeoutlen=1000
set ttimeoutlen=0
set ignorecase smartcase
set mouse=

if exists('$TMUX')
    let &t_8f = "<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "<Esc>[48;2;%lu;%lu;%lum"
endif

