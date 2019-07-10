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

nmap <silent><Space>dd :call easydiary#open_page_split('day')<CR>
nmap <silent><Space>dm :call easydiary#open_page_split('month')<CR>

let &cpo = s:save_cpo
unlet s:save_cpo
