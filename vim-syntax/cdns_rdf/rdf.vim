" Vim syntax file
" Language: Register Description Format
" Maintainer: Stephen Engelman
" Latest Revision: 16 October 2016

if exists("b:current_syntax")
  finish
endif

" Register Definition
syn keyword registerBlockToken REG reg nextgroup=identName
syn keyword regPropertyToken DESC desc ACCESS access PREAMBLE preamble POSTAMBLE postamble RESET reset REGWIDTH regwidth
syn keyword regAmbleToken rw RW ro RO wo WO

" Field Definition
syn keyword fieldBlockToken FIELD field nextgroup=identName
syn keyword fieldPropertyToken DESC desc ACCESS access VALUE value

" Register Bank Definition
syn keyword registerBankBlockToken REGISTER_BANK register_bank nextgroup=identName
syn keyword registerBankPropertyToken BUSPORTWIDTH busportwidth BUSPORTNAME busportname size SIZE RESERVED reserved

syn match identName '\w\+'
syn match decNumber '\d\+'
syn match hexNumber '0[xX][0-9a-fA-F]\+'
syn region rdfString start='"' end='"' contained
syn region rdfString start='"""' end='"""' contained
syn match descProperty '\s*=\s*' nextgroup=rdfString 
syn region bitRange start='\[' end='\]' contains=decNumber
syn keyword rdfTodo contained TODO FIXME XXX NOTE
syn match rdfComment "//.*$" contains=rdfTodo
syn match rdfInclude "INCLUDE.*$"

" Colorization
let b:current_syntax = "rdf"

hi def link identName              PreProc
hi def link rdfTodo                Todo
hi def link rdfComment             Comment
hi def link rdfString              Constant
hi def link decNumber              Constant
hi def link hexNumber              Constant
hi def link bitRange               Special
hi def link bitRangeBracket        Special
hi def link regAmbleToken          Constant
hi def link registerBlockToken     Type
hi def link regPropertyToken       Statement
hi def link fieldPropertyToken     Statement
hi def link registerBankPropertyToken Statement
hi def link fieldBlockToken        Statement
hi def link registerBankBlockToken Statement
hi def link rdfInclude             PreProc
