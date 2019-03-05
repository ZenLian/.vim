" vim: set foldmethod=marker foldmarker={,} foldlevel=0 :
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
            " 编辑
            Plugin 'jiangmiao/auto-pairs'
            Plugin 'tpope/vim-surround'
            Plugin 'tpope/vim-repeat'
            Plugin 'godlygeek/tabular'   " 对齐文本
            Plugin 'luochen1990/rainbow' " 以颜色区分括号层次
            " 搜索, 浏览
            Plugin 'vim-scripts/cscope.vim'
            Plugin 'scrooloose/nerdtree'
            Plugin 'ctrlpvim/ctrlp.vim'     " 模糊搜索
            Plugin 'tacahiroy/ctrlp-funky'  " ctrlp的函数搜索插件
            if executable('ctags')
                Plugin 'vim-scripts/taglist.vim'
            endif
            " git
            Plugin 'airblade/vim-gitgutter'
        endif
    " }
    " AutoComplete {
        if count(g:my_bundle_groups, 'autocomplete')
            Plugin 'vim-scripts/OmniCppComplete'
            Plugin 'Shougo/neocomplete.vim'
            Plugin 'Shougo/neosnippet'
            Plugin 'Shougo/neosnippet-snippets'
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
