" Set settings to default values.
if !exists('g:cheatsheet#vsplit')
  let g:cheatsheet#vsplit = 0
endif

if !exists('g:cheatsheet#float_window')
  let g:cheatsheet#float_window = 0
endif

command! -nargs=? -complete=command Cheat call <SID>toggle_cheat_sheet(<q-args>)

function! s:toggle_cheat_sheet(cmd)
  if exists('s:cheatbuf')
    call s:close_cheat_sheet(s:cheatbuf)
    unlet s:cheatbuf
  else
    if g:cheatsheet#float_window == 0
      let s:cheatbuf = s:open_cheat_sheet()
    else
      let s:cheatbuf = s:open_cheat_sheet_float()
    endif
  endif
endfunction

function! s:open_cheat_sheet() abort
  let l:path = expand(g:cheatsheet#cheat_file)

  if !filereadable(l:path)
    echo 'not exists.'
    return
  endif

  let l:split_command = ':sp'
  if g:cheatsheet#vsplit != 0
    let l:split_command = ':vs'
  endif
  execute l:split_command
  execute 'view' l:path
  return bufnr('%')
endfunction

function! s:open_cheat_sheet_float() abort
  let buf = nvim_create_buf(v:false, v:true)
  let width = winwidth(0) * 80 / 100
  let height = winheight(0) * 90 / 100
  " can move in float window?
  let focusable = v:true
  " editor or win or cursor
  let relative = 'win'
  " base position
  let anchor = 'NW'
  " offset
  let row = 1
  let col = winwidth(0) * 10 / 100
  let opts = {
        \ 'relative': relative,
        \ 'anchor': anchor,
        \ 'height': height,
        \ 'width': width,
        \ 'row': row,
        \ 'col': col
        \ }
  let winid = nvim_open_win(buf, v:true, opts)
  let l:path = expand(g:cheatsheet#cheat_file)
  execute 'view' l:path
  " q = :Cheat
  nnoremap <buffer> <silent> q :<C-u>Cheat<CR>
  return bufnr('%')
endfunction

function! s:close_cheat_sheet(cheatbuf) abort
  execute 'bd' a:cheatbuf
endfunction
