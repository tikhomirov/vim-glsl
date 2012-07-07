" Vim syntax file
" Language:	OpenGL Shading Language
" Maintainer:	Sergey Tikhomirov <me@stikhomirov.com>
" URL:
" Last Change:	2012 July 7

if exists("b:current_syntax")
  finish
endif

" Statements
syn keyword   glslConditional      if else
syn keyword   glslRepeat           for while do
syn keyword   glslStatement        discard return break continue

" Comments
syn keyword	  glslTodo             contained TODO FIXME XXX
syn region    glslCommentL         start="//" skip="\\$" end="$" keepend contains=glslTodo
syn region    glslComment          matchgroup=glslCommentStart start="/\*" end="\*/" extend contains=glslTodo

" Preprocessor
syn region    glslPreCondit        start="^\s*#\s*\(if\|ifdef\|ifndef\|else\|elif\|endif\)" skip="\\$" end="$" keepend
syn region    glslDefine           start="^\s*#\s*\(define\|undef\)" skip="\\$" end="$" keepend
syn keyword   glslTokenConcat      ##
syn keyword   glslPredefinedMacro  __LINE__ __FILE__ __VERSION__ GL_ES
syn region    glslPreProc          start="^\s*#\s*\(error\|pragma\|extension\|version\|line\)" skip="\\$" end="$" keepend

" Boolean Constants
syn keyword   glslBoolean         true false

" Integer Numbers
syn match     glslDecimalInt      "\(0\|[1-9]\d*\)"
syn match     glslOctalInt        "0\o\+"
syn match     glslHexInt          "0[xX]\x\+"

" Float Numbers
syn match     glslFloat           "\d\+\.\d\+\([eE][+-]\=\d\+\)\="
syn match     glslFloat           "\d\+\.\([eE][+-]\=\d\+\)\="
syn match     glslFloat           "\.\d\+\([eE][+-]\=\d\+\)\="
syn match     glslFloat           "\d\+[eE][+-]\=\d\+"

hi def link glslConditional       Conditional
hi def link glslRepeat            Repeat
hi def link glslStatement         Statement
hi def link glslTodo              Todo
hi def link glslCommentL          glslComment
hi def link glslCommentStart      glslComment
hi def link glslComment           Comment
hi def link glslPreCondit         PreCondit
hi def link glslDefine            Define
hi def link glslTokenConcat       glslPreProc
hi def link glslPredefinedMacro   Macro
hi def link glslPreProc           PreProc
hi def link glslBoolean           Boolean
hi def link glslDecimalInt        glslNumber
hi def link glslOctalInt          glslNumber
hi def link glslHexInt            glslNumber
hi def link glslNumber            Number
hi def link glslFloat             Float

let b:current_syntax = "glsl"

" vim:set sw=2:
