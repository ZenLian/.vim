" vim: set foldmethod=marker foldmarker={,} foldlevel=0 :
filetype plugin indent on " 开启文件类型检测
syntax enable
syntax on

set autoread  " 自动读入文件变化
"set autochdir " 自动切换工作目录

"set mouse=a   " 自动检测鼠标
set mousehide " 隐藏鼠标

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

" 关闭vim后保存viminfo, 如命令记录等
set viminfo^=%
set viminfofile=~/.vim/tmp/viminfo

set encoding=utf8

" +寄存器用于跨vim复制粘贴
" FIXME: 终端下无效
"set clipboard=unnamed,unnamedplus

" vim输出信息缩写
"set shortmess+=filmnrxtToO

" Specify the behavior when switching between buffers
"set switchbuf=useopen,usetab,newtab
set hidden " A buffer becomes hidden when it is abandoned
set history=1000
set nospell
set iskeyword-=.
set iskeyword-=#
set iskeyword-=-

" 相对行号
set relativenumber number
" FIXME: 终端下无效，用BufEnter和BufLeave代替
au FocusLost * :set norelativenumber number
au FocusGained * :set relativenumber
" FIXME: 本无行号的buffer在离开后会显示行号
"au BufLeave * :set norelativenumber number
"au BufEnter * :set relativenumber
" 插入模式下用绝对行号, 普通模式下用相对行号
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber
" 切换绝对/相对行号
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber number
  else
    set relativenumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""
" => 文本和缩进
"""""""""""""""""""""""""""""""""""""""""""""""""

set backspace=eol,start,indent " 退格键
" set whichwrap+=h,l,<,>       " 方向键跨行
set expandtab                  " Use spaces instead of tabs. use [C-v <Tab>] to insert real tab
set smarttab                   " Be smart when using tabs
set autoindent                 " Auto indent
set smartindent                " Smart indent
set shiftwidth=4               " 1 tab == 4 spaces
set tabstop=4                  " width of tab
set shiftround                 " use multiple of shiftwidth when indenting with '<' and '>'
set lbr                        " Linebreak on 120 characters
set tw=120
set nowrap                     "Do not Wrap long lines

"""""""""""""""""""""""""""""""""""""""""""""""""
" => 自动执行命令
"""""""""""""""""""""""""""""""""""""""""""""""""
" 打开文件时自动跳转至上次编辑处
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" 无可编辑buffer时自动退出
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif

" 保存时自动删除行末空格
function! StripTrailingSpace()
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * call StripTrailingSpace()
