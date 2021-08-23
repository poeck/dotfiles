call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'jiangmiao/auto-pairs'
Plug 'kassio/neoterm'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'rakr/vim-one'
Plug 'romgrk/barbar.nvim'
Plug 'vimsence/vimsence'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'wakatime/vim-wakatime'


call vundle#end()           
filetype plugin indent on 


inoremap jk <ESC>
tnoremap jk <C-\><C-n>
imap <c-s> <Esc>:w<CR>a
nmap <C-n> :NERDTreeToggle<CR>

map <C-c> :noh<CR>
map <C-q> :bw!<CR>
map <C-w> :q!<CR>
map <S-q> :qa!<CR>
map <C-s> :w<CR>
map <C-t> :call Term()<CR> 
map <S-w> :call CloseAllToRight()<CR> 

" Switch between windows
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

function! CloseAllToRight() 
   let current = bufnr("%")
   execute current+1 ',$bd!'
endfunction

function! Term() 
    let cwd = getcwd()
    execute 'Tnew'
    execute 'T cd' cwd
    execute 'T clear'
endfunction

nnoremap <silent> K :call CocAction('doHover')<CR>

" Close Coc Windows on escape
nmap <Esc> :call coc#float#close_all() <CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

" autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
" autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" Auto open NERDTree 
" autocmd VimEnter * NERDTree 
" autocmd VimEnter * wincmd l

command! -nargs=1 Prettier :CocCommand prettier.formatFile

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

set ic
set relativenumber
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set autoindent
set cindent
set modifiable
set noshowmode

filetype indent off

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif


set background=dark
colorscheme one

set laststatus=2
let g:airline_theme='one'

tnoremap <Esc> <C-\><C-n>
let g:neoterm_autoinsert=1
let g:neoterm_autojump=1
let g:neoterm_autoscroll=1

let g:user_emmet_settings = {
    \    'html' : {
    \        'indentation' : '    '
    \    }
    \}

nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
nnoremap <silent>    <A-Left> :BufferMovePrevious<CR>
nnoremap <silent>    <A-Right> :BufferMoveNext<CR>
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>

let bufferline = get(g:, 'bufferline', {})
let bufferline.icons = 'both'
let bufferline.maximum_length = 20

let g:NERDTreeQuitOnOpen  = 1
let NERDTreeCustomOpenArgs={'file':{'where': 't'}}
let g:NERDTreeCustomOpenArgs={'file':{'where': 't'}}
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$']

let s:prevtabnum=tabpagenr('$')
