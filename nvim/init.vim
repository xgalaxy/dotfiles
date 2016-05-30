" neovim config

" system
set mouse=a
set encoding=utf-8
set termguicolors

" interface
set title
set background=dark
set noerrorbells visualbell t_vb=
set number
set relativenumber
set cursorline
set scrolloff=3
set nolist
set wrap
set linebreak
set splitbelow
set splitright
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)

" editing
set tabstop=4
set shiftwidth=4
set expandtab

" searching
set showmatch
set hlsearch
set ignorecase
set smartcase
set completeopt=menu,menuone,longest

set wildmode=list:longest,full
set wildignore+=*.o,*.out,*.obj,*.exe,*.so,*.dll,.git,*.class,*.svn
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
set wildignore+=*/tmp/*,*\\tmp\\*,*.swp,*~,._*

" saving, history, backups
set hidden
set undolevels=1000
set nobackup
set noswapfile

" load other
source ~/.config/nvim/settings.vim
