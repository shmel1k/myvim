"colorscheme jellybeans
"colorscheme bubblegum-256-dark 
set t_Co=256
colorscheme gruvbox
set background=dark
"colorscheme Tomorrow-Night
"colorscheme codeschool
"colorscheme zenburn
"Default settings
set hlsearch
set tabstop=4
set shiftwidth=4
set backspace=2
set nocompatible
set term=screen-256color
set number
set autoread
set mouse=a
set exrc
set secure
filetype plugin on
set colorcolumn=140
set completeopt-=preview
"Trailing list
set list
set listchars=tab:>-,trail:$

" Don’t add empty newlines at the end of files
set binary
set noeol

"Gocode settings
let g:go_fmt_command = "goimports"
au BufRead,BufNewFile *.go set filetype=go
autocmd FileType go map <C-b> :GoReferrers<CR>

"YouCompleteMe settings
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_autoclose_completion_window_after_selecting = 3
let g:ycm_confirm_extra_conf=0
let g:ycm_show_diagnostics_ui=0
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_register_as_syntastic_checker=0
let g:ycm_server_python_interpreter='python'
"let g:ycm_python_binary_path='/usr/bin/:/usr/lib/python2.7/site-packages/'
"

"Syntastics settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=2
"let g:syntastic_c_include_dirs = [ '/usr/include', '/usr/local/mpop/include', 'core/include', 'swa/include', 'sota/include'  ]
let g:syntastic_c_checkers = []
let g:syntastic_cpp_checkers = []
let g:syntastic_go_checkers = ['gotype', 'maligned', 'golint', 'go vet']

"C++ Highlight settings
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

"Bindings settings
map <C-n> :NERDTreeToggle<CR>
map <C-k> gT
map <C-l> gt
map <C-i> :YcmCompleter GoToDeclaration<CR>
vmap <C-m> :ClangFormat

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
Plug 'jiangmiao/auto-pairs'
Plug 'chr4/nginx.vim'
Plug 'rhysd/vim-clang-format'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
call plug#end()

set expandtab
hi QuickFixLine cterm=None ctermbg=256 guibg=#ffff00
