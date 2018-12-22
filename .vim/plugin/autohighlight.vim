" Autohighlight I.
" Highlight all instances of word under cursor, when idle.
" Useful when studying strange source code.
" Type z/ to toggle highlighting on/off.
"nnoremap z/ :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
"function! AutoHighlightToggle()
"  let @/ = ''
"  if exists('#auto_highlight')
"    au! auto_highlight
"    augroup! auto_highlight
"    setl updatetime=4000
"    echo 'Highlight current word: off'
"    return 0
"  else
"    augroup auto_highlight
"      au!
"      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
"    augroup end
"    setl updatetime=500
"    echo 'Highlight current word: ON'
"    return 1
"  endif
"endfunction


" Autohighlight II.
function! HighlightWordUnderCursor()
    if getline(".")[col(".")-1] !~# '[[:punct:][:blank:]]' 
	"hi AutoHighlight term=undercurl cterm=undercurl gui=undercurl guisp=lightblue
	hi AutoHighlight cterm=underline term=underline gui=underline guisp=lightblue
	exec 'match' 'AutoHighlight' '/\V\<'.expand('<cword>').'\>/' 
	"exec 'match' 'Search' '/\V\<'.expand('<cword>').'\>/' 
    else 
	match none 
    endif
endfunction

set updatetime=100
autocmd! CursorHold,CursorHoldI * call HighlightWordUnderCursor()
" highlight link AutoHighlight Search

