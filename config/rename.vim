function! MoveFileFunction(newname)
    let a:oldname = expand("%:p")
    exec "saveas " . a:newname
    call delete(a:oldname)
endfunction

command! -nargs=1 Rename call MoveFileFunction(<f-args>)
