"""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/cscope.vim'
Plugin 'vim-scripts/OmniCppComplete'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'

call vundle#end()
filetype plugin indent on
let mapleader=","

"""""""""""""""""""""""""""""""""""""""""""""""""
" => color scheme
"""""""""""""""""""""""""""""""""""""""""""""""""
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"

"""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline
"""""""""""""""""""""""""""""""""""""""""""""""""
"let g:airline_section_y = '%{strftime("%H:%M")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline_theme = 'solarized'
"let g:airline_solarized_bg = 'dark'

"""""""""""""""""""""""""""""""""""""""""""""""""
" => NerdTree
"""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos="left"
let g:NERDTreeShowHidden=0
let g:NERDTreeIgnore=['\.o$','\~$','\.tags$']
let g:NERDTreeWinSize=30
map <F2> :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookMark<cr>
map <leader>nf :NERDTreeFind<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Taglist
"""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_GainFocus_On_ToggleOpen=1
map <F3> :TlistToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Cscope
"""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>fa :call cscope#findInteractive(expand('<cword>'))<CR>
nnoremap <leader>l  :call ToggleLocationList()<CR>
nnoremap g[ :call cscope#find('c', expand('<cword>'))<CR>
" s: Find this C symbol
nnoremap <leader>fs :call cscope#find('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap <leader>fg :call cscope#find('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap <leader>fd :call cscope#find('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap <leader>fc :call cscope#find('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap <leader>ft :call cscope#find('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap <leader>fe :call cscope#find('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap <leader>ff :call cscope#find('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap <leader>fi :call cscope#find('i', expand('<cword>'))<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""
" => gitgutter
"""""""""""""""""""""""""""""""""""""""""""""""""
set updatetime=100

"""""""""""""""""""""""""""""""""""""""""""""""""
" => OmniCppComplete
"""""""""""""""""""""""""""""""""""""""""""""""""
set completeopt=menuone,menu
let OmniCpp_MayCompleteDot=1   ".后自动补全
let OmniCpp_MayCompleteArrow=1 "->后自动补全
let OmniCpp_MayCompleteScope=1 "::后自动补全
let OmniCpp_NamespaceSearch=1
let OmniCpp_GlobalScopeSearch=1
let OmniCpp_ShowAccess=1
let OmniCpp_ShowPrototypeInAbbr=1 "显示函数参数列表
let OmniCpp_DefaultNamespaces=["std"]
