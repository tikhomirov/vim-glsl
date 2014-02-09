" Language: OpenGL Shading Language
" Maintainer: Sergey Tikhomirov <sergey@tikhomirov.io>

syn include @GLSL syntax/glsl.vim
syn region ShaderScript
      \ start="<script [^>]*type=\('\|\"\)x-shader/x-\(vertex\|fragment\)\('\|\"\)[^>]*>"
      \ keepend
      \ end="</script>"me=s-1
      \ contains=@GLSL,htmlScriptTag,@htmlPreproc
