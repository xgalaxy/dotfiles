""
"" vim keymap settings
""

" The one true keybind
let mapleader=','

" Work better with wrapped lines
map j gj
map k gk

" Move between windows easily
map <c-j> <c-w>j<c-w>_
map <c-k> <c-w>k<c-w>_
map <c-l> <c-w>l<c-w>_
map <c-h> <c-w>h<c-w>_
map <leader>= <c-w>=

" Move between tabs easily
map <s-h> gT
map <s-l> gt

" Bubble single lines
nmap <s-k> [e
nmap <s-j> ]e

" Toggle invisible characters
nmap <leader>li :set list!<cr>

" Temporarily turn off search highlighting
nmap <cr> :noh<cr>

" Sudo write it
cmap w!! w !sudo tee % >/dev/null

" CtrlP
let g:ctrlp_map = ''
map <leader>f :CtrlP<cr>
map <leader>b :CtrlPBuffer<cr>
map <leader>m :CtrlPMRUFiles<cr>

" Tagbar
map <leader>t :TagbarToggle<cr>
