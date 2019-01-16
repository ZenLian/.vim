" General {
    if count(g:my_bundle_groups, 'general')

        " CScope {
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
        " }
    
        " NerdTree {
            let g:NERDTreeWinPos="left"
            let g:NERDTreeShowHidden=0
            let g:NERDTreeIgnore=['\.o$','\~$','\.tags$']
            let g:NERDTreeWinSize=30
            map <F2> :NERDTreeToggle<cr>
            map <leader>nb :NERDTreeFromBookMark<cr>
            map <leader>nf :NERDTreeFind<cr>
        " }
    
        " OmniCppComplete {
            set completeopt=menuone,menu
            let OmniCpp_MayCompleteDot=1   ".后自动补全
            let OmniCpp_MayCompleteArrow=1 "->后自动补全
            let OmniCpp_MayCompleteScope=1 "::后自动补全
            let OmniCpp_NamespaceSearch=1
            let OmniCpp_GlobalScopeSearch=1
            let OmniCpp_ShowAccess=1
            let OmniCpp_ShowPrototypeInAbbr=1 "显示函数参数列表
            let OmniCpp_DefaultNamespaces=["std"]
        " }
    
        " TagList {
            let Tlist_Show_One_File=1
            let Tlist_Exit_OnlyWindow=1
            let Tlist_Use_Right_Window=1
            let Tlist_GainFocus_On_ToggleOpen=1
            map <F3> :TlistToggle<cr>
        " }

        " GitGutter {
            set updatetime=100
        " }

    endif
" }

" UI {
    if count(g:my_bundle_groups, 'ui')
        " vim-airline {
            "let g:airline_section_y = '%{strftime("%H:%M")}'
            let g:airline#extensions#tabline#enabled = 1
            let g:airline#extensions#tabline#buffer_nr_show = 1
            let g:airline#extensions#tabline#left_sep = ' '
            let g:airline#extensions#tabline#left_alt_sep = '|'
            "let g:airline_theme = 'solarized'
            "let g:airline_solarized_bg = 'dark'
        " }
        " solarized {
            let g:solarized_termcolors=256
            let g:solarized_termtrans=1
            let g:solarized_contrast="normal"
            let g:solarized_visibility="normal"
        " }
    endif
" }