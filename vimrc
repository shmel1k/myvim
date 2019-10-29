"Default settings
set hlsearch
set t_Co=256
set syntax=on
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
set foldmethod=indent
set foldlevel=42
set list
set listchars=tab:>-,trail:$

" Don’t add empty newlines at the end of files
set binary

"Gocode settings
let g:go_fmt_command = "goimports"
au BufRead,BufNewFile *.go set filetype=go

"Delete trailing spaces on save.
""autocmd BufWritePre * %s/\s\+$//e
autocmd FileType go map <C-b> :GoReferrers<CR>

"YouCompleteMe settings
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_confirm_extra_conf=0
let g:ycm_show_diagnostics_ui=0
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_server_python_interpreter='python'
"
"
" Omnisharp settings
"let g:OmniSharp_server_use_mono = 1

"Syntastics settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"C++ Highlight settings
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

"Bindings settings
map <C-n> :NERDTreeToggle<CR>
map <C-k> gT
map <C-l> gt
map <C-i> :YcmCompleter GoToDeclaration<CR>
map <C-d> "_d
let g:UltiSnipsExpandTrigger="<c-m>"
autocmd FileType go nnoremap <C-c> :GoCoverageToggle <CR>

"ale settings
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_fix_on_save = 1
let g:ale_set_quickfix = 0
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_go_golangci_lint_package = 1
let g:ale_linters = {'go': ['golangci-lint']}
""let g:ale_go_golangci_lint_executable  = 'golangci-lint'
let g:ale_go_golangci_lint_options = '--no-config --disable-all --enable=staticcheck --enable=golint --enable=deadcode --enable=unparam --enable=maligned --enable=typecheck'
""let g:ale_go_golangci_lint_options = '--disable-all --enable=golint --enable=govet --enable=gofmt'

"Python
let g:autopep8_on_save = 1
let g:autopep8_disable_show_diff=1

"gitgutter settings
autocmd BufWritePost * GitGutter

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
Plug 'jiangmiao/auto-pairs'
Plug 'rhysd/vim-clang-format'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-airline/vim-airline-themes'
Plug 'tell-k/vim-autopep8'
call plug#end()

set mouse=
set background=light
""set background=dark
"colorscheme seoul256
""set background=dark
colorscheme PaperColor
""colorscheme gruvbox
let g:ft_bold    = " cterm=NONE "
"let g:airline_theme = "material"
"

"colorscheme one
"colorscheme palenight
"colorscheme gruvbox
" FOR SOLARIZED
"colorscheme solarized
"hi SpecialKey cterm=NONE ctermbg=NONE ctermfg=23
" FOR ONE COLORSCHEME
"colorscheme skittles-berry
"hi SpecialKey cterm=NONE ctermbg=NONE ctermfg=153
"

"colorscheme monokai
set expandtab
hi QuickFixLine cterm=None ctermbg=256 guibg=#ffff00
