" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
"Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

Plug 'christoomey/vim-tmux-navigator'

Plug 'HerringtonDarkholme/yats.vim' " TS Syntax

" Added by me
Plug 'jiangmiao/auto-pairs'
" Plug 'rstacruz/vim-closer'
Plug 'arzg/vim-colors-xcode'
Plug 'kassio/neoterm'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'rakr/vim-one'
Plug 'ryanoasis/vim-devicons'
Plug 'kassio/neoterm'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
" Plug 'othree/xml.vim'

" Initialize plugin system
call plug#end()

inoremap jk <ESC>
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

map <C-c> :noh<CR>
map <C-q> :bw<CR>
map <S-q> :qa!<CR>
map <C-s> :w<CR>
map <C-t> :Tnew<CR>
" map <C-b> :belowright Tnew<CR>
" map <S-b> :vertical Tnew<CR><ESC>:vertical resize 75<CR><i>

" open NERDTree automatically
autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * NERDTree 
" autocmd VimEnter * wincmd l

let g:NERDTreeGitStatusWithFlags = 1
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:NERDTreeGitStatusNodeColorization = 1
"let g:NERDTreeColorMapCustom = {
    "\ "Staged"    : "#0ee375",  
    "\ "Modified"  : "#d9bf91",  
    "\ "Renamed"   : "#51C9FC",  
    "\ "Untracked" : "#FCE77C",  
    "\ "Unmerged"  : "#FC51E6",  
    "\ "Dirty"     : "#FFBD61",  
    "\ "Clean"     : "#87939A",   
    "\ "Ignored"   : "#808080"   
    "\ }                         


let g:NERDTreeIgnore = ['^node_modules$']

" vim-prettier
let g:prettier#quickfix_enabled = 0
let g:prettier#quickfix_auto_focus = 0

" prettier command for coc
" command! -nargs=1 Prettier :CocCommand prettier.formatFile

" let g:prettier#autoformat = 1
" let g:prettier#autoformat_require_pragma = 0
" run prettier on save
let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync


" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')


" Old
" set relativenumber
" set tabstop=2
" set smarttab
" set cindent
" set expandtab
" set shiftwidth=2

" New
set relativenumber
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set autoindent
set cindent
set modifiable
filetype indent off
set noshowmode

if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


set background=dark " for the dark version
" set background=light " for the light version
colorscheme one

set laststatus=2
let g:airline_theme='one'

tnoremap <Esc> <C-\><C-n>
let g:neoterm_autoinsert=1
let g:neoterm_autojump=1
let g:neoterm_autoscroll=1
" let g:neoterm_size=10

let g:user_emmet_settings = {
    \    'html' : {
    \        'indentation' : '    '
    \    }
    \}


" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-Left> :BufferMovePrevious<CR>
nnoremap <silent>    <A-Right> :BufferMoveNext<CR>
" Goto buffer in position...
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

let g:prettier#exec_cmd_path = "/usr/local/bin/prettier"
