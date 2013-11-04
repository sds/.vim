" Always add any detected errors into the location list
let g:syntastic_always_populate_loc_list = 1

" Don't auto-open it when errors/warnings are detected, but auto-close when no
" more errors/warnings are detected.
let g:syntastic_auto_loc_list = 2

" Highlight syntax errors where possible
let g:syntastic_enable_highlighting = 1

" Show this many errors/warnings at a time in the location list
let g:syntastic_loc_list_height = 5

" Show warnings as well as errors
let g:syntastic_quiet_warnings = 0

" Don't run checkers when saving and quitting--only on saving
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '⚠'
let g:syntastic_style_warning_symbol = '⚠'

let g:syntastic_html_checkers = [] " Disable syntax checking for HTML files
let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_scss_checkers = ['scss_lint']

" Highlight the sign column same colour as the background
autocmd BufWinEnter * call InitGutter()
function! InitGutter()
  highlight! link SignColumn Normal
endfunction
