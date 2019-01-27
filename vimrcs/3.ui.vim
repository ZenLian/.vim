" vim: set foldmethod=marker foldmarker={,} foldlevel=0 :
set background=dark  " 深色背景

" 主题
if count(g:my_bundle_groups, 'ui') && filereadable(expand("~/.vim/bundle/vim-colors-solarized/colors/solarized.vim"))
    let g:solarized_termcolors=256
    let g:solarized_termtrans=1
    let g:solarized_contrast="normal"
    let g:solarized_visibility="normal"
    color solarized
else
    "color default
    color desert
    set t_Co=256
    " 自动补全窗口配色
    highlight Pmenu      ctermbg=darkgrey  ctermfg=white guibg=darkgrey  guifg=white
    highlight PmenuSel   ctermbg=lightgrey ctermfg=black guibg=lightgrey guifg=black
    highlight PmenuSbar  ctermbg=darkgrey  guibg=darkgrey
    highlight PmenuThumb ctermbg=lightgrey guibg=lightgrey
    " 当前行配色
    highlight Cursorline cterm=NONE ctermbg=8 guibg=Grey40
    " 搜索词配色
    highlight Search     term=reverse ctermbg=11 ctermfg=0 guibg=yellow
endif

" 语言和文件系统
let $LANG='en_US'
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


" 始终显示tab栏
set showtabline=2


set number        " 显示行号
"set foldcolumn=1 " 左侧留一列空白
highlight clear Signcolumn " 标记列与背景一致
highlight clear LineNr     " 行号与背景一致


set so=5          " 滚动时光标离上下边界的距离
"set sj=3          " 一次滚动的行数
set cursorline    " 高亮当前行

" 状态栏
    if has('statusline')
        set laststatus=2

        " Broken down into easily includeable segments
        set statusline=%<%f\                     " Filename
        set statusline+=%w%h%m%r                 " Options
        "if !exists('g:override_spf13_bundles')
        "    set statusline+=%{fugitive#statusline()} " Git Hotness
        "endif
        set statusline+=\ [%{&ff}/%Y]            " Filetype
        set statusline+=\ [%{getcwd()}]          " Current dir
        set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
    endif

    if has('cmdline_info')
        set ruler                   " Show the ruler
        set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
        set showcmd                 " Show partial commands in status line and
                                    " Selected characters/lines in visual mode
    endif

" 搜索栏

set ignorecase " 大小写不敏感
set smartcase " 有大写时切换为大小写敏感
set hlsearch " 高亮搜索结果
set incsearch " 实时显示搜索结果
"set lazyredraw
"set magic

" 菜单栏
set wildmenu   " 按tab时命令栏显示补全列表
set wildmode=list:longest,full " 类似shell补全方式
set wildignore=*.o,*~,*.pyc " 忽略编译文件

" 显示特殊字符
set list
" FIXME: 不好看
set listchars=tab:>-,trail:⋅,extends:>,nbsp:.

" 分割窗口位置
set splitright
set splitbelow
