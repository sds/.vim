" Don't show --INSERT-- line below status bar, since it's redundant
set noshowmode

let g:lightline = {
  \   'colorscheme': 'powerline',
  \   'active': {
  \     'left': [
  \       [ 'mode', 'paste' ],
  \       [ 'readonly', 'filename', 'modified' ]
  \     ],
  \     'right': [
  \       [ 'lineinfo' ],
  \       [ 'percent' ],
  \       [ 'filetype' ]
  \     ]
  \   },
  \   'component': {
  \     'modified': '%#ModifiedColor#%{MyModified()}',
  \   }
  \ }

function! MyModified()
  let map = { 'V': 'n', "\<C-v>": 'n', 's': 'n', 'v': 'n', "\<C-s>": 'n', 'c': 'n', 'R': 'n'}
  let mode = get(map, mode()[0], mode()[0])
  let bgcolor = {'n': [240, '#585858'], 'i': [31, '#0087af']}
  exe printf('hi ModifiedColor ctermfg=196 ctermbg=%d guifg=#ff0000 guibg=%s term=bold cterm=bold',
        \ bgcolor[mode][0], bgcolor[mode][1])
  return &modified ? '+' : &modifiable ? '' : '-'
endfunction
