""
"" vim keymap settings
""

" The one true keybind
let mapleader=','

" Work better with wrapped lines
nnoremap j gj
nnoremap k gk

" Temporarily turn off search highlighting
nnoremap <silent> <CR> :noh<CR>

" Bubble single lines
nmap <C-K> [e
nmap <C-K> ]e

" CtrlP
let g:ctrlp_map = '<C-j>'
nnoremap <silent> <C-k> :CtrlPBuffer<CR>
nnoremap <silent> <C-l> :CtrlPMRUFiles<CR>
