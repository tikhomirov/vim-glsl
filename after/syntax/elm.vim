" Language: OpenGL Shading Language
" Maintainer: Sergey Tikhomirov <sergey@tikhomirov.io>

syn include @GLSL syntax/glsl.vim
syn region GLSL
      \ start="\[glsl|"
      \ keepend
      \ contained
      \ end="|\]"
      \ contains=@GLSL

