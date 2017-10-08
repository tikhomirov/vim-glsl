" Language: Spectra Shading Language
" Maintainer: Sergey Tikhomirov <sergey@tikhomirov.io>
" Maintainer: Dimitri Sabadie <dimitri.sabadie@gmail.com>

" Extensions supported by Khronos reference compiler (with one exception, ".chdr")
" https://github.com/KhronosGroup/glslang
autocmd! BufNewFile,BufRead *.chdr set filetype=cheddar

" vim:set sts=2 sw=2 :
