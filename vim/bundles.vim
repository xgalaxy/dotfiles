"
" vim plugin bundles
"


" This is first
set runtimepath+=~/.vim/bundle/neobundle.vim
call neobundle#rc(expand('~/.vim/bundle/'))


" Manage neobundle with itself
NeoBundleFetch 'Shougo/neobundle.vim'

" General
NeoBundle 'godlygeek/tabular'
NeoBundle 'justinmk/vim-sneak'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'

" IDE
NeoBundle 'honza/vim-snippets'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'mbbill/undotree'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'tpope/vim-fugitive'

NeoBundle 'Shougo/vimproc.vim', {
	\   'build': {
	\     'mac': 'make -f make_mac.mak',
	\   },
	\ }

NeoBundle 'Valloric/YouCompleteMe', {
	\   'build': {
	\     'mac': './install.sh --clang-completer --omnisharp-completer',
	\   },
	\ }

" Pretty
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'bling/vim-airline'

" iTerm & tmux support
NeoBundle 'rking/ag.vim'
NeoBundle 'sjl/vitality.vim'
NeoBundle 'tpope/vim-tbone'

" Filetypes
NeoBundle 'elzr/vim-json'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'vim-jp/cpp-vim'
NeoBundle 'wting/rust.vim'


" This is last
filetype plugin indent on
NeoBundleCheck
