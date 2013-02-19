""
"" vim auto command settings
""



augroup vimrc

    autocmd!

    " Turn of error bells
    autocmd GUIEnter * set visualbell t_vb=

    " Highlight cursor line after 120 characters
    autocmd BufEnter * match ErrorMsg '\%120v.*'

    " Automatically strip trailing whitespaces
    autocmd BufRead,BufWritePre,FileWritePre * silent! %s/[\r \t]\+$//

augroup END
