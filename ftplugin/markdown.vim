setlocal textwidth=78
setlocal spell
setlocal nonumber

" Don't bother highlighting underscorized italics, as the parser is usually
" wrong and this makes it frustrating when writing posts with underscores in
" code.
autocmd Syntax markdown syn match markdownIgnore "_"
