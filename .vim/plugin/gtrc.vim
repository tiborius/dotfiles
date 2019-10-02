""
"" Basic editing
""
set nowrap
set hlsearch
set incsearch
set ignorecase
set tabstop=8
set softtabstop=4
set shiftwidth=4
set nocursorline
set splitright
set expandtab
set smartindent
set autoindent
set termencoding=utf8
set encoding=utf8
set norelativenumber
set showmatch
set virtualedit=block
set wildmenu
set wildmode=list:longest
set ruler
set cryptmethod=blowfish2
filetype plugin indent on
syntax on

"" NetRW
"let g:netrw_banner = 2
"let g:netrw_preview   = 1
"let g:netrw_liststyle = 3
"let g:netrw_browse_split = 0
"let g:netrw_altv = 1
"let g:netrw_winsize = 20

let g:netrw_banner=0
"let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+,\(^\|\s\s\)ntuser\.\S\+'
autocmd FileType netrw set nolist


"" Nwrt Explorer
nmap <F2> :Lexplore<CR>

"" Tag Lisst
nmap <F3> :TlistToggle<CR>

"" BufExplorer
"let g:bufExplorerShowRelativePath=1
nmap <F4> :BufExplorer<CR>

""
"" Theme, skins, colors
""
"let g:solarized_termcolors= 16 | 256
"let g:solarized_termtrans = 0 | 1 
"let g:solarized_degrade = 0 | 1 
"let g:solarized_bold = 1 | 0 
"let g:solarized_underline = 1 | 0 
"let g:solarized_italic = 1 | 0 
"let g:solarized_contrast = “normal”| “high” or “low” 
"let g:solarized_visibility= “normal”| “high” or “low”
let g:solarized_contrast="high"
let g:solarized_visibility= "high"
let g:solarized_termcolors=256
let g:solarized_termtrans = 1

let hour = strftime("%H")
if 6 <= hour && hour < 18
    "set background=light
    set background=dark
else
    set background=dark
endif
set t_Co=256

"colorscheme aqua
"colorscheme calmar256-dark
"colorscheme darkbone
"colorscheme darkZ
"colorscheme evening
"colorscheme freya
"colorscheme herald
"colorscheme inkpot
"colorscheme mustang
"colorscheme peachpuff
"colorscheme solarized
"colorscheme tabula
"colorscheme tir_black
"colorscheme tir_black
"colorscheme vibrantink
colorscheme vividchalk
"colorscheme wombat256

"hi Cursor guifg=yellow guibg=red ctermbg=23 ctermfg=35
hi Cursor guifg=yellow guibg=red

hi User1 guifg=#eea040 guibg=#222222 ctermfg=16 ctermbg=24
hi User2 guifg=#dd3333 guibg=#222222 ctermfg=6 ctermbg=23
hi User3 guifg=#ff66ff guibg=#222222 ctermfg=12 ctermbg=23
hi User4 guifg=#a0ee40 guibg=#222222 ctermfg=14 ctermbg=23
hi User5 guifg=#eeee40 guibg=#222222 ctermfg=13 ctermbg=23
"hi Highlight1 guifg=#ffffff guibg=#000000 ctermfg=1 ctermbg=0
hi Highlight2 guifg=#dddddd guibg=#222222 ctermfg=2 ctermbg=1
hi Highlight3 guifg=#cccccc guibg=#444444 ctermfg=3 ctermbg=2
hi Highlight4 guifg=#cccccc guibg=#444444 ctermfg=4 ctermbg=3
hi Highlight5 guifg=#cccccc guibg=#444444 ctermfg=5 ctermbg=4
hi Highlight6 guifg=#cccccc guibg=#444444 ctermfg=6 ctermbg=5
hi Highlight7 guifg=#cccccc guibg=#444444 ctermfg=7 ctermbg=6
hi Highlight8 guifg=#cccccc guibg=#444444 ctermfg=8 ctermbg=7
hi Highlight9 guifg=#cccccc guibg=#444444 ctermfg=9 ctermbg=8

" black, red, green, orange, blue, magenta, cyan, white
" Highlight the word under the color with 4 different colors.
map <silent> <leader>h1 :call matchadd("Highlight1", expand("<cword>"))<cr>
map <silent> <leader>h2 :call matchadd("Highlight2", expand("<cword>"))<cr>
map <silent> <leader>h3 :call matchadd("Highlight3", expand("<cword>"))<cr>
map <silent> <leader>h4 :call matchadd("Highlight4", expand("<cword>"))<cr>
map <silent> <leader>h5 :call matchadd("Highlight5", expand("<cword>"))<cr>
map <silent> <leader>h6 :call matchadd("Highlight6", expand("<cword>"))<cr>
map <silent> <leader>h7 :call matchadd("Highlight7", expand("<cword>"))<cr>
map <silent> <leader>h8 :call matchadd("Highlight8", expand("<cword>"))<cr>
map <silent> <leader>h9 :call matchadd("Highlight9", expand("<cword>"))<cr>
" Clear all highlights
map <silent> <leader>h0 :call clearmatches()<cr>

""
"" Status line
""
"set statusline=
"set statusline +=%1*\ %n\ %*            "buffer number
"set statusline +=%5*%{&ff}%*            "file format
"set statusline +=%3*%y%*                "file type
"set statusline +=%4*\ %<%F%*            "full path
"set statusline +=%2*%m%*                "modified flag
"set statusline +=%1*%=%5l%*             "current line
"set statusline +=%2*/%L%*               "total lines
"set statusline +=%1*%4v\ %*             "virtual column number
"set statusline +=%2*0x%04B\ %*          "character under cursor
set laststatus=2
"set statusline=%<%f\ %h%m%r\ %y%=%{v:register}\ %-14.(%l,%c%V%)\ %P
"set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
"set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%04B\ %c,%l/%L\ %P
set statusline=%1*%t%2*[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%3*%h%m%r%y%=%5*%04B\ %2*%c,%1*%l/%L\ %5*%P
" Statusline with a few useful items, but still lightweight (no plugins!)                                                                                                                         
"set statusline=%n%m%h%r\ %f\ [%{strlen(&fenc)?&fenc:'none'},%{&ff}]\ %{&list?'LIST\ ':''}%{&expandtab?'EXPANDTAB\ ':''}%{&wrap?'':'NOWRAP\ '}%{&paste?'PASTE\ ':''}%{&virtualedit=='all'?'VIRTUALEDIT\ ':''}%y%=C:%c%V\ L:%l/%L\ %p%%                                                                                                                                                               

" Autohighlight
"set updatetime=500
"autocmd! CursorHold,CursorHoldI * call HighlightWordUnderCursor()

if has('gui_running')
  set guifont=Ubuntumono\ 11
   set guioptions=aegimrLtT
  "set guioptions=aegimt
   set columns=999 lines=999
endif

""
"" Coding
""
" C, C++
let &path.="include,src/include,/usr/include/AL,"
"nmap <F9>	:make<CR>
"nmap <C-F9>	:make debug<CR>
"let g:proj_flags='gimsSt'
"let g:proj_run1='silent !geany %f'

map gK "zyiw:exe "!firefoxdev 'https://devdocs.io/\\#q=".@z."'"<CR>
"map gK "zyiw:exe "!firefoxdev 'http://google.com/search?btnI=I&q=".&filetype."+".@z."'"<CR>
"map K "zyiw:exe "!firefoxdev 'http://google.com/search?btnI=I&q=".@z."' &"<CR>
"map K "zyiw:exe "!zeal '".@z."'"<CR><CR>
"nnoremap gz :!zeal "<cword>"&<CR><CR>

"nmap <F2>	:PREVCOLOR<CR>
"nmap [12~	:PREVCOLOR<CR>
"nmap <S-F2>	:NEXTCOLOR<CR>
"nmap [13~	:NEXTCOLOR<CR>

"KKovacs' calculator
map gc viW"zyA = <esc>"=<c-r>z<cr>p

nnoremap <S-C-j> :m .+1<CR>==
nnoremap <S-C-k> :m .-2<CR>==
inoremap <S-C-j> <Esc>:m .+1<CR>==gi
inoremap <S-C-k> <Esc>:m .-2<CR>==gi
vnoremap <S-C-j> :m '>+1<CR>gv=gv
vnoremap <S-C-k> :m '<-2<CR>gv=gv
"Move after next comma
"nmap ,mc "zdiWxf,a <Esc>"zp
"Move until next parenthesis
"nmap ,mp "zdiWxf)hi, <Esc>"zpx
"Move until next parenthesis
nmap ,ml ?[(,]<CR>w"zdt,dwt)i, <ESC>"zp

" cscope support
if has("cscope")
    "set csprg=/usr/local/bin/cscope
    "set csto=0
    "set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
	cs add cscope.out
	" else add database pointed to by environment
    elseif $CSCOPE_DB != ""
	cs add $CSCOPE_DB
    endif
    set csverb
    map <C-}> :cstag <C-R>=expand("<cword>")<CR><CR>
    map g<C-]> :cs find 3 <C-R>=expand("<cword>")<CR><CR>
    map g<C-\> :cs find 0 <C-R>=expand("<cword>")<CR><CR>

    nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

    " Using 'CTRL-spacebar' then a search type makes the vim window
    " split horizontally, with search result displayed in
    " the new window.

    nmap <C-Space>s :scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space>g :scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space>c :scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space>t :scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space>e :scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-Space>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-Space>d :scs find d <C-R>=expand("<cword>")<CR><CR>

    " Hitting CTRL-space *twice* before the search type does a vertical
    " split instead of a horizontal one

    nmap <C-Space><C-Space>s
		\:vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space><C-Space>g
		\:vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space><C-Space>c
		\:vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space><C-Space>t
		\:vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space><C-Space>e
		\:vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space><C-Space>i
		\:vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-Space><C-Space>d
		\:vert scs find d <C-R>=expand("<cword>")<CR><CR>
endif

" Swap expressions around A=B;
" foo = " bar;
nmap g=	:.s/^\(\s*\)\([^=]*[[:graph:]]\)\(\s*=\s*\)\([^>].*\)\s*\(;\s*\)$/\1\4\3\2\5/<CR>

"" for speed up editing huge files:
"set lazyredraw
"set noswapfile
"set undolevels=-1
"set eventignore=all
"set nohidden
"set syntax=off
""

""
"" Navigation
""
map <A-j> j<c-e>
map <A-k> k<c-y>

" Set max window size on gui
if has('gui_running')
    set guifont=Ubuntumono\ 11
    set guioptions=aegimrLtT
    "set guioptions=aegimt
    set columns=999 lines=999
    set fullscreen
    nmap <F8>	:tabnext<CR>
    nmap <F7>	:tabprev<CR>
else
    nmap <F8>	:next<CR>
    nmap <F7>	:prev<CR>
endif

nmap <leader>s  :%s/\<<C-r><C-w>\>//g<left><left>
nmap <leader>q  ciw'<C-r>"'

nmap <leader><F3> :NEXTCOLOR<cr>
nmap <leader><F2> :PREVCOLOR<cr>

"nmap gz	:e ~/Documents/private/<CR>

" format JSON
" :%!python -m json.tool
"
" format XML
" :%!xmllint --format -

" uncomment to disable YouCompleteMe plugin
"let g:loaded_youcompleteme = 0
"let g:ycm_collect_identifiers_from_tags_files = 1

" uncomment to disable omnicppcomplete plugin
"let loaded_omnicppcomplete = 0

execute pathogen#infect()

