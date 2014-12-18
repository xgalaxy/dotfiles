"
" vim keymap and plugin settings
"


" The one true keybind
let mapleader=','

" Work better with wrapped lines
noremap j gj
noremap k gk

" Move between windows easily
map <c-j> <c-w>j<c-w>_
map <c-k> <c-w>k<c-w>_
map <c-l> <c-w>l<c-w>_
map <c-h> <c-w>h<c-w>_

" Collapse or expand windows
map <leader>w- <c-w>_
map <leader>w= <c-w>=

" Toggle search highlighting
nmap <silent> <cr> :set invhlsearch<cr>

" Visual Shifting
vnoremap < <gv
vnoremap > >gv

" Allow using the repeat operator with a visual selection
vnoremap . :normal .<cr>

" Sudo write it
cmap w!! w !sudo tee % >/dev/null

" TODO: replacement with uncrustify
" Artistic Style
" nnoremap <F7> :%!astyle<cr>

" TODO: run ctags
" map <leader>ct :!ctags -R .<cr>

" Airline
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_symbols.linenr = "\u33d1"
let g:airline_symbols.branch = "\u1472"
let g:airline_symbols.readonly = "\u1587"
let g:airline#extensions#whitespace#enabled = 0
let g:airline_theme = 'solarized'

" Commentary
nmap gcc <Plug>CommentaryLine

" CtrlP
let g:ctrlp_working_path_mode = 'ra'
let s:ctrlp_fallback = 'ag %s --nocolor -l -g ""'
let g:ctrlp_user_command = {
    \ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
    \ 2: ['.hg', 'hg --cwd %s locate -I .'],
    \ },
    \ 'fallback': s:ctrlp_fallback
    \ }
let g:ctrlp_custom_ignore = {
    \ 'dir': '\.git$\|\.hg$\|\.svn$',
    \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$',
    \ 'link': 'some_bad_symbolic_links',
    \ }
nnoremap <silent> <d-t> :CtrlP<cr>
nnoremap <silent> <d-r> :CtrlPTag<cr>

"Easy Align
let g:easy_align_delimiters = {
    \ '>': { 'pattern': '>>\|=>\|>' },
    \ '/': {
    \   'pattern': '//\+\|/\*\|\*/',
    \   'delimiter_align': 'l',
    \   'ignore_groups': ['!Comment']
    \   },
    \ ']': {
    \   'pattern': '[[\]]',
    \   'left_margin': 0,
    \   'right_margin': 0,
    \   'stick_to_left': 0
    \   },
    \ ')': {
    \   'pattern': '[()]',
    \   'left_margin': 0,
    \   'right_margin': 0,
    \   'stick_to_left': 0
    \   },
    \ 'd': {
    \   'pattern': ' \(\S\+\s*[;=]\)\@=',
    \   'left_margin': 0,
    \   'right_margin': 0
    \   }
    \ }
xmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"Fugitive
nnoremap <silent> <leader>gs :Gstatus<cr>
nnoremap <silent> <leader>gd :Gdiff<cr>
nnoremap <silent> <leader>gc :Gcommit<cr>
nnoremap <silent> <leader>gl :Glog<cr>
nnoremap <silent> <leader>gp :Git push<cr>
nnoremap <silent> <leader>ga :Git add -p<cr>

" Matchit
let b:match_ignorecase = 1

" Multiple cursors
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_next_key = '<c-n>'
let g:multi_cursor_prev_key = '<c-p>'
let g:multi_cursor_skip_key = '<c-x>'
let g:multi_cursor_quit_key = '<esc>'

"NERDTree
let NERDTreeShowBookmarks = 1
let NERDTreeIgnore = ['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
let NERDTreeChDirMode = 0
let NERDTreeQuitOnOpen = 1
let NERDTreeMouseMode = 2
let NERDTreeShowHidden = 1
let NERDTreeKeepTreeInNewTab = 1
let g:NERDShutUp = 1
let g:nerdtree_tabs_open_on_gui_startup = 0
map <c-e> <plug>NERDTreeTabsToggle<cr>
map <leader>e :NERDTreeFind<cr>
nmap <leader>nt :NERDTreeFind<cr>

" Tagbar
let g:tagbar_sort = 0
let g:tagbar_autofocus = 1
nnoremap <silent> <leader>tt :TagbarToggle<cr>

" Ultisnips
let g:UltiSnipsExpandTrigger = '<c-j>'
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
let g:UltiSnipsListSnippets = '<c-l>'

" Undotree
let g:undotree_SetFocusWhenToggle = 1
nnoremap <leader>u :UndotreeToggle<cr>

" Vitality
let g:vitality_always_assume_iterm = 1

" YouCompleteMe
let g:acp_enableAtStartup = 0
let g:ycm_collect_identifiers_from_tags_files = 1
nnoremap <leader>yc :YcmForceCompileAndDiagnostics<cr>
nnoremap <leader>yg :YcmCompleter GoToDefinitionElseDeclaration<cr>
nnoremap <leader>yd :YcmCompleter GoToDefinition<cr>
nnoremap <leader>yl :YcmCompleter GoToDeclaration<cr>
