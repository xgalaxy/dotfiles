""
"" vim keymap settings
""

" The one true keybind
let mapleader=','

" Work better with wrapped lines
map j gj
map k gk

" Move between windows easily
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <leader>= <c-w>=

" Move between tabs easily
map <s-h> gT
map <s-l> gt

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
