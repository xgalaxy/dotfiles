""
"" vim indent guides settings
""


let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_space_guides = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=4
