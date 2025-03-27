"------------------
"   Plugins
"------------------
call plug#begin('~/.vim/plugged')

Plug 'roryokane/detectindent'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'pangloss/vim-javascript'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'romgrk/barbar.nvim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'brooth/far.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'pantharshit00/vim-prisma'
Plug 'sainnhe/gruvbox-material'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-system-copy'
Plug 'MunifTanjim/nui.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'stevearc/oil.nvim'
Plug 'olacin/telescope-cc.nvim'
Plug 'supermaven-inc/supermaven-nvim'
Plug 'luckasRanarison/tailwind-tools.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'lewis6991/gitsigns.nvim'
Plug 'windwp/nvim-ts-autotag'
Plug 'echasnovski/mini.move'
Plug 'simeng/vim-imba'
Plug 'augmentcode/augment.vim'
Plug 'lambdalisue/vim-suda'

call plug#end()
