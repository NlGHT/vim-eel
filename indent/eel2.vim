" Vim indent file
" Language: EEL2
" Maintainer: Night, see https://github.com/NlGHT
" Last Change: 2020 Feb 14
" Acknowledgement: Inspired by Vim-Go (https://github.com/fatih/vim-go)

if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

setlocal nolisp
setlocal autoindent
setlocal indentexpr=EELIndent(v:lnum)
setlocal indentkeys+=<:>,0=},0=)

if exists("*EELIndent")
  finish
endif

" Don't spam the user when Vim is started in Vi compatibility mode
let s:cpo_save = &cpo
set cpo&vim

function! EELIndent(lnum) abort
  let prevlnum = prevnonblank(a:lnum-1)
  if prevlnum == 0
    " Top of file
    return 0
  endif

  " Grab the previous and current line, stripping comments.
  let prevl = substitute(getline(prevlnum), '//.*$', '', '')
  let thisl = substitute(getline(a:lnum), '//.*$', '', '')
  let previ = indent(prevlnum)

  let ind = previ

  if prevl =~ '(\s*$'
    " Previous line opened a block
    let ind += shiftwidth()
  endif

  if thisl =~ '^\s*)'
    " This line closed a block
    let ind -= shiftwidth()
  endif

  return ind
endfunction

" Restore Vi compatibility settings
let &cpo = s:cpo_save
unlet s:cpo_save

" vim: sw=2 ts=2 et
