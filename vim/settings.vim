"
" vim keymap and plugin settings
"


" The one true keybind
let mapleader=','

" Work better with wrapped lines
nmap j gj
nmap k gk

" Move between windows easily
map <leader>wj <c-w>j
map <leader>wk <c-w>k
map <leader>wh <c-w>h
map <leader>wl <c-w>l

" Collapse or expand windows
map <leader>w- <c-w>_
map <leader>w= <c-w>=

" Move between tabs easily
" gt = next
" gT = prev

" Toggle search highlighting
nmap <cr> :set invhlsearch<cr>

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

" Multiple cursors
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_next_key = '<c-n>'
let g:multi_cursor_prev_key = '<c-p>'
let g:multi_cursor_skip_key = '<c-x>'
let g:multi_cursor_quit_key = '<esc>'

" Sneak
let g:sneak#streak = 1
let g:sneak#use_ic_scs = 1
nmap f <plug>Sneak_f
nmap F <plug>Sneak_F
xmap f <plug>Sneak_f
xmap F <plug>Sneak_F
omap f <plug>Sneak_f
omap F <plug>Sneak_F
nmap t <plug>Sneak_t
nmap T <plug>Sneak_T
xmap t <plug>Sneak_t
xmap T <plug>Sneak_T
omap t <plug>Sneak_t
omap T <plug>Sneak_T

" Tabular
nnoremap <leader>a= :Tabularize /=<cr>
vnoremap <leader>a= :Tabularize /=<cr>
nnoremap <leader>a/ :Tabularize /\/\//l2c1l0<cr>
vnoremap <leader>a/ :Tabularize /\/\//l2c1l0<cr>
nnoremap <leader>a, :Tabularize /,/l0r1<cr>
vnoremap <leader>a, :Tabularize /,/l0r1<cr>


" Tagbar
let g:tagbar_sort = 0
let g:tagbar_autofocus = 1
nnoremap <leader>tb :TagbarToggle<cr>

" Undotree
let g:undotree_SetFocusWhenToggle = 1
nnoremap <leader>ut :UndotreeToggle<cr>

" Unite
let g:unite_source_file_rec_max_cache_files = 0
let g:unite_source_history_yank_enable = 1
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--nocolor --nogroup --column'
let g:unite_source_grep_recursive_opt = ''
nnoremap <leader>uf :Unite -buffer-name=files  -no-split -start-insert file_rec/async<cr>
nnoremap <leader>ub :Unite -buffer-name=buffer -no-split -quick-match buffer<cr>
nnoremap <leader>uy :Unite -buffer-name=yank   -no-split -quick-match history/yank<cr>
call unite#custom#source('file_rec,file_rec/async', 'max_candidates', 0)
call unite#filters#matcher_default#use(['matcher_fuzzy'])
" call unite#filters#sorter_default#use(['sorter_rank'])

" Ultisnips
let g:UltiSnipsExpandTrigger = '<c-j>'
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
let g:UltiSnipsListSnippets = '<c-l>'

" Vitality
let g:vitality_always_assume_iterm = 1

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_filetype_specific_completion_to_disable = { 'javascript': 1 }
" let g:ycm_collect_identifiers_from_tags_files = 1
nnoremap <leader>yc :YcmForceCompileAndDiagnostics<cr>
nnoremap <leader>yg :YcmCompleter GoToDefinitionElseDeclaration<cr>
nnoremap <leader>yd :YcmCompleter GoToDefinition<cr>
nnoremap <leader>yl :YcmCompleter GoToDeclaration<cr>
