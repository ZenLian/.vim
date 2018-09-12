"""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""
"
set nocompatible

" enable filetype plugins
filetype plugin indent on

"
let mapleader=";"

" Auto detect changes outside of Vim
set autoread
" Auto change directory to current buffer
set autochdir

" Turn backup off
set nobackup
set nowb
set noswapfile

" Reload the vimrc file
map <leader>sv :source ~/.vimrc<cr>

"""""""""""""""""""""""""""""""""""""""
" => User Interface
"""""""""""""""""""""""""""""""""""""""
" Language, Encoding and File formats
let $LANG='en_US'
set langmenu=en
set encoding=utf8
set ffs=unix

""""""""""
" -> Left
""""""""""
" Show line numbers
set number

" Add a bit extra margin to the left
"set foldcolumn=1

""""""""""
" Middle
""""""""""
" Set 7 lines to the cursor when moving vertically
set so=7

" Show current line
set cursorline

""""""""""
" Bottom
""""""""""
" Always show the status line
set laststatus=2
" Format the status line
"set statusline=

" Always show current position
set ruler

" Height of the command bar
set cmdheight=2
" Show partial command in the cmd bar
set showcmd

" Turn on the wild menu
set wildmenu
" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" No annoying sound on errors
set belloff=all
"""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Searching related
"""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase
set smartcase
set hlsearch
set incsearch
"set lazyredraw 
"set magic

" Disable highlight when <leader><cr> is pressed
map <silent><leader><space> :noh<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors
"""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable
syntax on

if has('gui_running')
    set t_Co=256
else
    set t_Co=16
endif

"colorscheme desert

set background=dark

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
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
" =>tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


" Always show tabline
set showtabline=2

" Useful mappings for managing tabs
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

" Close the current buffer
map <leader>bb :bd<cr>
" Next and Previous buffers
nnoremap ]b :bnext!<cr>
nnoremap [b :bprevious!<cr>
" Switch buffers
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


" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Quit when no edit buffer exits
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif
"""""""""""""""""""""""""""""""""""""""""""""""""
" => Key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""
" fast saving
nmap <leader>w :w!<cr>

" Move a line of text using ALT+[jk]
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Bash-like key mappings
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
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""
" toggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
"map <leader>sn ]s
"map <leader>sp [s
"map <leader>sa zg
"map <leader>s? z=

"noremap <leader>qq
