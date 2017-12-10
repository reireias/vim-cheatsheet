command! -nargs=? -complete=command Cheat call <SID>toggle_cheat_sheet(<q-args>)

function! s:toggle_cheat_sheet(cmd)
  if exists('s:cheatbuf')
    execute 'bd' s:cheatbuf
    unlet s:cheatbuf
  else
    let a:path = expand(g:cheat_sheet_file)
    if filereadable(a:path)
      split
      execute 'view' a:path
      let s:cheatbuf = bufnr('%')
    else
      echo "not exists."
    endif
  endif
endfunction
