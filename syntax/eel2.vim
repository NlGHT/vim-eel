" Language: EEL2
" Maintainer: Tristan Crawford and Night (NlGHT)
" Latest Revision: 2020-07-21

if exists('b:current_syntax')
    finish
endif

syn keyword eel2Keyword function local instance this
syn keyword eel2Constant reaper
syn keyword eelRepeat while loop

" Match all functions (including user made ones)
" Can start with underscore (_) but not with number, however
" it can have a number in it.
syn match eel2Function /\v<[a-zA-Z_][[:alnum:]_]*\ze(\s*\()/

syn match eel2Operator "\v[=|&~?:*/^%+-]"
syn match eel2Operator "\v[|&~?:*/^%+-]{1}\="
syn match eel2Operator "\v\={2,3}"
syn match eel2Operator "\v!\={1,2}"
syn match eel2Operator "\v[<>]"

syn match eel2Number "\v<\d+\.?\d*"
syn match eel2Number "\v<(0x|\$x)[0-F0-f]+>"

syn region eel2String start=/\v"/ skip=/\v\\./ end=/\v"/

syn keyword eel2Todo contained TODO FIXME XXX NOTE
syn match eel2Comment "\v//.*$" contains=eel2Todo
syn region eel2Comment start=/\v\/\*/ end=/\v\*\// contains=eel2Todo

syn match eel2Include display "^\s*@import.*"

let b:current_syntax = 'eel2'

hi def link eel2Function Function
hi def link eel2Include Include
hi def link eelRepeat Repeat
hi def link eel2Keyword Keyword
hi def link eel2Constant Constant
hi def link eel2Operator Operator
hi def link eel2Todo Todo
hi def link eel2Comment Comment
hi def link eel2Number Number
hi def link eel2String String

" vim: nowrap:smc=0
