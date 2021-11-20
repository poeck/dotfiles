"------------------
"      Other
"------------------

filetype plugin indent on
colorscheme edge 

command! -nargs=0 Prettier :CocCommand prettier.formatFile
command Reload :source $MYVIMRC

" Detect Indentation
augroup DetectIndent
   autocmd!
   autocmd BufReadPost *  DetectIndent
augroup END

" Restore cursor on exit
augroup RestoreCursorShapeOnExit
    autocmd!
    autocmd VimLeave * set guicursor=a:hor20-blinkwait400-blinkoff400-blinkon400
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

