syntax on

set shortmess+=I

set colorcolumn=+1             " Show textwidth limit
set cursorline                 " highlight currently focused line
set number                     " Show line numbers
set laststatus=2               " Always show status line
set wildignore+=*.o,*.pyc,*/tmp/*,*.swp,*.zip
set wildmenu                   " Tab-completion menu for command mode
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
