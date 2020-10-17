" 检测文件类型
filetype on
" 针对不同的文件类型采用不同的缩进格式
filetype indent on
" 允许插件
filetype plugin on
" 启动自动补全
filetype plugin indent on
" 文件修改之后自动载入
set autoread
" 取消备份。 视情况自己改
set nobackup
" 关闭交换文件
set noswapfile
" 启用鼠标
set mouse=a

let mapleader = " "
syntax on " 开启语法高亮
" 插入模式下用绝对行号, 普通模式下用相对
set relativenumber number
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber

set cursorline
set wrap " 字符不会超出当前窗口
set showcmd
set wildmenu " 补全vim下的命令

" 在上下移动光标时，光标的上方或下方至少会保留显示的行数
set scrolloff=7


" 搜索
set hlsearch " 高亮寻找的字符
set incsearch " 边数入边高亮
set ignorecase
set smartcase

" 显示当前的行号列号
set ruler
" 在状态栏显示正在输入的命令
set showcmd
" 左下角显示当前vim模式
set showmode
" 使用F3检查拼写
nnoremap <F3> :set spell! spell?<CR>

" 让光标移动更快
noremap H 5h
noremap J 5j
noremap K 5k
noremap L 5l

" zz将当前光标放在中间
noremap = nzz
noremap - Nzz
" 空格加回车 关闭搜索结果
noremap <LEADER><CR> :nohlsearch<CR>

map S :w<CR>
map Q :qa!<CR>

" 新建分屏
map gl :set splitright<CR>:vsplit<CR>
map gh :set nosplitright<CR>:vsplit<CR>
map gj :set splitbelow<CR>:split<CR>
map gk :set nosplitbelow<CR>:split<CR>

" 切换分屏
map <LEADER>l <C-W>l
map <LEADER>h <C-W>h
map <LEADER>k <C-W>k
map <LEADER>j <C-W>j
map <LEADER><LEADER> <C-W>w

" 利用方向键调整分屏大小
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

" 切换左右分屏和上下分屏
map tv <C-w>t<C-w>H
map th <C-w>t<C-w>K


" install bundles
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
elseif filereadable(expand("~/.config/nvim/vimrc.bundles")) " neovim
  source ~/.config/nvim/vimrc.bundles
endif

color snazzy
let g:SnazzyTransparent = 1


Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'


