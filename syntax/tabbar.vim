" File:        tabbar.vim
" Description: Tabbar syntax settings

scriptencoding utf-8

if exists("b:current_syntax")
    finish
endif

if has("syntax")
    syn clear
    syn match Tb_Number             '\[\zs\d*[ :]' containedin=ALL
    syn match Tb_Normal             '\[\d* [^\]]*\]'
    syn match Tb_Changed            '\[\d* [^\]]*\]+'
    syn match Tb_VisibleNormal      '\[\d*:[^\]]*\]'
    syn match Tb_VisibleChanged     '\[\d*:[^\]]*\]+'

    highlight def link Tb_Number         LineNr 
    highlight def link Tb_Normal         Comment
    highlight def link Tb_Changed        String
    highlight def link Tb_VisibleNormal  Comment
    highlight def link Tb_VisibleChanged String


    highlight Tb_Shade guifg=NONE gui=bold guibg=grey30

    call matchadd('Tb_Shade', '\[\d*:[^\]]*\]+\=', 0)
    autocmd BufEnter,BufLeave,CursorMoved <buffer> 3match NONE
endif         

let b:current_syntax = "tabbar"
