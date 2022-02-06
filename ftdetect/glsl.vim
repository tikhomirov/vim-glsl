" Language: OpenGL Shading Language
" Maintainer: Sergii Tykhomyrov <sergii@tykhomyrov.net>

" Extensions supported by Khronos reference compiler (with one exception, ".glsl")
" https://github.com/KhronosGroup/glslang
autocmd! BufNewFile,BufRead *.vert,*.tesc,*.tese,*.glsl,*.geom,*.frag,*.comp,*.rgen,*.rmiss,*.rchit,*.rahit,*.rint,*.rcall set filetype=glsl

" vim:set sts=2 sw=2 :
