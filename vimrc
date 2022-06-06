filetype on
filetype indent on
filetype plugin on 
filetype plugin indent on

" set mouse=a
syntax on

set relativenumber number
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber


set shiftwidth=4 "2
set smartindent
set autoindent
set tabstop=2
set softtabstop=2
set smarttab
set expandtab
set shiftround
set scrolloff=7

set hlsearch
set incsearch
set ignorecase
set smartcase

set ruler
set showcmd

call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'

Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-commentary'
Plug 'peterhoeg/vim-qml'
Plug 'scrooloose/nerdcommenter'

call plug#end()

" YCM
let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap g/ :YcmCompleter GetDoc<CR>
nnoremap gt :YcmCompleter GetType<CR>
nnoremap gi :YcmCompleter GoToInclude<CR>
let g:ycm_show_diagnostics_ui = 1
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
" let g:ycm_filetype_whitelist = {"c":1, "cpp":1, "sh":1, "py": 1, "js": 1}
let g:ycm_semantic_triggers = {'c,cpp,python,java,go': ['re!\w{2}'], 'javascript': ['re!\w{2}']}
set completeopt=menu
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_seed_identifiers_with_syntax=1           " 语法关键字补全
let g:ycm_complete_in_comments=1                   " 补全功能在注释中同样有效

" highlight PMenu ctermfg=250 ctermbg=242
" highlight PMenuSel ctermfg=255 ctermbg=8

noremap <c-z> <NOP>


" snippet
let g:UltiSnipsExpandTrigger="<c-]>"
let g:UltiSnipsJumpForwardTrigger="<c-]>"
let g:UltiSnipsJumpBackwardTrigger="<c-[>"
let g:UltiSnipsEditSplit="vertical"

" comment
let mapleader=","
let g:NERDSpaceDelims=1

map <C-r> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!./%<"
    elseif &filetype == 'sh'
        :bash %
    elseif &filetype == 'python'
        exec "!python3 %"
    elseif &filetype == 'html'
        exec "!microsoft-edge % &"
    elseif &filetype == 'md'
        exec "!typora % &"
    endif
endfunc

nnoremap go :only<CR>
nnoremap U :redo<CR>
