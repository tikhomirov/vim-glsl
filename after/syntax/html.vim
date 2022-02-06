" Language: OpenGL Shading Language
" Maintainer: Sergii Tykhomyrov <sergii@tykhomyrov.net>

syn include @GLSL syntax/glsl.vim
syn region ShaderScript
      \ start="<script [^>]*type=\('\|\"\)x-shader/x-\(vertex\|fragment\)\('\|\"\)[^>]*>"
      \ keepend
      \ containedin=javaScript
      \ contained
      \ end="</script>"me=s-1
      \ contains=@GLSL,htmlScriptTag,@htmlPreproc
