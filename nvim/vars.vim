"------------------
"      Vars
"------------------

" Global
let g:neoterm_autoinsert=0
let g:neoterm_autojump=1
let g:neoterm_autoscroll=1

let g:user_emmet_expandabbr_key='<S-F4>'

let g:system_copy_silent = 1

" let g:gruvbox_material_background='soft'
" let g:gruvbox_material_foreground='mix'

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

" Other
let g:far#enable_undo=1
let g:far#source  = 'rg'
let g:far#ignore_files = [ '~/.config/nvim/.farignore' ]
let g:far#mode_open = { "regex": 0, "case_sensitive": 1, "word": 0, "substitute": 0 }

let g:fzf_vim = {}

let g:augment_workspace_folders = ["~/dev/otark"]

let g:system_copy#copy_command='wl-copy'
let g:system_copy#paste_command='wl-paste'
