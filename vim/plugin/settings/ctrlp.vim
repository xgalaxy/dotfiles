"
" vim ctrlp settings
"


" Search anything (in files, buffers, MRU, etc)
let g:ctrlp_cmd = 'CtrlPMixed'

" Set cwd to 'hopefully' the repo root
let g:ctrl_working_path_mode = 'ra'

" Show match window at the top of the screen
let g:ctrlp_match_window_bottom = 0

" Maximum height of the match window
let g:ctrlp_max_height = 10

" Jump to a file if it's open already
let g:ctrlp_switch_buffer = 'et'

" Open tabs after current tab
let g:ctrlp_tabpage_position = 'ac'

" Enable caching
let g:ctrlp_use_caching = 1

" Speed up by not clearing cache
let g:ctrlp_clear_cache_on_exit = 0

" Reuse the buffer
let g:ctrlp_reuse_window = 'netrw\|help\|quickfix'

" Limit most recently opened files
let g:ctrlp_mruf_max = 50

" Ignore some crap in the mru listings
let g:ctrlp_mruf_exclude = '/tmp/.*\|/temp/.*'


function MyPrtMappings()
	let g:ctrlp_prompt_mappings = {
		\ 'AcceptSelection("e")': ['<c-t>'],
		\ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
		\ }
endfunction

function MyCtrlPTag()
	let g:ctrlp_prompt_mappings = {
		\ 'AcceptSelection("e")': ['<cr>', '<2-LeftMouse>'],
		\ 'AcceptSelection("t")': ['<c-t>'],
		\ }
	CtrlPBufTag
endfunction


let g:ctrlp_buffer_func = {
	\	'exit': 'MyPrtMappings'
	\ }

let g:ctrlp_custom_ignore = {
	\	'dir':  '\v[\/]\.(git|hg|svn|build)$',
	\	'file': '\v\.(exe|so|dll)$',
	\	'link': 'SOME_BAD_SYMBOLIC_LINKS',
	\ }

let g:ctrlp_user_command = {
    \	'types': {
    \		1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
    \		2: ['.hg', 'hg --cwd %s locate -I .'],
    \	},
    \	'fallback': 'find %s -type f'
    \ }

" TODO: add javascript and some other languages who doesn't have ctags support
" coffee: https://gist.github.com/michaelglass/5210282
" go: http://stackoverflow.com/a/8236826/462233
" objc:  http://www.gregsexton.org/2011/04/objective-c-exuberant-ctags-regex/
" rust: https://github.com/mozilla/rust/blob/master/src/etc/ctags.rust
let g:ctrlp_buftag_types = {
	\	'go'     	   : '--language-force=go --golang-types=ftv',
	\	'coffee'     : '--language-force=coffee --coffee-types=cmfvf',
	\	'markdown'   : '--language-force=markdown --markdown-types=hik',
	\	'objc'       : '--language-force=objc --objc-types=mpci',
	\	'rc'         : '--language-force=rust --rust-types=fTm'
	\ }
