command! -nargs=? -complete=command Cheat call <SID>open_cheat_sheet(<q-args>)

function! s:open_cheat_sheet(cmd)
  let a:path = expand(g:cheat_sheet_file)
  if filereadable(a:path)
    split
    execute 'view' a:path
  else
    echo "not exists."
  endif
endfunction
