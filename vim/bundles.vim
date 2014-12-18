"
" vim plugin bundles
"


" This is first
call plug#begin('~/.vim/bundle')

" Manage vim-plug with itself
Plug 'junegunn/vim-plug'

" General
Plug 'junegunn/vim-easy-align', { 'on': ['<Plug>(EasyAlign)', 'EasyAlign'] }
Plug 'Lokaltog/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary', { 'on': '<Plug>Commentary' }
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/matchit.zip'

" IDE
Plug 'ctrlpvim/ctrlp.vim'
Plug 'honza/vim-snippets'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'majutsushi/tagbar'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeTabsToggle', 'NERDTreeFind' ] }
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-fugitive'

Plug 'Valloric/YouCompleteMe', {
    \   'do': 'git submodule update --init --recursive && ./install.sh --clang-completer --omnisharp-completer'
    \ }

" Pretty
Plug 'junegunn/seoul256.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'

" iTerm & tmux support
Plug 'rking/ag.vim', { 'on': 'Ag' }
Plug 'sjl/vitality.vim'
Plug 'tpope/vim-tbone'

" Filetypes
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'tpope/vim-git', { 'for': 'git' }
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'vim-jp/cpp-vim', { 'for': 'cpp' }
Plug 'wting/rust.vim', { 'for': 'rust' }

" This is last
call plug#end()
filetype plugin indent on
