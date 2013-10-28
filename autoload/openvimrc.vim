scriptencoding utf-8

if !exists('g:loaded_openvimrc')
    runtime openvimrc.vim
endif

let s:save_cpo = &cpo
set cpo&vim


function! openvimrc#open()
    if line2byte(line("$") + 1) <= 0
        edit $MYVIMRC
        return
    endif

    if &modified == 0
        edit $MYVIMRC
    else
        tabnew $MYVIMRC
    endif
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
