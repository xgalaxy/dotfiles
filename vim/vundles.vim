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

" Navigation
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-unimpaired'
Bundle 'Lokaltog/vim-easymotion'

" Text manipulation 
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'

" Programming
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'majutsushi/tagbar'

" Snippits
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'honza/snipmate-snippets'

" Filetypes
Bundle 'tpope/vim-git'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-markdown'
Bundle 'wting/rust.vim'

" Stuff I'm unsure of
"Bundle 'jistr/vim-nerdtree-tabs'
"Bundle 'godlygeek/tabular'
"Bundle 'mattn/gist-vim'



" This is last
filetype plugin indent on
