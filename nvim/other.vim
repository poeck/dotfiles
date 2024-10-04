"------------------
"      Other
"------------------

filetype plugin indent on
colorscheme gruvbox-material

au BufNewFile,BufRead *.ejs set filetype=html

command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, <bang>0)
command! -nargs=0 Prettier :CocCommand prettier.formatFile
command Reload :source $MYVIMRC

autocmd CursorHold * silent call CocActionAsync('highlight')

autocmd FileType html,typescript,javascript,typescriptreact,javascriptreact 
   \ autocmd InsertCharPre * lua require('template-string').update()

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
      find_command = {
        "rg",
        "--no-ignore",
        "--hidden",
        "--files",
        "-g",
        "!**/node_modules/*",
        "-g",
        "!**/.git/*",
      },
    },
  },
  extensions = {
    file_browser = {
      hidden = { file_browser = true, folder_browser = true },
      prompt_path = true,
    },
  },
 defaults = {
    file_ignore_patterns = {"node_modules/", ".git/", "dist/", ".next/", ".nx/"},
    mappings = {
      i = {
        ["<Esc>"] = "close"
      }
    }
  },
}


require("oil").setup({
  default_file_explorer = true,
  columns = {
    "size",
    "icon",
  },
  delete_to_trash = true,
  skip_confirm_for_simple_edits = true,
  prompt_save_on_select_new_entry = false,
  keymaps = {
     ["t"] = "actions.parent",
  },
  view_options = {
    show_hidden = true,
  }
})

require("supermaven-nvim").setup({
  keymaps = {
    accept_suggestion = "<F13>",
    clear_suggestion = "<C-]>",
    accept_word = "<C-j>",
  },
  log_level = "off",
})


require("tailwind-tools").setup({})
