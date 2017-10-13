scriptencoding utf-8

if exists('g:loaded_easydiary')
  finish
endif
let g:loaded_easydiary = 1

let s:save_cpo = &cpo
set cpo&vim

if !exists('g:easydiary_directory')
  let g:easydiary_directory = "~/"
end

nmap <Space>dt :call easydiary#open_page_split()<CR>
" nmap <Space>dt :call easydiary#open_page_newtab()<CR>

let &cpo = s:save_cpo
unlet s:save_cpo

