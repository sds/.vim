" Store all custom shortcuts here so there is one location to reference

" Fuzzy-finder shortcuts
nnoremap <Space> :CtrlP<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>t :CtrlPTag<CR>
nnoremap <Leader><Space> :CtrlPClearCache<CR>:CtrlP<CR>
nnoremap <Leader>? :FufHelp<CR>

" Begin search using ack
nnoremap <Leader>a :Ack<Space>

" Center cursor vertically
nnoremap <Leader>c :let &scrolloff=999-&scrolloff<CR><CR>

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

nnoremap <Leader>x :close<CR>

" Copy Vim paste register to local system clipboard via Clipper
nnoremap <C-y> :call system('nc localhost 8379', @0)<CR><CR>

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

" GitGutter shortcuts
nnoremap <Leader>gh :ToggleGitGutter<CR>
nnoremap <Leader>gn :GitGutterNextHunk<CR>
nnoremap <Leader>gp :GitGutterPrevHunk<CR>

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
