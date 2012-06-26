setlocal textwidth=78
setlocal spell
setlocal nonumber

augroup markdown_preview
  autocmd!
  autocmd BufWritePost *.markdown :silent !markdown % > %.html &
augroup END
