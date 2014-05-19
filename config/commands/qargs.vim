" Populate the :args list with the filenames currently in the quickfix window.
" This is useful when doing a search/replace across multiple files.
"
" Usage:
"
" :Qargs
"
" Example:
"
" :Ack some-search-term                     # Fill Quickfix list with files
" :Qargs                                    # Store files in :args list
" :argdo %s/some-search-term/new-term/g     # Run search/replace on all files

command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()

function! QuickfixFilenames()
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction

" Run the specified substitution command on all the files in the quickfix list
" (mnemonic: "Ack substitute").
"
" Specifically, the sequence:
"
"   :Ack foo
"   :Acks /foo/bar/
"
" is equivalent to:
"
"   :Ack foo
"   :Qargs
"   :argdo %s/foo/bar/ge | update
"
" (Note: there's nothing specific to Ack in this function; it's just named this
" way for mnemonics, as it will most often be preceded by an :Ack invocation.)
function! Acks(command)
  if match(a:command, '\v^/.+/.*/$') == -1 " crude sanity check
    throw "Expected a substitution expression (/foo/bar/); got: " . a:command
  endif

  let l:filenames = QuickfixFilenames()
  if l:filenames == ''
    throw 'Quickfix filenames must be present, but there are none'
  endif

  execute 'args' l:filenames
  execute 'argdo' '%s' . a:command . 'ge | update'
endfunction
