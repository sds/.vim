set nobackup    " No backup files
set writebackup " Only backup file while editing
set noswapfile  " No swap files

" Remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Handle common typo for saving
command! W w

" Save file with superuser privileges
command! WW w !sudo tee % > /dev/null
