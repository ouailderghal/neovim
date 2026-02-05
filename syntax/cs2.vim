if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword cs2Command bind unbind alias toggle

" Booleans and Numbers
syn keyword cs2Boolean true false
syn match cs2Number "\<\d\+\(\.\d\+\)\?\>"

" Comments
syn match cs2Comment "//.*$"

" Strings (Commands inside quotes)
syn region cs2String start='"' end='"' contains=cs2Command

" Highlight Links
hi def link cs2Command Statement
hi def link cs2Comment Comment
hi def link cs2String String
hi def link cs2Boolean Boolean
hi def link cs2Number Number

let b:current_syntax = "cs2"
