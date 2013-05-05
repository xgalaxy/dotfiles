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

" UltiSnips
let g:UltiSnipsExpandTrigger = '<c-f>'
let g:UltiSnipsJumpForwardTrigger = '<c-f>'
let g:UltiSnipsJumpBackwardTrigger = '<c-d>'

" Artistic Style
nnoremap <F7> :%!astyle<cr>

" Toggle tabs
function TabToggle()
    if &expandtab
        set noexpandtab
    else
        set expandtab
    endif
endfunction
nnoremap <F8> :execute TabToggle()<cr>

" Toggle relative linum
function LinumToggle()
	if &relativenumber
		set number
	else
		set relativenumber
	endif
endfunction
nnoremap <F9> :execute LinumToggle()<cr>
