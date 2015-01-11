let g:ctrlp_map = ''
let g:ctrlp_max_height = 12
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_lazy_update = 100
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|_site\|\.meteor$\|node_modules'
let g:ctrlp_show_hidden = 1

" Utilize faster `ag` utility to find files if it is available
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
    \ --ignore .DS_Store
    \ --ignore .git
    \ --ignore .hg
    \ --ignore .meteor
    \ --ignore .svn
    \ --ignore node_modules
    \ --ignore "**/*.pyc"
    \ -g ""'
endif

" Utilize faster Python-based matcher if Vim was compiled with Python support
if has('python')
  let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
endif
