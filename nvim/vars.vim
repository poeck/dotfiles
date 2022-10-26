"------------------
"      Vars
"------------------

" Global
let g:neoterm_autoinsert=0
let g:neoterm_autojump=1
let g:neoterm_autoscroll=1

let g:blamer_delay = 2000
let g:blamer_enabled = 1

let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1

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
      \ 'colorscheme': 'gruvbox',
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

let g:far#enable_undo=1
let g:far#source  = 'rg'
let g:far#ignore_files = [ '~/.config/nvim/.farignore' ]
let g:far#mode_open = { "regex": 0, "case_sensitive": 1, "word": 0, "substitute": 0 }
