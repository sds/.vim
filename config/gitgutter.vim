" Always show SignColumn; this prevents flicker from occuring on save
autocmd BufWinEnter * call SetDummySign()
function! SetDummySign()
  sign define dummy
  execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
endfunction
