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
  lsp_file_methods = {
    enabled = true,
    timeout_ms = 1000,
    autosave_changes = true,
  },
  watch_for_changes = true,
  keymaps = {
     ["t"] = "actions.parent",
  },
  view_options = {
    show_hidden = true,
  }
})

require("supermaven-nvim").setup({
  keymaps = {
    accept_suggestion = "<S-F12>",
    clear_suggestion = "<C-]>",
    accept_word = "<C-j>",
  },
  log_level = "off",
})

require('gitsigns').setup()

require('nvim-ts-autotag').setup({
  opts = {
    enable_close = true,
    enable_rename = true,
    enable_close_on_slash = true
  },
})
require('mini.move').setup()

require("tailwind-tools").setup({})
