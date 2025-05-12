"------------------
"   Remaps
"------------------

" Set leader
let mapleader = "\<Space>"

" Any mode
noremap gf :edit <cfile><cr> 
noremap <leader>m :
noremap <leader>o :ex ~/
noremap <silent> <C-c> :noh<CR>
noremap <silent> <S-q> :qa!<CR>
noremap <silent> <leader>d :BufferClose<CR>
noremap <silent> <leader>s :silent write<CR>
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
nnoremap <leader>rn <Plug>(coc-rename)
nnoremap <silent> <leader><space> <cmd>Telescope find_files<CR>
nnoremap <silent> <leader>rr :Reload<CR>
nnoremap <silent> <leader>fr :Farr<CR>
nnoremap <silent> <leader>ff :Rg<CR>
nnoremap <silent> <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <silent> <leader>fh <cmd>Telescope help_tags<CR>
nnoremap <silent> <leader>fj <cmd>Telescope buffers<CR>
nnoremap <silent> <leader>fk <cmd>Telescope file_browser<CR>
nnoremap <silent> <leader>gg :G<CR>
nnoremap <silent> <leader>gc :Telescope conventional_commits<CR>
nnoremap <silent> <leader>ga :G add .<CR>
nnoremap <silent> <leader>gp :G push<CR>
nnoremap <silent> <leader>y :!xdg-open %<CR><CR>
nnoremap <silent> <leader>x :!xdg-open %:h<CR><CR>
nnoremap <silent> <leader>c :!code %<CR><CR>
nnoremap <silent> <leader>fl :Oil --float<CR>
nnoremap <silent> <Esc> :call coc#float#close_all() <CR>
nnoremap <silent> <S-k> :call CocAction('doHover')<CR>
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

" Insert
inoremap jk <ESC>
inoremap <c-s> <Esc>:w<CR>a


" Visual
vnoremap <S-h> 0
vnoremap <S-l> $
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"
tnoremap <expr> jk (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"

inoremap <silent><expr> <c-x> coc#refresh()

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> gj <Plug>(GitGutterNextHunk)
nmap <silent> gk <Plug>(GitGutterPrevHunk)

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <leader>ac  <Plug>(coc-codeaction-cursor)
nmap <leader>as  <Plug>(coc-codeaction-source)
nmap <leader>qf  <Plug>(coc-fix-current)
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
