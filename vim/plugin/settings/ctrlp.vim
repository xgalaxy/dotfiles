""
"" vim ctrlp settings
""


" reuse the buffer
let g:ctrlp_reuse_window = 'netrw\|help\|quickfix'

" open tabs after current tab
let g:ctrlp_tabpage_position = 'ac'

" set cwd to 'hopefully' the repo root
let g:ctrl_working_path_mode = 'ra'

" ignore some crap in the mru listings
let g:ctrlp_mruf_exclude = '/tmp/.*\|/temp/.*'
