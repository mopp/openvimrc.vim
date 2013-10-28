if exists('g:loaded_openvimrc')
  finish
endif
let g:loaded_openvimrc = 1

let s:save_cpo = &cpo
set cpo&vim


nnoremap <silent> <Plug>(openvimrc-open) :<C-u>call openvimrc#open()<CR>


let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set et:
