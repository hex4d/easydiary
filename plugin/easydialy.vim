scriptencoding utf-8

if exists('g:loaded_easydialy')
  finish
endif
let g:loaded_easydialy = 1

let s:save_cpo = &cpo
set cpo&vim

if !exists('g:easydialy_directory')
  let g:easydialy_directory = "~/"
end

nmap <Space>dt :call easydialy#open_page_split()<CR>
" nmap <Space>dt :call easydialy#open_page_newtab()<CR>

let &cpo = s:save_cpo
unlet s:save_cpo

