"------------------ 
"   Plugins 
"------------------
call plug#begin('~/.vim/plugged')

" Theme
Plug 'rakr/vim-one'
" Icons for barbar
Plug 'ryanoasis/vim-devicons'
" Web icons
Plug 'kyazdani42/nvim-web-devicons'
" Extensions & Servers 
Plug 'neoclide/coc.nvim'
" File viewer
Plug 'scrooloose/nerdtree'
" Nerd tree highlight
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Search files
Plug 'ctrlpvim/ctrlp.vim'
" Javascript
Plug 'pangloss/vim-javascript'
" Typescript
Plug 'leafgarland/typescript-vim'
" JSX
Plug 'peitalin/vim-jsx-typescript'
" Auto pair brackets
Plug 'jiangmiao/auto-pairs'
" Terminal
Plug 'kassio/neoterm'
" HTML abbreviations
Plug 'mattn/emmet-vim'
" Status bar
Plug 'vim-airline/vim-airline'
" Tab bar
Plug 'romgrk/barbar.nvim'
" Discord status
Plug 'vimsence/vimsence'
" Auto rename tags
Plug 'AndrewRadev/tagalong.vim'
" Dart syntax highlight
Plug 'dart-lang/dart-vim-plugin'
" TagBar on left side
Plug 'majutsushi/tagbar'
" Quick comments
Plug 'tpope/vim-commentary'
" Sublime multiple cursors
Plug 'terryma/vim-multiple-cursors'
" Git wrapper
Plug 'tpope/vim-fugitive'

call plug#end()
    

"------------------
"   Set's 
"------------------

set ic
set relativenumber
set expandtab
set smarttab
set autoindent
set cindent
set modifiable
set noshowmode
set termguicolors
set notimeout
set laststatus=2
set softtabstop=4
set shiftwidth=4
set tabstop=4
set background=dark


"------------------
"   Remaps 
"------------------

" Set leader
let mapleader = "\<Space>"

" Any mode
noremap F /
noremap <leader>m :
noremap <silent> <C-c> :noh<CR>
noremap <silent> <C-q> :q!<CR>
noremap <silent> <leader>cc :bw!<CR>
noremap <silent> <leader>q :bw!<CR>
noremap <silent> <leader>s :w<CR>
noremap <silent> <leader>t :call Term()<CR> 
noremap <silent> <leader>Q :qa!<CR>
noremap <silent> <leader>p :CtrlP<CR>
noremap <silent> <leader>ca :call CloseAllButCurrent()<CR>

" Normal Mode
nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l
nnoremap <S-u> <PageDown>
nnoremap <S-i> <PageUp>
nnoremap <S-j> 10j 
nnoremap <S-k> 10k 
nnoremap <S-h> 0
nnoremap <S-l> $
nnoremap <silent> <leader>n :NERDTreeToggle<CR>
nnoremap <silent> <leader>f :TagbarToggle<CR>
nnoremap <silent> <Esc> :call coc#float#close_all() <CR>
nnoremap <silent> t :call CocAction('doHover')<CR>
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gr <Plug>(coc-references)
nnoremap <silent> <leader>, :BufferPrevious<CR>
nnoremap <silent> <leader>. :BufferNext<CR>
nnoremap <silent> <leader>1 :BufferGoto 1<CR>
nnoremap <silent> <leader>2 :BufferGoto 2<CR>
nnoremap <silent> <leader>3 :BufferGoto 3<CR>
nnoremap <silent> <leader>4 :BufferGoto 4<CR>
nnoremap <silent> <leader>5 :BufferGoto 5<CR>
nnoremap <silent> <leader>6 :BufferGoto 6<CR>
nnoremap <silent> <leader>7 :BufferGoto 7<CR>
nnoremap <silent> <leader>8 :BufferGoto 8<CR>
nnoremap <silent> <leader>9 :BufferLast<CR>
nnoremap <silent> <leader><left> :BufferMovePrevious<CR>
nnoremap <silent> <leader><right> :BufferMoveNext<CR>

" Terminal
tnoremap jk <C-\><C-n>
tnoremap <Esc> <C-\><C-n>

" Insert
inoremap jk <ESC>
inoremap <c-s> <Esc>:w<CR>a

" Visual
vnoremap <S-h> 0
vnoremap <S-l> $

"------------------
"   Functions 
"------------------
function! CloseAllButCurrent()
  let curr = bufnr("%")
  let last = bufnr("$")

  if curr > 1    | silent! execute "1,".(curr-1)."bd!"     | endif
  if curr < last | silent! execute (curr+1).",".last."bd!" | endif
endfunction

" Open a new terminal in cwd
function! Term() 
    let cwd = getcwd()
    execute 'Tnew'
    execute 'T cd' cwd
    execute 'T clear'
endfunction


"------------------
"   Vars
"------------------

" Global
let g:airline_theme='one'
let g:neoterm_autoinsert=0
let g:neoterm_autojump=1
let g:neoterm_autoscroll=1

" Auto open in new tab
let g:NERDTreeCustomOpenArgs={'file':{'where': 't'}}

" Set html indent 
let g:user_emmet_settings = {
    \    'html' : {
    \        'indentation' : '    '
    \    }
    \}
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

" Other
let bufferline = get(g:, 'bufferline', {})
let bufferline.icons = 'both'
let bufferline.maximum_length = 20

"------------------
"   Other 
"------------------

filetype plugin indent on 
colorscheme one
