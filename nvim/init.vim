" Plugins

call plug#begin()

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'rust-lang/rust-analyzer'
Plug 'windwp/nvim-autopairs'

Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'morhetz/gruvbox'

Plug 'vmchale/ion-vim'

call plug#end()

colorscheme gruvbox

if strftime("%H")>9 && strftime("%H")<19
        set background=light
else
        set background=dark
endif

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
