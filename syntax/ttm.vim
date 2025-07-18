" Vim syntax file
" Language:	TTM
" Maintainer:	Eduardo Costa <m4c0@users.github.com>
" Last Change:	2025 Jul 01
" Remark:	None

if exists("b:current_syntax") && b:current_syntax == "ttm"
  finish
endif

syntax case ignore

syntax match ttmEscapedChar /@./ contained

syntax match ttmPredefs /ds;/me=e-1 contained
syntax match ttmPredefs /ps;/me=e-1 contained
syntax match ttmPredefs /ss;/me=e-1 contained

syntax match ttmLineContinue /$/ contained
syntax match ttmParam /;/ contained

syntax region ttmString start=/</ skip=/@>/ end=/>/ contained contains=@ttmBlocks
syntax region ttmActive matchgroup=ttmActive start=/#</ skip=/@>/ end=/>/ contains=@ttmBlocks,ttmParam,ttmPredefs
syntax region ttmPassive matchgroup=ttmPassive start=/##</ skip=/@>/ end=/>/ contains=@ttmBlocks,ttmParam,ttmPredefs

syntax cluster ttmBlocks contains=ttmEscapedChar,ttmString,ttmActive,ttmPassive

highlight link ttmActive      Statement
highlight link ttmEscapedChar SpecialChar
highlight link ttmParam       Special
highlight link ttmPassive     PreProc
highlight link ttmPredefs     Identifier
highlight link ttmString      String

let b:current_syntax="ttm"
