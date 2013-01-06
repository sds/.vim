set shell=/bin/sh " Use Bourne shell for command substitution
set history=10000 " Remember this many commands & searches

" Ask user before
" - Writing to a file that already exists (with :w)
" - Closing a buffer with unsaved changes (with :q)
" - Quitting vim when there any buffers with unsaved changes (with :qa)
set confirm
