" vim-airline companion theme of nova
" (https://github.com/zanglg/nova.vim)

let g:airline#themes#nova#palette = {}

function! airline#themes#nova#refresh()
    let s:normal1 = airline#themes#get_highlight('Normal1')
    let s:normal2 = airline#themes#get_highlight('Normal2')
    let s:normal3 = airline#themes#get_highlight('Normal3')
    let g:airline#themes#nova#palette.normal = airline#themes#generate_color_map(s:normal1, s:normal2, s:normal3)

    let s:insert1 = airline#themes#get_highlight('Insert1')
    let s:insert2 = airline#themes#get_highlight('Insert2')
    let s:insert3 = airline#themes#get_highlight('Insert3')
    let g:airline#themes#nova#palette.insert = airline#themes#generate_color_map(s:insert1, s:insert2, s:insert3)

    let s:replace1 = airline#themes#get_highlight('Replace1')
    let s:replace2 = airline#themes#get_highlight('Replace2')
    let s:replace3 = airline#themes#get_highlight('Replace3')
    let g:airline#themes#nova#palette.replace = airline#themes#generate_color_map(s:replace1, s:replace2, s:replace3)

    let s:visual1 = airline#themes#get_highlight('Visual1')
    let s:visual2 = airline#themes#get_highlight('Visual2')
    let s:visual3 = airline#themes#get_highlight('Visual3')
    let g:airline#themes#nova#palette.visual = airline#themes#generate_color_map(s:visual1, s:visual2, s:visual3)

    let s:inactive1 = airline#themes#get_highlight('Inactive1')
    let s:inactive2 = airline#themes#get_highlight('Inactive2')
    let s:inactive3 = airline#themes#get_highlight('Inactive3')
    let g:airline#themes#nova#palette.inactive = airline#themes#generate_color_map(s:inactive1, s:inactive2, s:inactive3)
endfunction

call airline#themes#nova#refresh()
