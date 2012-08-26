" Detect background changes to file
set autoread

" Switch buffers without saving
set hidden

" Autodetect the filetype when renaming a file.
" Annoyingly, most Vim plugins that do filetype detection don't run subscribe to
" the buffer rename event (BufFilePost), so we have to execute the BufReadPost
" autocommand, which is where most filetype detectors get run.
autocmd BufFilePost *.* doautocmd BufReadPost
