scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

function! easydiary#open_page_split(opt)
  " ' 今日の日付を取得
  let s:today = localtime()
  let s:filename = ''
  if a:opt == 'day'
    let s:filename = strftime('%Y_%m_%d.md', s:today)
  elseif a:opt == 'month'
    let s:filename = strftime('%Y_%m.md', s:today)
  endif
  let s:filepath = g:easydiary_directory.s:filename
  execute 'split' . s:filepath
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
