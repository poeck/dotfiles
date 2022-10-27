"------------------
"      Other
"------------------

filetype plugin indent on
colorscheme gruvbox 

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
command! -nargs=0 Prettier :CocCommand prettier.formatFile
command Reload :source $MYVIMRC

autocmd CursorHold * silent call CocActionAsync('highlight')

command! -bang -nargs=* Rg
  \ call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1,
  \   fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}), <bang>0)

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
