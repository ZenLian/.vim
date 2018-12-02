"""""""""""""""""""""""""""""""""""""""""""""""""
" => 一般配置
"""""""""""""""""""""""""""""""""""""""""""""""""
" 不兼容vi
set nocompatible

" 开启文件类型检测
filetype plugin indent on

" mapleader
let mapleader=","

" 文件在vim外更改时,自动读入文件变化
set autoread
" 自动切换工作目录
set autochdir

" 关闭备份
set nobackup
set nowb
set noswapfile

" 重载vimrc配置
map <leader>sv :source ~/.vimrc<cr>

"""""""""""""""""""""""""""""""""""""""
" => UI配置
"""""""""""""""""""""""""""""""""""""""
" 语言,编码和文件系统
let $LANG='en_US'
set encoding=utf8
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set ffs=unix

" 关闭警告声
set belloff=all

" 关闭菜单栏、工具栏、滚动条
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

""""""""""
" Left
""""""""""
" 显示行号
set number

" 左侧留一列空白
"set foldcolumn=1

""""""""""
" Middle
""""""""""
" 移动时光标离上下边界的距离
set so=7

" 高亮当前行
set cursorline

""""""""""
" Bottom
""""""""""
" 显示状态栏
set laststatus=2
" 自定义状态栏格式
"set statusline=

" 显示坐标(行列号)
set ruler

" 命令栏高度
set cmdheight=1
" 普通模式下显示命令
set showcmd

" 按tab时命令栏显示补全列表
set wildmenu
" 忽略编译文件
set wildignore=*.o,*~,*.pyc


"""""""""""""""""""""""""""""""""""""""""""""""""
" => 搜索
"""""""""""""""""""""""""""""""""""""""""""""""""
" 大小写不敏感
set ignorecase
" 有大写时切换为大小写敏感
set smartcase
" 高亮搜索结果
set hlsearch
" 实时显示搜索结果
set incsearch
"set lazyredraw
"set magic

" ,<space>关闭高亮
map <silent><leader><space> :noh<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""
" => 颜色
"""""""""""""""""""""""""""""""""""""""""""""""""
" 语法高亮
syntax enable
syntax on

if has('gui_running')
    set t_Co=256
    colorscheme desert
else
    set t_Co=16
endif

set background=dark

"""""""""""""""""""""""""""""""""""""""""""""""""
" => 文本和缩进
"""""""""""""""""""""""""""""""""""""""""""""""""

" 退格键
set backspace=eol,start,indent
" 方向键跨行
"set whichwrap+=h,l,<,>

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 120 characters
set lbr
set tw=120

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"""""""""""""""""""""""""""""""""""""""""""""""""
" => tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""
" 使用Ctrl+h/j/k/l在窗口间移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


" 始终显示tab栏
set showtabline=2

" 操作tab页快捷键
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
nnoremap [t :tabprevious<cr>
nnoremap ]t :tabnext<cr>
" Let 'tl' toggle between this and the last accessed tab
"let g:lasttab = 1
"nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
"au TabLeave * let g:lasttab = tabpagenr()

" Specify the behavior when switching between buffers
"set switchbuf=useopen,usetab,newtab

" A buffer becomes hidden when it is abandoned
set hidden

" 操作buffer快捷键
" 关闭当前buffer
map <leader>bd :bd<cr>
" 下一个/上一个buffer
nnoremap ]b :bnext!<cr>
nnoremap [b :bprevious!<cr>
" 切换至指定buffer
nnoremap <leader>1 :b1<CR>
nnoremap <leader>2 :b2<CR>
nnoremap <leader>3 :b3<CR>
nnoremap <leader>4 :b4<CR>
nnoremap <leader>5 :b5<CR>
nnoremap <leader>6 :b6<CR>
nnoremap <leader>7 :b7<CR>
nnoremap <leader>8 :b8<CR>
nnoremap <leader>9 :b9<CR>
nnoremap <leader>0 :b10<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""
" => 快捷键
"""""""""""""""""""""""""""""""""""""""""""""""""
" 快速保存
nmap <leader>w :w!<cr>

" 使用ALT+[jk]上下移动当前行
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" z+数字查看man手册页(TODO)
source $VIMRUNTIME/ftplugin/man.vim
"nmap m1 :Man 1 =expand("")
"nmap m2 :Man 2 =expand("")

" ctags
nmap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q -f .tags .<cr><cr>
set tags=./.tags;,,tags;

" 插入系统时间
nnoremap <C-T> a<C-R>=strftime("%Y-%m-%d %H:%M")<CR><esc>
inoremap <C-T> <C-R>=strftime("%Y-%m-%d %H:%M")<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Bash风格快捷键
"""""""""""""""""""""""""""""""""""""""""""""""""
" go to the beginning/end
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
" go back/forward one word
"cnoremap <M-B>
"cnoremap <M-F>
" go back/forward one character
cnoremap <C-B> <Left>
cnoremap <C-F> <Right>
inoremap <C-B> <Left>
inoremap <C-F> <Right>
" cut till the beginning/end
"cnoremap <C-U>
"cnoremap <C-K>
cnoremap <C-H> <Backspace>
cnoremap <C-D> <Del>

" Dealing remap collisions
" show command history
"cnoremap <C-L> <C-F>
" List command completion
"cnoremap <C-O> <C-D>

"""""""""""""""""""""""""""""""""""""""""""""""""
" => 拼写检查
"""""""""""""""""""""""""""""""""""""""""""""""""
" ,ss开关拼写检查
map <leader>ss :setlocal spell!<cr>

" 下/上一处拼写错误
map <leader>sn ]s
map <leader>sp [s
" 添加至词典
map <leader>sa zg
" 显示拼写建议
map <leader>s? z=

"""""""""""""""""""""""""""""""""""""""""""""""""
" => 自动执行命令
"""""""""""""""""""""""""""""""""""""""""""""""""
" 打开文件时自动跳转至上次编辑处
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" 无可编辑buffer时自动退出
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif

" 保存时自动删除行末空格
autocmd BufWritePre *.c,*.cc,*.cpp,*.java,*.js,*.py,*.sh,*.vim silent! %s/\s\+$//e
