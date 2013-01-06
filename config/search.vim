set incsearch  " Start searching from current cursor postion
set hlsearch   " Highlight search results
set ignorecase " Make searching case insensitive
set smartcase  " ...unless query has capital letters

" Default all searches to use "magic" regex syntax
" (don't have to escape special characters like (){}+% etc)
nnoremap / /\v
vnoremap / /\v
