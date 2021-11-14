" Use comma for leader key
let mapleader=','

" Keep old leader key for pairing
map \ ,

set shell=/bin/sh " Use Bourne shell for command substitution
set history=10000 " Remember this many commands & searches

" Syntax highlighting is sometimes slow (100% CPU) with the "old" engine.
" Using the new NFA-based engine avoids this issue.
set regexpengine=2
