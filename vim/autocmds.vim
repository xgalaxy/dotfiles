"
" vim auto command settings
"


augroup vimrc

    autocmd!

    " Turn off error bells
    autocmd GUIEnter * set visualbell t_vb=

    " Highlight cursor line after 125 characters
    autocmd BufEnter * if &modifiable && &ft != 'ctrlp' | match ErrorMsg '\%125v.*'

    " Automatically switch to current file directory on buffer open
    autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif

    " Force cursor to the first line when editing a git commit message
    autocmd FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

    " Automatically strip trailing whitespaces
    autocmd BufRead,BufWritePre,FileWritePre * silent! %s/[\r \t]\+$//

    " Ultisnips
    autocmd BufEnter *.snippets setf snippets
    autocmd FileType snippets set noexpandtab

    " YouCompleteMe / auto completion
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
    autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

augroup END
