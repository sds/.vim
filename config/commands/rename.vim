" Rename a file from within Vim.
"
" Usage:
"
" :Rename path_to_file/new_file_name.ext

command! -nargs=1 -complete=file Rename execute MoveFileFunction(<f-args>)

function! MoveFileFunction(newname)
    let a:oldname = expand("%:p")
    exec "saveas " . a:newname
    call delete(a:oldname)
endfunction
