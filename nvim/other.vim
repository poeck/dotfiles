"------------------
"      Other
"------------------

filetype plugin indent on
colorscheme gruvbox 

command! -nargs=0 Prettier :CocCommand prettier.formatFile
command Reload :source $MYVIMRC
command! Tw :silent exec "!rustywind --write ."

" Detect Indentation
augroup DetectIndent
   autocmd!
   autocmd BufReadPost *  DetectIndent
augroup END

" Restore cursor on exit
augroup RestoreCursorShapeOnExit
    autocmd!
    autocmd VimLeave * set guicursor=a:ver20-blinkwait400-blinkoff400-blinkon400
augroup END


lua << EOF
require('telescope').setup{
 pickers = {
    find_files = {
        hidden = true
    }
  },
 defaults = {
    file_ignore_patterns = {"node_modules", ".git"},
    mappings = {
      i = {
        ["<Esc>"] = "close"
      }
    }
  },
}
