set t_Co=256
set tabstop=4
set softtabstop=4 shiftwidth=4 expandtab
set number
set background=dark
filetype plugin  on
set wildmenu
autocmd Filetype java setlocal completefunc=javacomplete#Complete omnifunc=javacomplete#Complete 
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main
autocmd FileType python set completefunc=pythoncomplete#Complete omnifunc=pythoncomplete#Complete
autocmd FileType javascript set completefunc=javascriptcomplete#CompleteJS omnifunc=javascriptcomplete#CompleteJS 
autocmd FileType html set completefunc=htmlcomplete#CompleteTags omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set completefunc=csscomplete#CompleteCSS omnifunc=csscomplete#CompleteCSS
autocmd FileType php set completefunc=phpcomplete#CompletePHP omnifunc=phpcomplete#CompletePHP
autocmd FileType c set completefunc=ccomplete#Complete omnifunc=ccomplete#Complete
autocmd FileType css set completefunc=csscomplete#CompleteCSS omnifunc=csscomplete#CompleteCSS colorscheme nuvola
let g:closetag_html_style=1
source ~/.vim/scripts/closetag.vim 
nnoremap <c-q> <c-v>
au Filetype html.erb,html,xml,xsl source ~/.vim/scripts/closetag.vim 
""autocmd Filetype java colorscheme gardener
""let g:EclimCompletionMethod = 'completefunc'
colorscheme nuvola
""let g:EclimCompletionMethod = 'omnifunc'
"folding settings
"
set foldmethod=indent   "fold based on indent
set foldnestmax=15      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use"
set backupdir=/tmp,./.backup,.,/tmp
set directory=/tmp,./.backup,/tmp
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set laststatus=2

""let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:airline_powerline_fonts = 0
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
set shell=/bin/bash
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk]
imap <Tab> <C-P>

"" YouCompleteMe options
"
"
""let g:ycm_register_as_syntastic_checker = 1 "default 1
""let g:Show_diagnostics_ui = 1 "default 1
"
""will put icons in Vim's gutter on lines that have a diagnostic set.
"Turning this off will also turn off the YcmErrorLine and YcmWarningLine
""highlighting

""let g:ycm_enable_diagnostic_signs = 1
""let g:ycm_enable_diagnostic_highlighting = 1
""let g:ycm_always_populate_location_list = 1 "default 0
""let g:ycm_open_loclist_on_ycm_diags = 1 "default 1
""""
""""
""let g:ycm_complete_in_strings = 1 "default 1
""let g:ycm_collect_identifiers_from_tags_files = 1 "default 0
""let g:ycm_path_to_python_interpreter = '/usr/bin/python' "default ''
""
""
""let g:ycm_server_use_vim_stdout = 1 "default 0 (logging to console)
""let g:ycm_server_log_level = 'info' "default info
""
""
""let g:ycm_confirm_extra_conf = 1
""
""
""let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
""let g:ycm_filetype_whitelist = { '*': 1 }
""let g:ycm_key_invoke_completion = '<C-Space>'
""
""
""""nnoremap <F11> :YcmForceCompileAndDiagnostics <CR>
""let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
""let g:ycm_key_list_select_completion=[]
""let g:ycm_key_list_previous_completion=[]
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
""let g:ycm_key_list_select_completion = ['<C-TAB>', '<Down>']
""let g:ycm_key_list_previous_completion = ['<C-S-TAB', '<Up>']
""let g:SuperTabDefaultCompletionType = '<C-Tab>'
set tags+=~/.vim/tags
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4

" build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"
" " OmniCppComplete

let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview"
" Show all tabs:
set list
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
""set lcs=tab:>-,eol:<,nbsp:%
set listchars=tab:▸\ 
let g:syntastic_cpp_config_file = '~/.vim/.syntastic_cpp_headers'

let g:syntastic_cpp_check_header = 1
let g:syntastic_c_no_include_search = 0
let g:syntastic_c_check_header = 1
map <F4> :execute "noautocmd vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
