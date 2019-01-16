let mapleader=g:my_leader
" 重载vimrc配置
map <leader>sv :source ~/.vimrc<cr>

" 快速保存
nmap <leader>w :w!<cr>

" ,<space>关闭高亮
map <silent><leader><space> :noh<cr>

" 使用ALT+[jk]上下移动当前行
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" 使用Ctrl+h/j/k/l在窗口间移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

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

" z+数字查看man手册页(TODO)
source $VIMRUNTIME/ftplugin/man.vim
"nmap m1 :Man 1 =expand("")
"nmap m2 :Man 2 =expand("")

" ctags
nmap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q -f .tags .<cr><cr>
set tags=./.tags;,,tags;

" 插入系统时间
"nnoremap <leader>tt a<C-R>=strftime("%Y-%m-%d %H:%M")<CR><esc>
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
"map <leader>sn ]s
"map <leader>sp [s
" 添加至词典
"map <leader>sa zg
" 显示拼写建议
"map <leader>s? z=
