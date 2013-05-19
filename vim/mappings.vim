"
" vim keymap settings
"


" The one true keybind
let mapleader=','

" Work better with wrapped lines
nmap j gj
nmap k gk

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
let g:ctrlp_map = '<D-p>'
com MyCtrlPTag call MyCtrlPTag()

nmap <D-t> :CtrlP<cr>
imap <D-t> <esc>:CtrlP<cr>
nmap <D-r> :MyCtrlPTag<cr>
imap <D-r> <esc>:MyCtrlPTag<cr>
nmap <D-R> :CtrlPBufTagAll<cr>
imap <D-R> <esc>:CtrlPBufTagAll<cr>

" NERDTree
map <D-k> :NERDTreeTabsToggle<cr>

" TComment
map <D-/> :TComment<cr>
vmap <D-/> :TComment<cr>gv

" Multiple cursors
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_next_key = '<D-d>'
let g:multi_cursor_prev_key = '<D-u>'
let g:multi_cursor_skip_key = '<D-k>' "until we got multiple keys support
let g:multi_cursor_quit_key = '<esc>'

" UltiSnips
function g:UltiSnips_Complete()
	call UltiSnips_ExpandSnippet()
	if g:ulti_expand_res == 0
		if pumvisible()
			return "\<C-n>"
		else
			call UltiSnips_JumpForwards()
			if g:ulti_jump_forwards_res == 0
				return "\<TAB>"
			endif
		endif
	endif
	return ""
endfunction
au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"

let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsListSnippets="<c-e>"
let g:UltiSnipsSnippetDirectories = ["UltiSnips", "ultisnips-snippets"]

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
