" Customize color scheme (actual colorscheme is set in after/plugin/color.vim)
let g:solarized_termcolors=256
set background=dark

" Disable Background Color Erase (BCE) so that color schemes
" work properly when Vim is used inside tmux and GNU screen.
if &term =~ '256color'
  set t_ut=
endif
