"colorscheme jellybeans
"colorscheme bubblegum-256-dark
colorscheme Benokai
colorscheme gruvbox
"colorscheme Tomorrow-Night
"colorscheme codeschool
"colorscheme zenburn
"Default settings
set hlsearch
set tabstop=4
set shiftwidth=4
set backspace=2
set nocompatible
set expandtab
set term=screen-256color
set number
set autoread
set mouse=a
set exrc
set secure
filetype plugin on
set colorcolumn=140
set t_Co=256
set completeopt-=preview
"Gocode settings
let g:go_fmt_command = "goimports"
au BufRead,BufNewFile *.go set filetype=go
autocmd FileType go map <C-b> :GoReferrers<CR>

"YouCompleteMe settings
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_completion_window_after_selecting = 3
let g:ycm_confirm_extra_conf=0
let g:ycm_show_diagnostics_ui=0
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_register_as_syntastic_checker=0
let g:ycm_server_python_interpreter='python2.7'
let g:ycm_python_binary_path='python'
"let g:ycm_python_binary_path='/usr/bin/:/usr/lib/python2.7/site-packages/'
"Bindings settings
map <C-n> :NERDTreeToggle<CR>
map <C-k> gT
map <C-l> gt

"Neocomplete settings
"let g:neocomplete#enable_at_startup = 1
"let g:neocomplete#enable_smart_case = 1
"let g:neocomplete#auto_completion_start_length = 1
"let g:neocomplete#enable_auto_select = 1

" extract keywords from vim syntax files
"let g:ycm_seed_identifiers_with_syntax=1

" show preview window with function prototype on top
"let g:ycm_add_preview_to_completeopt=1

" close preview window after exiting insert mode
"let g:ycm_autoclose_preview_window_after_insertion=1

"Tagbar settings
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-R -sort -silent'
    \ }

"Plugin settings
call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'nsf/gocode', {'rtp': 'vim'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'severin-lemaignan/vim-minimap'
call plug#end()
