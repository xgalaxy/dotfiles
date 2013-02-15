""
"" vim vundles 
""


" This is first 
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()


" Manage vundle with itself
Bundle 'gmarik/vundle'



" General
Bundle 'altercation/vim-colors-solarized'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Lokaltog/vim-powerline'
Bundle 'sjl/vitality.vim'

" Navigation
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-unimpaired'
Bundle 'Lokaltog/vim-easymotion'

" Text manipulation 
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'

" Programming
Bundle 'tpope/vim-fugitive'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
"Bundle 'xolox/vim-easytags'
Bundle 'majutsushi/tagbar'
Bundle 'mattn/gist-vim'

" Snippits
Bundle 'SirVer/ultisnips'

" Filetypes
Bundle 'tpope/vim-git'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-markdown'
Bundle 'wting/rust.vim'



" This is last
filetype plugin indent on
