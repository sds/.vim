" Customize how the interface is displayed and interacted with.

" Enable syntax highlighting
syntax on

" Don't show Vim credits on startup
set shortmess+=I

set colorcolumn=+1 " Show textwidth limit
set cursorline     " Highlight currently focused line
set number         " Show line numbers
set laststatus=2   " Always show status line

set wildmenu       " Tab-completion menu for command mode
set wildignore+=*.o,*.pyc,*/tmp/*,*.swp,*.zip,.git
set wildmode=list:longest,full

" Vertically center cursor in middle of buffer
set scrolloff=999

" Allow interaction using mouse
set mouse=a

" Characters to display when showing invisible characters
set listchars=eol:¶,tab:⇥\ ,trail:·

set foldmethod=indent " Fold based on indent
set foldnestmax=5     " Deepest fold level
set nofoldenable      " Don't fold by default
set foldlevel=1

set incsearch         " Start searching from current cursor postion
set hlsearch          " Highlight search results
set ignorecase        " Make searching case insensitive
set smartcase         " ...unless query has capital letters

set autoindent        " Auto-indent new lines
set smartindent       " Auto-indent at the beginning of code blocks, etc.

if v:version > 703 || v:version == 703 && has('patch541')
  set formatoptions+=j  " Remove comment marker when joining lines
endif

set formatoptions+=o  " Continue comment marker in new lines
set textwidth=80      " Hard-wrap long lines as you type them
set tabstop=8         " Render TABs using this many spaces
set expandtab         " Insert spaces when TAB is pressed
set softtabstop=2     " Tabs are this many spaces
set shiftwidth=2      " Indentation amount for < and > commands
set smarttab          " Add spaces according to shiftwidth, <BS> kills sw spaces

set splitright " Focus new window after vertical splitting
set splitbelow " Focus new window after horizontal splitting

" Enable completion using syntax highlighting definitions
set completefunc=syntaxcomplete#Complete

" Allow backspace to always delete
set backspace=eol,indent,start

" Detect background changes to file
set autoread

" Switch buffers without saving
set hidden

set nobackup    " Don't create backup files
set writebackup " Only backup file while editing
set noswapfile  " No swap files

" Ask user before
" - Writing to a file that already exists (with :w)
" - Closing a buffer with unsaved changes (with :q)
" - Quitting vim when there any buffers with unsaved changes (with :qa)
set confirm

" Remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Handle common typo for saving
command! W w

" Save file with superuser privileges
command! WW w !sudo tee % > /dev/null

" Check for changes before attempting to write to file
autocmd CursorMoved,CursorMovedI,InsertEnter,InsertLeave * checktime

" Autodetect the filetype when renaming a file.
" Annoyingly, most Vim plugins that do filetype detection don't subscribe to the
" buffer rename event (BufFilePost), so we have to execute the BufReadPost
" autocommand, which is where most filetype detectors get run.
autocmd BufFilePost *.* filetype detect
