filetype plugin indent on " 开启文件类型检测
syntax enable
syntax on

" 文件在vim外更改时,自动读入文件变化
set autoread
" 自动切换工作目录
set autochdir

" 关闭备份
set nobackup
set nowb
set noswapfile

" 开启persistent undo
if has('persistent_undo')
    set undodir=~/.vim/tmp/vimundo
    set undofile                " So is persistent undo ...
    set undolevels=1000         " Maximum number of changes that can be undone
    set undoreload=10000        " Maximum number lines to save for undo on a buffer reload
endif

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
" => misc
"""""""""""""""""""""""""""""""""""""""""""""""""
" Specify the behavior when switching between buffers
"set switchbuf=useopen,usetab,newtab

" A buffer becomes hidden when it is abandoned
set hidden

"""""""""""""""""""""""""""""""""""""""""""""""""
" => 自动执行命令
"""""""""""""""""""""""""""""""""""""""""""""""""
" 打开文件时自动跳转至上次编辑处
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" 无可编辑buffer时自动退出
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif

" 保存时自动删除行末空格
autocmd BufWritePre * silent! %s/\s\+$//e
