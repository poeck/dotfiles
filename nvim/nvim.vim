"------------------
"   Plugins
"------------------
call plug#begin('~/.vim/plugged')

" Auto detect indentation
Plug 'roryokane/detectindent'
" Icons for barbar
Plug 'ryanoasis/vim-devicons'
" Web icons
Plug 'kyazdani42/nvim-web-devicons'
" Extensions & Servers
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" File viewer
Plug 'preservim/nerdtree'
" Extended Nerdtree
Plug 'jistr/vim-nerdtree-tabs'
" Nerd tree highlight
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
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
Plug 'itchyny/lightline.vim'
" Tab bar
Plug 'romgrk/barbar.nvim'
" Discord status
Plug 'vimsence/vimsence'
" Auto rename tags
Plug 'AndrewRadev/tagalong.vim'
" Dart syntax highlight
Plug 'dart-lang/dart-vim-plugin'
" Quick comments
Plug 'tpope/vim-commentary'
" Sublime multiple cursors
Plug 'terryma/vim-multiple-cursors'
" Git wrapper
Plug 'tpope/vim-fugitive'
" Search
Plug 'jremmen/vim-ripgrep'
" Used with telescope
Plug 'nvim-lua/plenary.nvim'
" Fuzzy File finder
Plug 'nvim-telescope/telescope.nvim'

" Dart lsc
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

" Themes
Plug 'rakr/vim-one'
Plug 'phanviet/vim-monokai-pro'

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
set hidden
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
noremap <leader>o :ex ~/
noremap <silent> <C-c> :noh<CR>
noremap <silent> <S-q> :qa!<CR>
noremap <silent> <leader>d :BufferClose<CR>
noremap <silent> <leader>s :w<CR>
noremap <silent> <leader>a <kDivide>
noremap <silent> <leader>t :call Term()<CR>
noremap <silent> <leader>ca :call CloseAllButCurrent()<CR>

" Normal Mode
nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l
nnoremap <leader>wv :vs<CR> 
nnoremap <leader>wh :split<CR> 
nnoremap <leader>ws :split<CR> 
nnoremap <leader>wd :close<CR> 
nnoremap <leader>wc :close<CR> 
nnoremap <leader>wq :close<CR> 
nnoremap <S-j> <PageDown>
nnoremap <S-k> <PageUp>
nnoremap <S-h> 0
nnoremap <S-l> $
nnoremap <silent> <leader><space> <cmd>Telescope find_files<CR>
nnoremap <silent> <leader>ff <cmd>Telescope find_files<CR>
nnoremap <silent> <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <silent> <leader>fh <cmd>Telescope help_tags<CR>
nnoremap <silent> <leader>fj <cmd>Telescope buffers<CR>
nnoremap <silent> <leader>fk <cmd>Telescope file_browser<CR>
nnoremap <silent> <leader>fl :NERDTreeTabsToggle<CR>
nnoremap <silent> <Esc> :call coc#float#close_all() <CR>
nnoremap <silent> <S-h> :call CocAction('doHover')<CR>
nnoremap <silent> gd :call CocActionAsync('jumpDefinition')<CR>
nnoremap <silent> <leader>bf <cmd>Telescope buffers<CR>
nnoremap <silent> <leader>bb <cmd>Telescope buffers<CR>
nnoremap <silent> <leader>bd :BufferClose<CR>
nnoremap <silent> <leader>ba :call DeleteInactiveBufs()<CR>
nnoremap <silent> <leader>bl :BufferPrevious<CR>
nnoremap <silent> <leader>bn :BufferNext<cr>
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

  if curr > 1    | silent! execute "1,".(curr-1)."bd"     | endif
  if curr < last | silent! execute (curr+1).",".last."bd" | endif
endfunction

" Open a new terminal in cwd
function! Term()
    let cwd = getcwd()
    execute 'Tnew'
    execute 'T cd' cwd
    execute 'T clear'
endfunction

function! DeleteInactiveBufs()
    let tablist = []
    for i in range(tabpagenr('$'))
        call extend(tablist, tabpagebuflist(i + 1))
    endfor

    let nWipeouts = 0
    for i in range(1, bufnr('$'))
        if bufexists(i) && !getbufvar(i,"&mod") && index(tablist, i) == -1
            silent exec 'bwipeout' i
            let nWipeouts = nWipeouts + 1
        endif
    endfor
    echomsg nWipeouts . ' buffer(s) wiped out'
endfunction

"------------------
"   Vars
"------------------

" Global
let g:rg_command = 'rg --vimgrep -S'
let g:ctrlp_user_command = ['.git/', 'git ls-files --cached --others  --exclude-standard %s']
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:neoterm_autoinsert=0
let g:neoterm_autojump=1
let g:neoterm_autoscroll=1

" Auto open in new tab
let g:NERDTreeCustomOpenArgs={'file':{'where': 't'}}

" Set html indent
let g:user_emmet_leader_key='<C-y>'
" Fix Tab
let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
let g:user_emmet_settings = {
    \    'html' : {
    \        'indentation' : '  '
    \    },
    \   'javascript' : {
    \        'extends' : 'jsx',
    \   },
    \   'typescript' : {
    \        'extends' : 'tsx',
    \   },
    \}
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ ]

" Status bar
let g:lightline = {
      \ 'colorscheme': 'monokai_pro',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

" Other
let bufferline = get(g:, 'bufferline', {})
let bufferline.icons = 'both'
let bufferline.maximum_length = 20

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

"------------------
"   Other
"------------------

filetype plugin indent on
colorscheme monokai_pro
" colorscheme one

command! -nargs=0 Prettier :CocCommand prettier.formatFile
command Reload :source $MYVIMRC

augroup DetectIndent
   autocmd!
   autocmd BufReadPost *  DetectIndent
augroup END

lua << EOF
require('telescope').setup{
 defaults = {
    mappings = {
      i = {
        ["<Esc>"] = "close"
      }
    }
  },
}
EOF
