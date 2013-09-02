" Vim syntax file
" Language:     OpenGL Shading Language
" Maintainer:   Sergey Tikhomirov <me@stikhomirov.com>
" Last Change:  2012 July 10

if exists("b:current_syntax")
  finish
endif

" Statements
syn keyword   glslConditional   if else
syn keyword   glslRepeat        for while do
syn keyword   glslStatement     discard return break continue

" Comments
syn keyword   glslTodo      contained TODO FIXME XXX
syn region    glslCommentL  start="//" skip="\\$" end="$" keepend contains=glslTodo
syn region    glslComment   matchgroup=glslCommentStart start="/\*" end="\*/" extend contains=glslTodo

" Preprocessor
syn region    glslPreCondit         start="^\s*#\s*\(if\|ifdef\|ifndef\|else\|elif\|endif\)" skip="\\$" end="$" keepend
syn region    glslDefine            start="^\s*#\s*\(define\|undef\)" skip="\\$" end="$" keepend
syn keyword   glslTokenConcat       ##
syn keyword   glslPredefinedMacro   __LINE__ __FILE__ __VERSION__ GL_ES
syn region    glslPreProc           start="^\s*#\s*\(error\|pragma\|extension\|version\|line\)" skip="\\$" end="$" keepend

" Boolean Constants
syn keyword   glslBoolean true false

" Integer Numbers
syn match     glslDecimalInt display "\(0\|[1-9]\d*\)"
syn match     glslOctalInt   display "0\o\+"
syn match     glslHexInt     display "0[xX]\x\+"

" Float Numbers
syn match     glslFloat display "\d\+\.\([eE][+-]\=\d\+\)\="
syn match     glslFloat display "\.\d\+\([eE][+-]\=\d\+\)\="
syn match     glslFloat display "\d\+[eE][+-]\=\d\+"
syn match     glslFloat display "\d\+\.\d\+\([eE][+-]\=\d\+\)\="

" Swizzles
syn match     glslSwizzle display /\.[xyzw]\{1,4\}\>/
syn match     glslSwizzle display /\.[rgba]\{1,4\}\>/
syn match     glslSwizzle display /\.[stpq]\{1,4\}\>/

" Types
syn keyword   glslStructure   struct
syn keyword   glslType  atomic_uint bool bvec2 bvec3 bvec4 dmat2 dmat2x2 dmat2x3
syn keyword   glslType  dmat2x4 dmat3 dmat3x2 dmat3x3 dmat3x4 dmat4 dmat4x2 dmat4x3
syn keyword   glslType  dmat4x4 double dvec2 dvec3 dvec4 float iimage1D iimage1DArray
syn keyword   glslType  iimage2D iimage2DArray iimage2DMS iimage2DMSArray iimage2DRect
syn keyword   glslType  iimage3D iimageBuffer iimageCube iimageCubeArray image1D
syn keyword   glslType  image1DArray image2D image2DArray image2DMS image2DMSArray
syn keyword   glslType  image2DRect image3D imageBuffer imageCube imageCubeArray int
syn keyword   glslType  isampler1D isampler1DArray isampler2D isampler2DArray
syn keyword   glslType  isampler2DMS isampler2DMSArray isampler2DRect isampler3D
syn keyword   glslType  isamplerBuffer isamplerCube isamplerCubeArray ivec2 ivec3
syn keyword   glslType  ivec4 mat2 mat2x2 mat2x3 mat2x4 mat3 mat3x2 mat3x3 mat3x4
syn keyword   glslType  mat4 mat4x2 mat4x3 mat4x4 sampler1D sampler1DArray
syn keyword   glslType  sampler1DArrayShadow sampler1DShadow sampler2D sampler2DArray
syn keyword   glslType  sampler2DArrayShadow sampler2DMS sampler2DMSArray
syn keyword   glslType  sampler2DMSArray sampler2DRect sampler2DRectShadow
syn keyword   glslType  sampler2DShadow sampler3D samplerBuffer samplerCube
syn keyword   glslType  samplerCubeArray samplerCubeArrayShadow samplerCubeShadow
syn keyword   glslType  uimage1D uimage1DArray uimage2D uimage2DArray uimage2DMS
syn keyword   glslType  uimage2DMSArray uimage2DRect uimage3D uimageBuffer uimageCube
syn keyword   glslType  uimageCubeArray uint usampler1D usampler1DArray usampler2D
syn keyword   glslType  usampler2DArray usampler2DMS usampler2DMSArray usampler2DRect
syn keyword   glslType  usampler3D usamplerBuffer usamplerCube usamplerCubeArray
syn keyword   glslType  uvec2 uvec3 uvec4 vec2 vec3 vec4 void

" Qualifiers
syn keyword   glslQualifier  precision invariant
syn keyword   glslQualifier  attribute binding ccw centroid column_major const
syn keyword   glslQualifier  cw depth_any depth_greater depth_less depth_unchanged
syn keyword   glslQualifier  early_fragment_tests equal_spacing flat
syn keyword   glslQualifier  fractional_even_spacing fractional_odd_spacing highp
syn keyword   glslQualifier  in index inout invocations isolines layout line_strip
syn keyword   glslQualifier  lines lines_adjacency location lowp max_vertices
syn keyword   glslQualifier  mediump noperspective offset origin_upper_left
syn keyword   glslQualifier  origin_upper_left out packed patch pixel_center_integer
syn keyword   glslQualifier  point_mode points quads r11f_g11f_b10f r16 r16_snorm
syn keyword   glslQualifier  r16f r16i r16ui r32f r32i r32ui r8 r8_snorm r8i
syn keyword   glslQualifier  r8ui rg16 rg16_snorm rg16f rg16i rg16ui rg32f rg32i
syn keyword   glslQualifier  rg32ui rg8 rg8_snorm rg8i rg8ui rgb10_a2 rgb10_a2ui
syn keyword   glslQualifier  rgba16 rgba16_snorm rgba16f rgba16i rgba16ui rgba32f
syn keyword   glslQualifier  rgba32i rgba32ui rgba8 rgba8_snorm rgba8i rgba8ui
syn keyword   glslQualifier  row_major sample shared smooth std140 stream
syn keyword   glslQualifier  triangle_strip triangles triangles_adjacency uniform varying
syn keyword   glslQualifier  coherent volatile restrict readonly writeonly

" These functions were taken from the 4.20 version of the GLSL specification,
" found at
"     http://www.opengl.org/registry/doc/GLSLangSpec.4.20.11.clean.pdf

" 8.1 Angle and Trigonometry Functions
syn keyword glslBuiltinFunction radians degrees sin cos tan asin acos atan
syn keyword glslBuiltinFunction sinh cosh tanh asinh acosh atanh
" 8.2 Exponential Functions
syn keyword glslBuiltinFunction pow exp log exp2 log2 sqrt inversesqrt
" 8.3 Common Functions
syn keyword glslBuiltinFunction abs sign floor trunc round roundEven ceil
syn keyword glslBuiltinFunction fract mod modf min max clamp mix step
syn keyword glslBuiltinFunction smoothstep isnan isinf floatBitsToInt
syn keyword glslBuiltinFunction floatBitsToUint intBitsToFloat uintBitsToFloat
syn keyword glslBuiltinFunction fma frexp ldexp
" 8.4 Floating-Point Pack and Unpack Functions
syn keyword glslBuiltinFunction packUnorm2x16 packSnorm2x16 packUnorm4x8
syn keyword glslBuiltinFunction packSnorm4x8 unpackUnorm2x16 unpackSnorm2x16
syn keyword glslBuiltinFunction unpackUnorm4x8 unpackSnorm4x8 packDouble2x32
syn keyword glslBuiltinFunction unpackDouble2x32 packHalf2x16 unpackHalf2x16
" 8.5 Geometric Functions
syn keyword glslBuiltinFunction length distance dot cross normalize faceforward
syn keyword glslBuiltinFunction reflect refract
" 8.6 Matrix Functions
syn keyword glslBuiltinFunction matrixCompMult outerProduct transpose
syn keyword glslBuiltinFunction determinant
syn keyword glslBuiltinFunction inverse
" 8.7 Vector Relational Functions
syn keyword glslBuiltinFunction lessThan lessThanEqual greaterThan
syn keyword glslBuiltinFunction greaterThanEqual
syn keyword glslBuiltinFunction equal notEqual any all not
" 8.8 Integer Functions
syn keyword glslBuiltinFunction uaddCarry usubBorrow umulExtended imulExtended
syn keyword glslBuiltinFunction bitfieldExtract bitfieldInsert bitfieldReverse
syn keyword glslBuiltinFunction bitCount findLSB findMSB
" 8.9.1 Texture Query Functions
syn keyword glslBuiltinFunction textureSize textureQueryLod
" 8.9.2 Texel Lookup Functions
syn keyword glslBuiltinFunction texture textureProj textureLod textureOffset
syn keyword glslBuiltinFunction texelFetch texelFetchOffset textureProjOffset
syn keyword glslBuiltinFunction textureLodOffset textureProjLod
syn keyword glslBuiltinFunction textureProjLodOffset textureGrad
syn keyword glslBuiltinFunction textureGradOffset textureProjGrad
syn keyword glslBuiltinFunction textureProjGradOffset
" 8.9.3 Texture Gather Instructions
syn keyword glslBuiltinFunction textureGather textureGatherOffset
syn keyword glslBuiltinFunction textureGatherOffsets
" 8.10 Atomic-Counter Functions
syn keyword glslBuiltinFunction atomicCounterIncrement atomicCounterDecrement
syn keyword glslBuiltinFunction atomicCounter
" 8.11 Image Functions
syn keyword glslBuiltinFunction imageLoad imageStore imageAtomicAdd
syn keyword glslBuiltinFunction imageAtomicMin imageAtomicMax imageAtomicAnd
syn keyword glslBuiltinFunction imageAtomicOr imageAtomicXor
syn keyword glslBuiltinFunction imageAtomicExchange imageAtomicCompSwap
" 8.12.1 Derivative Functions
syn keyword glslBuiltinFunction dFdx dFdy fwidth
" 8.12.2 Interpolation Functions
syn keyword glslBuiltinFunction interpolateAtCentroid interpolateAtSample
syn keyword glslBuiltinFunction interpolateAtOffset
" 8.13 Noise Functions
syn keyword glslBuiltinFunction noise1 noise2 noise3 noise4
" 8.14 Geometry Shader Functions
syn keyword glslBuiltinFunction EmitStreamVertex EndStreamPrimitive EmitVertex
syn keyword glslBuiltinFunction EndPrimitive
" 8.15 Shader Invocation Control Functions
syn keyword glslBuiltinFunction barrier
" 8.16 Shader Memory Control Function
syn keyword glslBuiltinFunction memoryBarrier

" 7.1 Built-in Variables
syn keyword glslBuiltinVariable gl_VertexID gl_InstanceID gl_Position
syn keyword glslBuiltinVariable gl_PointSize gl_ClipDistance gl_in
syn keyword glslBuiltinVariable gl_PrimitiveIDIn gl_InvocationID
syn keyword glslBuiltinVariable gl_PrimitiveID gl_Layer gl_ViewportIndex
syn keyword glslBuiltinVariable gl_PatchVerticesIn gl_out gl_TessLevelOuter
syn keyword glslBuiltinVariable gl_TessLevelInner gl_TessCoord gl_FragCoord
syn keyword glslBuiltinVariable gl_FrontFacing gl_PointCoord gl_SampleID
syn keyword glslBuiltinVariable gl_SamplePosition gl_SampleMaskIn gl_FragDepth
syn keyword glslBuiltinVariable gl_SampleMask
" 7.4 Built-In Uniform State
" TODO Perhaps add highlighting for gl_DepthRange.near, or for
" gl_DepthRangeParameters.
syn keyword glslBuiltinVariable gl_DepthRange gl_NumSamples

" 7.3 Built-in Constants
syn keyword glslBuiltinConstant gl_MaxVertexAttribs gl_MaxUniformComponents
syn keyword glslBuiltinConstant gl_MaxVaryingComponents
syn keyword glslBuiltinConstant gl_MaxVertexOutputComponents
syn keyword glslBuiltinConstant gl_MaxGeometryInputComponents
syn keyword glslBuiltinConstant gl_MaxGeometryOutputComponents
syn keyword glslBuiltinConstant gl_MaxFragmentInputComponents
syn keyword glslBuiltinConstant gl_MaxVertexTextureImageUnits
syn keyword glslBuiltinConstant gl_MaxCombinedTextureImageUnits
syn keyword glslBuiltinConstant gl_MaxTextureImageUnits gl_MaxImageUnits
syn keyword glslBuiltinConstant gl_MaxCombinedImageUnitsAndFragmentOutputs
syn keyword glslBuiltinConstant gl_MaxImageSamples gl_MaxVertexImageUniforms
syn keyword glslBuiltinConstant gl_MaxTessControlImageUniforms
syn keyword glslBuiltinConstant gl_MaxTessEvaluationImageUniforms
syn keyword glslBuiltinConstant gl_MaxGeometryImageUniforms
syn keyword glslBuiltinConstant gl_MaxFragmentImageUniforms
syn keyword glslBuiltinConstant gl_MaxCombinedImageUniforms
syn keyword glslBuiltinConstant gl_MaxFragmentUniformComponents
syn keyword glslBuiltinConstant gl_MaxDrawBuffers gl_MaxClipDistances
syn keyword glslBuiltinConstant gl_MaxGeometryTextureImageUnits
syn keyword glslBuiltinConstant gl_MaxGeometryOutputVertices
syn keyword glslBuiltinConstant gl_MaxGeometryTotalOutputComponents
syn keyword glslBuiltinConstant gl_MaxGeometryUniformComponents
syn keyword glslBuiltinConstant gl_MaxGeometryVaryingComponents
syn keyword glslBuiltinConstant gl_MaxTessControlInputComponents
syn keyword glslBuiltinConstant gl_MaxTessControlOutputComponents
syn keyword glslBuiltinConstant gl_MaxTessControlTextureImageUnits
syn keyword glslBuiltinConstant gl_MaxTessControlUniformComponents
syn keyword glslBuiltinConstant gl_MaxTessControlTotalOutputComponents
syn keyword glslBuiltinConstant gl_MaxTessEvaluationInputComponents
syn keyword glslBuiltinConstant gl_MaxTessEvaluationOutputComponents
syn keyword glslBuiltinConstant gl_MaxTessEvaluationTextureImageUnits
syn keyword glslBuiltinConstant gl_MaxTessEvaluationUniformComponents
syn keyword glslBuiltinConstant gl_MaxTessEvaluationTotalOutputComponents
syn keyword glslBuiltinConstant gl_MaxTessPatchComponents gl_MaxPatchVertices
syn keyword glslBuiltinConstant gl_MaxTessGenLevel
syn keyword glslBuiltinConstant gl_MaxViewports
syn keyword glslBuiltinConstant gl_MaxVertexUniformVectors
syn keyword glslBuiltinConstant gl_MaxFragmentUniformVectors
syn keyword glslBuiltinConstant gl_MaxVaryingVectors
syn keyword glslBuiltinConstant gl_MaxVertexAtomicCounters
syn keyword glslBuiltinConstant gl_MaxTessControlAtomicCounters
syn keyword glslBuiltinConstant gl_MaxTessEvaluationAtomicCounters
syn keyword glslBuiltinConstant gl_MaxGeometryAtomicCounters
syn keyword glslBuiltinConstant gl_MaxFragmentAtomicCounters
syn keyword glslBuiltinConstant gl_MaxCombinedAtomicCounters
syn keyword glslBuiltinConstant gl_MaxVertexAtomicCounterBuffers
syn keyword glslBuiltinConstant gl_MaxTessControlAtomicCounterBuffers
syn keyword glslBuiltinConstant gl_MaxGeometryAtomicCounterBuffers
syn keyword glslBuiltinConstant gl_MaxFragmentAtomicCounterBuffers
syn keyword glslBuiltinConstant gl_MaxCombinedAtomicCounterBuffers
syn keyword glslBuiltinConstant gl_MaxAtomicCounterBufferSize
syn keyword glslBuiltinConstant gl_MinProgramTexelOffset
syn keyword glslBuiltinConstant gl_MaxProgramTexelOffset

" This prevents numbers at ends of identifies from being highlighted as
" numbers.
syn match glslIdentifier display "\I\i*"

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
hi def link glslDecimalInt        glslInteger
hi def link glslOctalInt          glslInteger
hi def link glslHexInt            glslInteger
hi def link glslInteger           Number
hi def link glslFloat             Float
hi def link glslStructure         Structure
hi def link glslType              Type
hi def link glslQualifier         StorageClass
hi def link glslBuiltinConstant   Constant
hi def link glslBuiltinFunction   Function
hi def link glslBuiltinVariable   Identifier
hi def link glslSwizzle           SpecialChar

let b:current_syntax = "glsl"

" vim:set sw=2:
