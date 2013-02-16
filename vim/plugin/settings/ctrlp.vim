""
"" vim ctrlp settings
""


" Reuse the buffer
let g:ctrlp_reuse_window = 'netrw\|help\|quickfix'

" Open tabs after current tab
let g:ctrlp_tabpage_position = 'ac'

" Set cwd to 'hopefully' the repo root
let g:ctrl_working_path_mode = 'ra'

" Ignore some crap in the mru listings
let g:ctrlp_mruf_exclude = '/tmp/.*\|/temp/.*'

" Match file names only
let g:ctrlp_by_filename = 1

let g:ctrlp_user_command = {
    \ 'types': {
    \   1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
    \   2: ['.hg', 'hg --cwd %s locate -I .'],
    \ },
    \ 'fallback': 'find %s -type f'
    \}
