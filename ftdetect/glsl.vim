" Language: OpenGL Shading Language
" Maintainer: Sergey Tikhomirov <sergey@tikhomirov.io>

" Extensions supported by Khronos reference compiler (with one exception, ".glsl")
" https://github.com/KhronosGroup/glslang
autocmd! BufNewFile,BufRead *.vert,*.tesc,*.tese,*.glsl,*.geom,*.frag,*.comp set filetype=glsl

" vim:set sts=2 sw=2 :
