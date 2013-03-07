" Need to run on opening buffer so that commands run after plugin has
" initialized. This allows us to override plugin highlight colours.
autocmd BufWinEnter * call InitGitGutter()
function! InitGitGutter()
  " Always show SignColumn; this prevents flicker from occuring on save
  sign define dummy
  execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')

  highlight! link SignColumn LineNr

  " Fix background on sign colours to match line number column
  highlight! link lineAdded DiffAdd
  highlight! link lineModified DiffChange
  highlight! link lineRemoved DiffDelete
endfunction
