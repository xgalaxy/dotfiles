"
" vim auto command settings
"


augroup vimrc

	autocmd!

	" Turn off error bells
	autocmd GUIEnter * set visualbell t_vb=

	" Highlight cursor line after 120 characters
	autocmd BufEnter * if &modifiable && &ft != 'unite' | match ErrorMsg '\%120v.*'

	" Automatically strip trailing whitespaces
	autocmd BufRead,BufWritePre,FileWritePre * silent! %s/[\r \t]\+$//

	" Fix Python
	autocmd FileType python
		\ set tabstop = 4 |
		\ set softtabstop = 4 |
		\ set shiftwidth = 4 |
		\ set noexpandtab

	" Ultisnips
	autocmd BufEnter *.snippets setf snippets
	autocmd FileType snippets set noexpandtab

	" Unite
	autocmd FileType unite call s:unite_settings()
	function! s:unite_settings()
		nmap <buffer> <esc> <Plug>(unite_all_exit)
		nmap <buffer> <c-a> <Plug>(unite_choose_action)
		imap <buffer> <c-a> <Plug>(unite_choose_action)
	endfunction

augroup END
