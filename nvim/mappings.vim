"------------------
"   Remaps
"------------------

" Set leader
let mapleader = "\<Space>"

" Any mode
noremap <S-s> /
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
nnoremap <silent> <leader>gg :G<CR>
nnoremap <silent> <leader>gc :G commit<CR>
nnoremap <silent> <leader>ga :G add .<CR>
nnoremap <silent> <leader>gp :G push<CR>
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
inoremap <expr> <CR> Expander()

" Visual
vnoremap <S-h> 0
vnoremap <S-l> $

