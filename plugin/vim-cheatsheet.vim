command! -nargs=? -complete=command Cheat call <SID>toggle_cheat_sheet(<q-args>)

function! s:toggle_cheat_sheet(cmd) abort
  if exists('s:cheatbuf')
    call s:close_cheat_sheet(s:cheatbuf)
    unlet s:cheatbuf
  else
    let s:cheatbuf = s:open_cheat_sheet()
  endif
endfunction

function! s:open_cheat_sheet() abort
  let l:path = expand(g:cheatsheet#cheat_file)

  if !filereadable(l:path)
    echo "not exists."
    return
  endif

  split
  execute 'view' l:path
  return bufnr('%')
endfunction

function! s:close_cheat_sheet(cheatbuf) abort
  execute 'bd' a:cheatbuf
endfunction
