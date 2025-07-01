" Vim syntax file
" Language:	TTM
" Maintainer:	Eduardo Costa <m4c0@users.github.com>
" Last Change:	2025 Jul 01
" Remark:	None

if exists("b:current_syntax")
  finish
endif

syntax case ignore

syntax keyword ttmPredefs ds ss

syntax match ttmLineContinue /$/ contained
syntax match ttmParam /;/ contained

syntax region ttmString start=/</ skip=/@>/ end=/>/ contains=ALL
syntax region ttmActiveC matchgroup=ttmActive start=/#</ skip=/@>/ matchgroup=ttmActive end=/>/ contains=ALL
syntax region ttmPassiveC matchgroup=ttmPassive start=/##</ skip=/@>/ matchgroup=ttmPassive end=/>/ contains=ALL


highlight link ttmActive  Statement
highlight link ttmParam   Special
highlight link ttmPassive PreProc
highlight link ttmPredefs Identifier
highlight link ttmString  String

let b:current_syntax="ttm"
