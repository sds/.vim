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
