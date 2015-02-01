" Customize color scheme (actual colorscheme is set in after/plugin/color.vim)
let g:solarized_termcolors=256
set background=dark

" Ensure 256 colours
set t_Co=256

" Disable Background Color Erase (BCE) so that color schemes
" work properly when Vim is used inside tmux and GNU screen.
if &term =~ '256color'
  set t_ut=
endif

" Support 'bracketed-paste' mode, allowing pasting large chunks of text without
" having to manually activate PASTE mode.
if &term =~ "xterm.*"
  " Double-escape the escape sequence if we're in a tmux session
  function! WrapForTmux(s)
    if !exists('$TMUX')
      return a:s
    endif

    let tmux_start = "\<Esc>Ptmux;"
    let tmux_end = "\<Esc>\\"

    return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
  endfunction

  let &t_SI .= WrapForTmux("\<Esc>[?2004h")
  let &t_EI .= WrapForTmux("\<Esc>[?2004l")

  function XTermPasteBegin(ret)
    set pastetoggle=<Esc>[201~
    set paste
    return a:ret
  endfunction

  map <expr> <Esc>[200~ XTermPasteBegin("i")
  imap <expr> <Esc>[200~ XTermPasteBegin("")
  cmap <Esc>[200~ <nop>
  cmap <Esc>[201~ <nop>
endif

" Clear screen when leaving Vim
autocmd VimLeave * !clear
