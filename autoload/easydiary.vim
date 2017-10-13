scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

function! easydiary#open_page_split()
  " 今日の日付を取得
  let today = localtime()
  let filename = strftime("%Y_%m_%d.md", today)
  let filepath = g:easydiary_directory.filename
  execute 'split' . filepath
endfunction

function! easydiary#open_page_newtab()
  " 今日の日付を取得
  let today = localtime()
  let filename = strftime("%Y_%m_%d.md", today)
  let filepath = g:easydiary_directory.filename
  execute 'tabnew' . filepath
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
