"------------------
"      Vars
"------------------

" Global
let g:rg_command = 'rg --vimgrep -S'
let g:neoterm_autoinsert=0
let g:neoterm_autojump=1
let g:neoterm_autoscroll=1

let NERDTreeShowHidden=1

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
      \ 'colorscheme': 'onehalfdark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

let g:sonokai_style = "espresso"
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1

" Other
let bufferline = get(g:, 'bufferline', {})
let bufferline.icons = 'both'
let bufferline.maximum_length = 20

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

