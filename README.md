# vim-glsl

Vim syntax highlighting for OpenGL Shading Language

GLSL synatx highlighting is supported for:

- files with extensions supported by [Khronos reference compiler](https://github.com/KhronosGroup/glslang): `.vert`, `.tesc`, `.tese`, `.geom`, `.frag`, and `.comp`
- files with `.glsl` extension
- HTML `<script>` tags with `type` set to `x-shader-vertex` or `x-shader-fragment`

If you need support highlighting in files with other extensions (e.g. `.vs` and `.fs`) you can add it using [autocommand](http://vimdoc.sourceforge.net/htmldoc/autocmd.html#:autocmd):

```viml
" in your .vimrc (_vimrc for Windows)
autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl
```

or using [modeline](http://vimdoc.sourceforge.net/htmldoc/options.html#modeline) in your shader files:

```glsl
// vim: set ft=glsl:
```

## Supported GLSL Versions

- OpenGL Shading Language: all versions from 1.10 to 4.50
- OpenGL ES Shading Language: versions 1.00 and 3.00

## Installation

#### Using [Vundle](https://github.com/gmarik/vundle)

Add to your `vimrc`:

```viml
Plugin 'tikhomirov/vim-glsl'
```

Then reload your `vimrc` and run `:PluginInstall`.

#### Using [Pathogen](https://github.com/tpope/vim-pathogen)

```sh
$ cd ~/.vim/bundle
$ git clone https://github.com/tikhomirov/vim-glsl
```

Then run `:Helptags` to generate help tags.

#### As part of [vim-polyglot](https://github.com/sheerun/vim-polyglot)

This plugin contributes to [vim-polyglot](https://github.com/sheerun/vim-polyglot) language pack. Please refer to its [installation instructions](https://github.com/sheerun/vim-polyglot#installation) for more details.

#### Manual

Copy all files to your `$HOME/.vim` (`$HOME\vimfiles\` on Windows) directory.
