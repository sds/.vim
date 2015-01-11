" Store all custom shortcuts here so there is one location to reference

" Quick window navigation
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" Quick tab window creation/navigation
nnoremap <C-t> :tabnew<CR>
nnoremap <C-p> :tabprev<CR>
nnoremap <C-n> :tabnext<CR>

" Easily escape from INSERT mode
inoremap jj <Esc>

" Fuzzy-finder shortcuts
nnoremap <Space> :CtrlP<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>t :CtrlPTag<CR>
nnoremap <Leader><Space> :CtrlPClearCache<CR>:CtrlP<CR>
nnoremap <Leader>? :FufHelp<CR>

" Open alternate/associated files (e.g. headers or specs)
nnoremap <Leader>aa :A<CR><CR>
nnoremap <Leader>a- :AS<CR><CR>
nnoremap <Leader>a\ :AV<CR><CR>
nnoremap <Leader>at :AT<CR><CR>

" Center cursor vertically
nnoremap <Leader>c :let &scrolloff=999-&scrolloff<CR><CR>

" Easily toggle display of location and quickfix lists
nnoremap <silent> <Leader>e :call ToggleList("Location List", 'l')<CR><CR>
nnoremap <silent> <Leader>q :call ToggleList("Quickfix List", 'c')<CR><CR>

" Show/hide file tree viewer
nnoremap <Leader>f :NERDTreeToggle<CR><CR>

" Turn off search highlights until next search
nnoremap <Leader>h :nohlsearch<CR><CR>

" Show/hide line numbers
nnoremap <Leader>l :set number!<CR><CR>

" Toggle paste mode (which disables auto-indenting and line wrapping)
nnoremap <Leader>p :setlocal paste!<CR><CR>

" Intuitive incr/decrement of numbers ('=' so we don't have to use Shift key)
nnoremap = <C-A>
nnoremap - <C-X>

" Quick window splitting
nnoremap <C-_> <C-W>s
nnoremap <C-\> <C-W>v

" Enable/disable wrapping when line exceeds width of pane
nnoremap <Leader>w :set wrap!<CR><CR>

nnoremap <Leader>x :quit<CR>

" Copy Vim paste register to local system clipboard via Clipper
nnoremap <C-y> :call system('nc localhost 8377', @0)<CR><CR>

" Show/hide hidden characters (newlines, spaces, etc.)
nnoremap <Leader>` :set nolist!<CR><CR>

" Fugitive shortcuts for working with git
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>ge :Gedit<CR>
nnoremap <Leader>gg :Ggrep<Space>
nnoremap <Leader>g. :Gcd<CR>
nnoremap <Leader>gl :Extradite<CR>
nnoremap <Leader>gm :Gmove<Space>
nnoremap <Leader>gr :Gread<CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gx :Gremove<CR>

" Convert Ruby 1.8 hashes to 1.9 style
nmap <Leader>rh :%s/\v(:)@<!:([a-zA-Z_][a-zA-Z_0-9]*)(\s*)\=\>\s?/\2:\3/gc<CR>
vmap <Leader>rh :s/\v(:)@<!:([a-zA-Z_][a-zA-Z_0-9]*)(\s*)\=\>\s?/\2:\3/gc<CR>

" Switch between single and double quotes with surround.vim (uses `z marker)
" NOTE: we explicitly set a temporary marker (z) and restore
"       it after the surround operation because otherwise the
"       surround plugin will move the cursor to the opening
"       quote of the operand after the operation, instead of
"       keeping the cursor where it was before the operation
nmap <Leader>' mzcs"'`z
nmap <Leader>" mzcs'"`z

" Be consistent with C and D which reach to the end of line
nnoremap Y y$
