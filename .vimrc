set softtabstop=4 shiftwidth=4 expandtab 
set number
set background=dark
filetype plugin  on
set wildmenu
autocmd Filetype java setlocal completefunc=javacomplete#Complete omnifunc=javacomplete#Complete 
autocmd FileType python set completefunc=pythoncomplete#Complete omnifunc=pythoncomplete#Complete
autocmd FileType javascript set completefunc=javascriptcomplete#CompleteJS omnifunc=javascriptcomplete#CompleteJS 
autocmd FileType html set completefunc=htmlcomplete#CompleteTags omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set completefunc=csscomplete#CompleteCSS omnifunc=csscomplete#CompleteCSS
autocmd FileType php set completefunc=phpcomplete#CompletePHP omnifunc=phpcomplete#CompletePHP
autocmd FileType c set completefunc=ccomplete#Complete omnifunc=ccomplete#Complete
autocmd FileType css set completefunc=csscomplete#CompleteCSS omnifunc=csscomplete#CompleteCSS colorscheme nuvola
let g:closetag_html_style=1
source ~/.vim/scripts/closetag.vim 
au Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim 
""autocmd Filetype java colorscheme gardener
let g:syntastic_java_checkers = ['javac']
""let g:EclimCompletionMethod = 'completefunc'
colorscheme nuvola
""let g:EclimCompletionMethod = 'omnifunc'
"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=15      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use"
