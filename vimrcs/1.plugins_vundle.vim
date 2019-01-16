" Vundle Begin {

    " TODO: 参考spf13-vim添加一个UnBundle命令

    " Basics {
        set nocompatible
        set background=dark     " Assume a dark background
    " }
    " Setup Vundle Support {
        filetype off
        set rtp+=~/.vim/bundle/Vundle.vim
        call vundle#begin()
        Plugin 'VundleVim/Vundle.vim' " Let Vundle manage Vundle
    " }
" }

" Load Plugins {
    " General {
        if count(g:my_bundle_groups, 'general')
            Plugin 'jiangmiao/auto-pairs'
            Plugin 'vim-scripts/cscope.vim'
            Plugin 'ctrlpvim/ctrlp.vim'
            Plugin 'scrooloose/nerdtree'
            Plugin 'vim-scripts/OmniCppComplete'
            Plugin 'vim-scripts/taglist.vim'
            Plugin 'airblade/vim-gitgutter'
        endif
    " }

    " UI {
        if count(g:my_bundle_groups, 'ui')
            Plugin 'altercation/vim-colors-solarized'
            Plugin 'vim-airline/vim-airline'
            Plugin 'vim-airline/vim-airline-themes'
        endif
    " }
" }

" Vundle End {
    call vundle#end()
    filetype plugin indent on
" }
