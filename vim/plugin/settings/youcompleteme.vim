""
"" vim youcompleteme settings
""


" Files to completely ignore
let g:ycm_filetypes_to_completely_ignore = {
    \ 'notes' : 1,
    \ 'markdown' : 1,
    \ 'text' : 1,
    \}

" Triggers for completion
let g:ycm_semantic_triggers =  {
    \ 'c' : ['->', '.'],
    \ 'objc' : ['->', '.'],
    \ 'cpp,objcpp' : ['->', '.', '::'],
    \ 'perl,php' : ['->'],
    \ 'cs,java,javascript,d,vim,ruby,python,perl6,scala,vb,elixir' : ['.'],
    \ 'lua' : ['.', ':'],
    \ 'erlang' : [':'],
    \}
