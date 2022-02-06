" Language: OpenGL Shading Language
" Maintainer: Sergii Tykhomyrov <sergii@tykhomyrov.net>

syn include @GLSL syntax/glsl.vim
syn region GLSL
      \ start="\[glsl|"
      \ keepend
      \ contained
      \ end="|\]"
      \ contains=@GLSL

