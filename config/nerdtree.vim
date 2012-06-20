let NERDTreeWinPos = 'right'

" Close NERDTree automatically if only item left
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif"
