syntax on

set shortmess+=I " Don't show Vim credits on startup

set colorcolumn=+1 " Show textwidth limit
set cursorline     " Highlight currently focused line
set number         " Show line numbers
set laststatus=2   " Always show status line

set wildmenu       " Tab-completion menu for command mode
set wildignore+=*.o,*.pyc,*/tmp/*,*.swp,*.zip
set wildmode=list:longest,full

" Vertically center cursor in middle of buffer
set scrolloff=999

" Allow interaction using mouse
set mouse=a

"Characters to display when showing invisible characters
set listchars=eol:¶,tab:⇥\ ,trail:·

" Ensure 256 colours
set t_Co=256

" Clear screen when leaving vim
autocmd VimLeave * !clear
