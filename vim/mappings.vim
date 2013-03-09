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
map <leader>ff :CtrlP<cr>
map <leader>fb :CtrlPBuffer<cr>
map <leader>fm :CtrlPMRUFiles<cr>
map <leader>fq :CtrlPQuickfix<cr>
map <leader>fl :CtrlPLine<cr>
map <leader>ft :CtrlPTag<cr>
map <leader>fc :CtrlPBufTag<cr>

" NERDTree
map <leader>fo :NERDTreeTabsToggle<cr>

" YouCompleteMe
let g:ycm_key_invoke_completion = ''
let g:ycm_key_list_select_completion = ['<tab>', '<down>']
let g:ycm_key_list_previous_completion = ['<s-tab>', '<up>']
let g:ycm_key_detailed_diagnostics = '<leader>d'
nnoremap <F5> :YcmForceCompileAndDiagnostics<cr>
nnoremap <F6> :YcmShowDetailedDiagnostic<cr>

" UltiSnips
let g:UltiSnipsExpandTrigger = '<c-f>'
let g:UltiSnipsJumpForwardTrigger = '<c-f>'
let g:UltiSnipsJumpBackwardTrigger = '<c-d>'

" Artistic Style
nnoremap <F7> :%!astyle<cr>
