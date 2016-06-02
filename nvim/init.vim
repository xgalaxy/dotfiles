" neovim config

" {{{ Plugins
call g:plug#begin('~/.config/nvim/plugins')
Plug 'benekastah/neomake', { 'on': 'Neomake' }
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
call g:plug#end()
" }}}

" {{{ Options
set encoding=utf-8
scriptencoding utf-8

" interface
set title
colorscheme gruvbox
set background=dark
set termguicolors
set noerrorbells
set novisualbell
set noshowmode
set number
set relativenumber
set cursorline
set scrolloff=3
set nolist
set nowrap
set linebreak
set splitbelow
set splitright
set ruler

" code folding
set foldmethod=manual
set foldcolumn=1
set foldlevel=1
set foldminlines=3
set foldnestmax=5
set foldlevelstart=1

" editing
set textwidth=120
set tabstop=4
set shiftwidth=4
set expandtab


" searching
set showmatch
set ignorecase
set smartcase

" completion
set complete=.,w,b,u,U,i,d,t
set completeopt=menu,longest

set wildmenu
set wildmode=longest:full
set wildoptions=tagfile
set wildignorecase
set wildignore+=*.o,*.out,*.obj,*.exe,*.so,*.dll,.git,*.class,*.svn
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
set wildignore+=*/tmp/*,*\\tmp\\*,*.swp,*~,._*

set matchtime=3
set maxcombine=2

" saving, history, backups
set hidden
set undolevels=1000
set nobackup
set noswapfile
" }}}

" {{{ Key Mapping
let mapleader=','

" better wrapped lines movement
noremap j gj
noremap k gk

" buffer local search highlight toggling
nnoremap <silent> <cr> :setlocal hlsearch!<cr>

" more easily exit terminal emulator
:tnoremap <esc> <C-\><C-n>
" }}}

" {{{ vim-airline options
let g:airline_theme = 'gruvbox'
let g:airline_left_sep = ''
let g:airline_right_sep = ''

let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = "\u33d1"
let g:airline_symbols.branch = "\u1472"
let g:airline_symbols.readonly = "\u1587"

" }}}
