" Plugins

call plug#begin()

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-git'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'rust-lang/rust-analyzer'
Plug 'simrat39/rust-tools.nvim'
Plug 'saecki/crates.nvim', {'tag': 'v0.2.1'}
Plug 'nvim-lua/plenary.nvim'
Plug 'mfussenegger/nvim-dap'
Plug 'windwp/nvim-autopairs'
Plug 'numToStr/Comment.nvim'

Plug 'nvim-treesitter/nvim-treesitter'

Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'morhetz/gruvbox'
Plug 'Mofiqul/vscode.nvim'

Plug 'sunjon/shade.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'nvim-lualine/lualine.nvim'

Plug 'kyazdani42/nvim-tree.lua'

Plug 'vmchale/ion-vim'

call plug#end()

colorscheme gruvbox

set number relativenumber
set mouse=a
set hlsearch
set smartcase
set softtabstop=4
set expandtab

set foldmethod=syntax
set foldlevel=99

set completeopt=menu,menuone,noselect

filetype plugin indent on

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

lua require('config')
