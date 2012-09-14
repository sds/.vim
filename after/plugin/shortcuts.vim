" Store all custom shortcuts here so there is one location to reference

" Fuzzy-finder shortcuts
nnoremap <Space> :CtrlP<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>t :CtrlPTag<CR>
nnoremap <Leader><Space> :CtrlPClearCache<CR>:CtrlP<CR>
nnoremap <Leader>j :FufJumpList<CR>
nnoremap <Leader>? :FufHelp<CR>

" Begin search using ack
nnoremap <Leader>a :Ack<Space>

" Center cursor vertically
nnoremap <Leader>c :let &scrolloff=999-&scrolloff<CR>

" Show/hide file tree viewer
nnoremap <Leader>f :NERDTreeToggle<Enter>

" Turn off search highlights until next search
nnoremap <Leader>h :nohlsearch<CR>

" Show/hide line numbers
nnoremap <Leader>l :set number!<CR>

" Toggle paste mode (which disables auto-indenting and line wrapping)
nnoremap <Leader><Leader> :setlocal paste!<CR>

" Intuitive incr/decrement of numbers ('=' so we don't have to use Shift key)
nnoremap = <C-A>
nnoremap - <C-X>

" Quick window splitting
nnoremap <Leader>s <C-W>s
nnoremap <Leader>v <C-W>v

" Enable/disable wrapping when line exceeds width of pane
nnoremap <Leader>w :set wrap!<CR>

nnoremap <Leader>x :close<CR>

" Show/hide hidden characters (newlines, spaces, etc.)
nnoremap <Leader>` :set nolist!<CR>

" Fugitive shortcuts for working with git
nnoremap <Leader>gb :Gblame<Enter>
nnoremap <Leader>gc :Gcommit<Enter>
nnoremap <Leader>gd :Gdiff<Enter>
nnoremap <Leader>ge :Gedit<Enter>
nnoremap <Leader>gg :Ggrep<Space>
nnoremap <Leader>g. :Gcd<Enter>
nnoremap <Leader>gl :Extradite<Enter>
nnoremap <Leader>gm :Gmove<Space>
nnoremap <Leader>gr :Gread<Enter>
nnoremap <Leader>gs :Gstatus<Enter>
nnoremap <Leader>gw :Gwrite<Enter>
nnoremap <Leader>gx :Gremove<Enter>

" Switch between single and double quotes with surround.vim (uses `z marker)
" NOTE: we explicitly set a temporary marker (z) and restore
"       it after the surround operation because otherwise the
"       surround plugin will move the cursor to the opening
"       quote of the operand after the operation, instead of
"       keeping the cursor where it was before the operation
nmap <Leader>' mzcs"'`z
nmap <Leader>" mzcs'"`z
