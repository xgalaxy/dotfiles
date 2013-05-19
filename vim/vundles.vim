"
" vim vundles
"


" This is first
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()


" Manage vundle with itself
Bundle 'gmarik/vundle'


" General
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-repeat'
Bundle 'sjl/vitality.vim'

" Navigation
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'Lokaltog/vim-easymotion'

" Programming / Text manipulation
Bundle 'terryma/vim-multiple-cursors'
Bundle 'terryma/vim-expand-region'
Bundle 'Raimondi/delimitMate'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-surround'
Bundle 'godlygeek/tabular'

" Snippits
Bundle 'SirVer/ultisnips'

" Filetypes
Bundle 'vim-jp/cpp-vim'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-markdown'
Bundle 'pangloss/vim-javascript'


" This is last
filetype plugin indent on
