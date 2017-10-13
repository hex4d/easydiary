scriptencoding utf-8

" if !exists('g:loaded_easydialy')
"   finish
" endif
" let g:loaded_easydialy = 1

let s:save_cpo = &cpo
set cpo&vim

let s:easydialy_directory = "~/Workspace/write/"

function! easydialy#open_page_split()
  " 今日の日付を取得
  let today = localtime()
  let filename = strftime("%Y_%m_%d.md", today)
  let filepath = s:easydialy_directory.filename
  execute 'split' . filepath
endfunction

function! easydialy#open_page_newtab()
  " 今日の日付を取得
  let today = localtime()
  let filename = strftime("%Y_%m_%d.md", today)
  let filepath = s:easydialy_directory.filename
  execute 'tabnew' . filepath
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo