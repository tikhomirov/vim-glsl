" Language: Spectra Shading Language
" Maintainer: Sergey Tikhomirov <sergey@tikhomirov.io>
" Maintainer: Dimitri Sabadie <dimitri.sabadie@gmail.com>

if exists("b:current_syntax") && b:current_syntax == "chdr"
  finish
endif

" Modules
syn keyword chdrUse use

" Statements
syn keyword chdrConditional if else switch case default
syn keyword chdrRepeat      for while do
syn keyword chdrStatement   discard return break continue

" Comments
syn keyword chdrTodo     contained TODO FIXME XXX NOTE
syn region  chdrCommentL start="//" skip="\\$" end="$" keepend contains=chdrTodo,@Spell
syn region  chdrComment  matchgroup=chdrCommentStart start="/\*" end="\*/" extend contains=chdrTodo,@Spell

" Preprocessor
syn region  chdrPreCondit       start="^\s*#\s*\(if\|ifdef\|ifndef\|else\|elif\|endif\)" skip="\\$" end="$" keepend
syn region  chdrDefine          start="^\s*#\s*\(define\|undef\)" skip="\\$" end="$" keepend
syn keyword chdrTokenConcat     ##
syn keyword chdrPredefinedMacro __LINE__ __FILE__ __VERSION__ GL_ES
syn region  chdrPreProc         start="^\s*#\s*\(error\|pragma\|extension\|version\|line\)" skip="\\$" end="$" keepend

" Boolean Constants
syn keyword chdrBoolean true false

" Integer Numbers
syn match chdrDecimalInt display "\<\(0\|[1-9]\d*\)[uU]\?"
syn match chdrOctalInt   display "\<0\o\+[uU]\?"
syn match chdrHexInt     display "\<0[xX]\x\+[uU]\?"

" Float Numbers
syn match chdrFloat display "\<\d\+\.\([eE][+-]\=\d\+\)\=\(lf\|LF\|f\|F\)\="
syn match chdrFloat display "\<\.\d\+\([eE][+-]\=\d\+\)\=\(lf\|LF\|f\|F\)\="
syn match chdrFloat display "\<\d\+[eE][+-]\=\d\+\(lf\|LF\|f\|F\)\="
syn match chdrFloat display "\<\d\+\.\d\+\([eE][+-]\=\d\+\)\=\(lf\|LF\|f\|F\)\="

" Swizzles
syn match chdrSwizzle display /\.[xyzw]\{1,4\}\>/
syn match chdrSwizzle display /\.[rgba]\{1,4\}\>/
syn match chdrSwizzle display /\.[stpq]\{1,4\}\>/

" Structure
syn keyword chdrStructure struct nextgroup=chdrIdentifier skipwhite skipempty

syn match chdrIdentifier contains=chdrIdentifierPrime "\%([a-zA-Z_]\)\%([a-zA-Z0-9_]\)*" display contained

" Types
syn keyword chdrType atomic_uint
syn keyword chdrType bool
syn keyword chdrType bvec2
syn keyword chdrType bvec3
syn keyword chdrType bvec4
syn keyword chdrType dmat2
syn keyword chdrType dmat2x2
syn keyword chdrType dmat2x3
syn keyword chdrType dmat2x4
syn keyword chdrType dmat3
syn keyword chdrType dmat3x2
syn keyword chdrType dmat3x3
syn keyword chdrType dmat3x4
syn keyword chdrType dmat4
syn keyword chdrType dmat4x2
syn keyword chdrType dmat4x3
syn keyword chdrType dmat4x4
syn keyword chdrType double
syn keyword chdrType dvec2
syn keyword chdrType dvec3
syn keyword chdrType dvec4
syn keyword chdrType float
syn keyword chdrType iimage1D
syn keyword chdrType iimage1DArray
syn keyword chdrType iimage2D
syn keyword chdrType iimage2DArray
syn keyword chdrType iimage2DMS
syn keyword chdrType iimage2DMSArray
syn keyword chdrType iimage2DRect
syn keyword chdrType iimage3D
syn keyword chdrType iimageBuffer
syn keyword chdrType iimageCube
syn keyword chdrType iimageCubeArray
syn keyword chdrType image1D
syn keyword chdrType image1DArray
syn keyword chdrType image2D
syn keyword chdrType image2DArray
syn keyword chdrType image2DMS
syn keyword chdrType image2DMSArray
syn keyword chdrType image2DRect
syn keyword chdrType image3D
syn keyword chdrType imageBuffer
syn keyword chdrType imageCube
syn keyword chdrType imageCubeArray
syn keyword chdrType int
syn keyword chdrType isampler1D
syn keyword chdrType isampler1DArray
syn keyword chdrType isampler2D
syn keyword chdrType isampler2DArray
syn keyword chdrType isampler2DMS
syn keyword chdrType isampler2DMSArray
syn keyword chdrType isampler2DRect
syn keyword chdrType isampler3D
syn keyword chdrType isamplerBuffer
syn keyword chdrType isamplerCube
syn keyword chdrType isamplerCubeArray
syn keyword chdrType ivec2
syn keyword chdrType ivec3
syn keyword chdrType ivec4
syn keyword chdrType mat2
syn keyword chdrType mat2x2
syn keyword chdrType mat2x3
syn keyword chdrType mat2x4
syn keyword chdrType mat3
syn keyword chdrType mat3x2
syn keyword chdrType mat3x3
syn keyword chdrType mat3x4
syn keyword chdrType mat4
syn keyword chdrType mat4x2
syn keyword chdrType mat4x3
syn keyword chdrType mat4x4
syn keyword chdrType sampler1D
syn keyword chdrType sampler1DArray
syn keyword chdrType sampler1DArrayShadow
syn keyword chdrType sampler1DShadow
syn keyword chdrType sampler2D
syn keyword chdrType sampler2DArray
syn keyword chdrType sampler2DArrayShadow
syn keyword chdrType sampler2DMS
syn keyword chdrType sampler2DMSArray
syn keyword chdrType sampler2DRect
syn keyword chdrType sampler2DRectShadow
syn keyword chdrType sampler2DShadow
syn keyword chdrType sampler3D
syn keyword chdrType samplerBuffer
syn keyword chdrType samplerCube
syn keyword chdrType samplerCubeArray
syn keyword chdrType samplerCubeArrayShadow
syn keyword chdrType samplerCubeShadow
syn keyword chdrType uimage1D
syn keyword chdrType uimage1DArray
syn keyword chdrType uimage2D
syn keyword chdrType uimage2DArray
syn keyword chdrType uimage2DMS
syn keyword chdrType uimage2DMSArray
syn keyword chdrType uimage2DRect
syn keyword chdrType uimage3D
syn keyword chdrType uimageBuffer
syn keyword chdrType uimageCube
syn keyword chdrType uimageCubeArray
syn keyword chdrType uint
syn keyword chdrType usampler1D
syn keyword chdrType usampler1DArray
syn keyword chdrType usampler2D
syn keyword chdrType usampler2DArray
syn keyword chdrType usampler2DMS
syn keyword chdrType usampler2DMSArray
syn keyword chdrType usampler2DRect
syn keyword chdrType usampler3D
syn keyword chdrType usamplerBuffer
syn keyword chdrType usamplerCube
syn keyword chdrType usamplerCubeArray
syn keyword chdrType uvec2
syn keyword chdrType uvec3
syn keyword chdrType uvec4
syn keyword chdrType vec2
syn keyword chdrType vec3
syn keyword chdrType vec4
syn keyword chdrType void

" Qualifiers
syn keyword chdrQualifier align
syn keyword chdrQualifier attribute
syn keyword chdrQualifier binding
syn keyword chdrQualifier buffer
syn keyword chdrQualifier ccw
syn keyword chdrQualifier centroid
syn keyword chdrQualifier centroid varying
syn keyword chdrQualifier coherent
syn keyword chdrQualifier column_major
syn keyword chdrQualifier const
syn keyword chdrQualifier cw
syn keyword chdrQualifier depth_any
syn keyword chdrQualifier depth_greater
syn keyword chdrQualifier depth_less
syn keyword chdrQualifier depth_unchanged
syn keyword chdrQualifier early_fragment_tests
syn keyword chdrQualifier equal_spacing
syn keyword chdrQualifier flat
syn keyword chdrQualifier fractional_even_spacing
syn keyword chdrQualifier fractional_odd_spacing
syn keyword chdrQualifier highp
syn keyword chdrQualifier in
syn keyword chdrQualifier index
syn keyword chdrQualifier inout
syn keyword chdrQualifier invariant
syn keyword chdrQualifier invocations
syn keyword chdrQualifier isolines
syn keyword chdrQualifier layout
syn keyword chdrQualifier line_strip
syn keyword chdrQualifier lines
syn keyword chdrQualifier lines_adjacency
syn keyword chdrQualifier local_size_x
syn keyword chdrQualifier local_size_y
syn keyword chdrQualifier local_size_z
syn keyword chdrQualifier location
syn keyword chdrQualifier lowp
syn keyword chdrQualifier max_vertices
syn keyword chdrQualifier mediump
syn keyword chdrQualifier noperspective
syn keyword chdrQualifier offset
syn keyword chdrQualifier origin_upper_left
syn keyword chdrQualifier out
syn keyword chdrQualifier packed
syn keyword chdrQualifier patch
syn keyword chdrQualifier pixel_center_integer
syn keyword chdrQualifier point_mode
syn keyword chdrQualifier points
syn keyword chdrQualifier precise
syn keyword chdrQualifier precision
syn keyword chdrQualifier quads
syn keyword chdrQualifier r11f_g11f_b10f
syn keyword chdrQualifier r16
syn keyword chdrQualifier r16_snorm
syn keyword chdrQualifier r16f
syn keyword chdrQualifier r16i
syn keyword chdrQualifier r16ui
syn keyword chdrQualifier r32f
syn keyword chdrQualifier r32i
syn keyword chdrQualifier r32ui
syn keyword chdrQualifier r8
syn keyword chdrQualifier r8_snorm
syn keyword chdrQualifier r8i
syn keyword chdrQualifier r8ui
syn keyword chdrQualifier readonly
syn keyword chdrQualifier restrict
syn keyword chdrQualifier rg16
syn keyword chdrQualifier rg16_snorm
syn keyword chdrQualifier rg16f
syn keyword chdrQualifier rg16i
syn keyword chdrQualifier rg16ui
syn keyword chdrQualifier rg32f
syn keyword chdrQualifier rg32i
syn keyword chdrQualifier rg32ui
syn keyword chdrQualifier rg8
syn keyword chdrQualifier rg8_snorm
syn keyword chdrQualifier rg8i
syn keyword chdrQualifier rg8ui
syn keyword chdrQualifier rgb10_a2
syn keyword chdrQualifier rgb10_a2ui
syn keyword chdrQualifier rgba16
syn keyword chdrQualifier rgba16_snorm
syn keyword chdrQualifier rgba16f
syn keyword chdrQualifier rgba16i
syn keyword chdrQualifier rgba16ui
syn keyword chdrQualifier rgba32f
syn keyword chdrQualifier rgba32i
syn keyword chdrQualifier rgba32ui
syn keyword chdrQualifier rgba8
syn keyword chdrQualifier rgba8_snorm
syn keyword chdrQualifier rgba8i
syn keyword chdrQualifier rgba8ui
syn keyword chdrQualifier row_major
syn keyword chdrQualifier sample
syn keyword chdrQualifier shared
syn keyword chdrQualifier smooth
syn keyword chdrQualifier std140
syn keyword chdrQualifier std430
syn keyword chdrQualifier stream
syn keyword chdrQualifier triangle_strip
syn keyword chdrQualifier triangles
syn keyword chdrQualifier triangles_adjacency
syn keyword chdrQualifier uniform
syn keyword chdrQualifier varying
syn keyword chdrQualifier vertices
syn keyword chdrQualifier volatile
syn keyword chdrQualifier writeonly
syn keyword chdrQualifier xfb_buffer
syn keyword chdrQualifier xfb_stride
syn keyword chdrQualifier xfb_offset

" Built-in Constants
syn keyword chdrBuiltinConstant gl_CullDistance
syn keyword chdrBuiltinConstant gl_MaxAtomicCounterBindings
syn keyword chdrBuiltinConstant gl_MaxAtomicCounterBufferSize
syn keyword chdrBuiltinConstant gl_MaxClipDistances
syn keyword chdrBuiltinConstant gl_MaxClipPlanes
syn keyword chdrBuiltinConstant gl_MaxCombinedAtomicCounterBuffers
syn keyword chdrBuiltinConstant gl_MaxCombinedAtomicCounters
syn keyword chdrBuiltinConstant gl_MaxCombinedClipAndCullDistances
syn keyword chdrBuiltinConstant gl_MaxCombinedImageUniforms
syn keyword chdrBuiltinConstant gl_MaxCombinedImageUnitsAndFragmentOutputs
syn keyword chdrBuiltinConstant gl_MaxCombinedShaderOutputResources
syn keyword chdrBuiltinConstant gl_MaxCombinedTextureImageUnits
syn keyword chdrBuiltinConstant gl_MaxComputeAtomicCounterBuffers
syn keyword chdrBuiltinConstant gl_MaxComputeAtomicCounters
syn keyword chdrBuiltinConstant gl_MaxComputeImageUniforms
syn keyword chdrBuiltinConstant gl_MaxComputeTextureImageUnits
syn keyword chdrBuiltinConstant gl_MaxComputeUniformComponents
syn keyword chdrBuiltinConstant gl_MaxComputeWorkGroupCount
syn keyword chdrBuiltinConstant gl_MaxComputeWorkGroupSize
syn keyword chdrBuiltinConstant gl_MaxCullDistances
syn keyword chdrBuiltinConstant gl_MaxDrawBuffers
syn keyword chdrBuiltinConstant gl_MaxFragmentAtomicCounterBuffers
syn keyword chdrBuiltinConstant gl_MaxFragmentAtomicCounters
syn keyword chdrBuiltinConstant gl_MaxFragmentImageUniforms
syn keyword chdrBuiltinConstant gl_MaxFragmentInputComponents
syn keyword chdrBuiltinConstant gl_MaxFragmentInputVectors
syn keyword chdrBuiltinConstant gl_MaxFragmentUniformComponents
syn keyword chdrBuiltinConstant gl_MaxFragmentUniformVectors
syn keyword chdrBuiltinConstant gl_MaxGeometryAtomicCounterBuffers
syn keyword chdrBuiltinConstant gl_MaxGeometryAtomicCounters
syn keyword chdrBuiltinConstant gl_MaxGeometryImageUniforms
syn keyword chdrBuiltinConstant gl_MaxGeometryInputComponents
syn keyword chdrBuiltinConstant gl_MaxGeometryOutputComponents
syn keyword chdrBuiltinConstant gl_MaxGeometryOutputVertices
syn keyword chdrBuiltinConstant gl_MaxGeometryTextureImageUnits
syn keyword chdrBuiltinConstant gl_MaxGeometryTotalOutputComponents
syn keyword chdrBuiltinConstant gl_MaxGeometryUniformComponents
syn keyword chdrBuiltinConstant gl_MaxGeometryVaryingComponents
syn keyword chdrBuiltinConstant gl_MaxImageSamples
syn keyword chdrBuiltinConstant gl_MaxImageUnits
syn keyword chdrBuiltinConstant gl_MaxLights
syn keyword chdrBuiltinConstant gl_MaxPatchVertices
syn keyword chdrBuiltinConstant gl_MaxProgramTexelOffset
syn keyword chdrBuiltinConstant gl_MaxSamples
syn keyword chdrBuiltinConstant gl_MaxTessControlAtomicCounterBuffers
syn keyword chdrBuiltinConstant gl_MaxTessControlAtomicCounters
syn keyword chdrBuiltinConstant gl_MaxTessControlImageUniforms
syn keyword chdrBuiltinConstant gl_MaxTessControlInputComponents
syn keyword chdrBuiltinConstant gl_MaxTessControlOutputComponents
syn keyword chdrBuiltinConstant gl_MaxTessControlTextureImageUnits
syn keyword chdrBuiltinConstant gl_MaxTessControlTotalOutputComponents
syn keyword chdrBuiltinConstant gl_MaxTessControlUniformComponents
syn keyword chdrBuiltinConstant gl_MaxTessEvaluationAtomicCounterBuffers
syn keyword chdrBuiltinConstant gl_MaxTessEvaluationAtomicCounters
syn keyword chdrBuiltinConstant gl_MaxTessEvaluationImageUniforms
syn keyword chdrBuiltinConstant gl_MaxTessEvaluationInputComponents
syn keyword chdrBuiltinConstant gl_MaxTessEvaluationOutputComponents
syn keyword chdrBuiltinConstant gl_MaxTessEvaluationTextureImageUnits
syn keyword chdrBuiltinConstant gl_MaxTessEvaluationUniformComponents
syn keyword chdrBuiltinConstant gl_MaxTessGenLevel
syn keyword chdrBuiltinConstant gl_MaxTessPatchComponents
syn keyword chdrBuiltinConstant gl_MaxTextureCoords
syn keyword chdrBuiltinConstant gl_MaxTextureImageUnits
syn keyword chdrBuiltinConstant gl_MaxTextureUnits
syn keyword chdrBuiltinConstant gl_MaxTransformFeedbackBuffers
syn keyword chdrBuiltinConstant gl_MaxTransformFeedbackInterleavedComponents
syn keyword chdrBuiltinConstant gl_MaxVaryingComponents
syn keyword chdrBuiltinConstant gl_MaxVaryingFloats
syn keyword chdrBuiltinConstant gl_MaxVaryingVectors
syn keyword chdrBuiltinConstant gl_MaxVertexAtomicCounterBuffers
syn keyword chdrBuiltinConstant gl_MaxVertexAtomicCounters
syn keyword chdrBuiltinConstant gl_MaxVertexAttribs
syn keyword chdrBuiltinConstant gl_MaxVertexImageUniforms
syn keyword chdrBuiltinConstant gl_MaxVertexOutputComponents
syn keyword chdrBuiltinConstant gl_MaxVertexOutputVectors
syn keyword chdrBuiltinConstant gl_MaxVertexTextureImageUnits
syn keyword chdrBuiltinConstant gl_MaxVertexUniformComponents
syn keyword chdrBuiltinConstant gl_MaxVertexUniformVectors
syn keyword chdrBuiltinConstant gl_MaxViewports
syn keyword chdrBuiltinConstant gl_MinProgramTexelOffset

" Built-in Variables
syn keyword chdrBuiltinVariable gl_BackColor
syn keyword chdrBuiltinVariable gl_BackLightModelProduct
syn keyword chdrBuiltinVariable gl_BackLightProduct
syn keyword chdrBuiltinVariable gl_BackLightProduct
syn keyword chdrBuiltinVariable gl_BackMaterial
syn keyword chdrBuiltinVariable gl_BackSecondaryColor
syn keyword chdrBuiltinVariable gl_ClipDistance
syn keyword chdrBuiltinVariable gl_ClipPlane
syn keyword chdrBuiltinVariable gl_ClipVertex
syn keyword chdrBuiltinVariable gl_Color
syn keyword chdrBuiltinVariable gl_DepthRange
syn keyword chdrBuiltinVariable gl_EyePlaneQ
syn keyword chdrBuiltinVariable gl_EyePlaneR
syn keyword chdrBuiltinVariable gl_EyePlaneS
syn keyword chdrBuiltinVariable gl_EyePlaneT
syn keyword chdrBuiltinVariable gl_Fog
syn keyword chdrBuiltinVariable gl_FogCoord
syn keyword chdrBuiltinVariable gl_FogFragCoord
syn keyword chdrBuiltinVariable gl_FragColor
syn keyword chdrBuiltinVariable gl_FragCoord
syn keyword chdrBuiltinVariable gl_FragData
syn keyword chdrBuiltinVariable gl_FragDepth
syn keyword chdrBuiltinVariable gl_FrontColor
syn keyword chdrBuiltinVariable gl_FrontFacing
syn keyword chdrBuiltinVariable gl_FrontLightModelProduct
syn keyword chdrBuiltinVariable gl_FrontLightProduct
syn keyword chdrBuiltinVariable gl_FrontMaterial
syn keyword chdrBuiltinVariable gl_FrontSecondaryColor
syn keyword chdrBuiltinVariable gl_GlobalInvocationID
syn keyword chdrBuiltinVariable gl_HelperInvocation
syn keyword chdrBuiltinVariable gl_InstanceID
syn keyword chdrBuiltinVariable gl_InvocationID
syn keyword chdrBuiltinVariable gl_Layer
syn keyword chdrBuiltinVariable gl_LightModel
syn keyword chdrBuiltinVariable gl_LightSource
syn keyword chdrBuiltinVariable gl_LocalInvocationID
syn keyword chdrBuiltinVariable gl_LocalInvocationIndex
syn keyword chdrBuiltinVariable gl_ModelViewMatrix
syn keyword chdrBuiltinVariable gl_ModelViewMatrixInverse
syn keyword chdrBuiltinVariable gl_ModelViewMatrixInverseTranspose
syn keyword chdrBuiltinVariable gl_ModelViewMatrixTranspose
syn keyword chdrBuiltinVariable gl_ModelViewProjectionMatrix
syn keyword chdrBuiltinVariable gl_ModelViewProjectionMatrixInverse
syn keyword chdrBuiltinVariable gl_ModelViewProjectionMatrixInverseTranspose
syn keyword chdrBuiltinVariable gl_ModelViewProjectionMatrixTranspose
syn keyword chdrBuiltinVariable gl_MultiTexCoord0
syn keyword chdrBuiltinVariable gl_MultiTexCoord1
syn keyword chdrBuiltinVariable gl_MultiTexCoord2
syn keyword chdrBuiltinVariable gl_MultiTexCoord3
syn keyword chdrBuiltinVariable gl_MultiTexCoord4
syn keyword chdrBuiltinVariable gl_MultiTexCoord5
syn keyword chdrBuiltinVariable gl_MultiTexCoord6
syn keyword chdrBuiltinVariable gl_MultiTexCoord7
syn keyword chdrBuiltinVariable gl_Normal
syn keyword chdrBuiltinVariable gl_NormalMatrix
syn keyword chdrBuiltinVariable gl_NormalScale
syn keyword chdrBuiltinVariable gl_NumSamples
syn keyword chdrBuiltinVariable gl_NumWorkGroups
syn keyword chdrBuiltinVariable gl_ObjectPlaneQ
syn keyword chdrBuiltinVariable gl_ObjectPlaneR
syn keyword chdrBuiltinVariable gl_ObjectPlaneS
syn keyword chdrBuiltinVariable gl_ObjectPlaneT
syn keyword chdrBuiltinVariable gl_PatchVerticesIn
syn keyword chdrBuiltinVariable gl_Point
syn keyword chdrBuiltinVariable gl_PointCoord
syn keyword chdrBuiltinVariable gl_PointSize
syn keyword chdrBuiltinVariable gl_Position
syn keyword chdrBuiltinVariable gl_PrimitiveID
syn keyword chdrBuiltinVariable gl_PrimitiveIDIn
syn keyword chdrBuiltinVariable gl_ProjectionMatrix
syn keyword chdrBuiltinVariable gl_ProjectionMatrixInverse
syn keyword chdrBuiltinVariable gl_ProjectionMatrixInverseTranspose
syn keyword chdrBuiltinVariable gl_ProjectionMatrixTranspose
syn keyword chdrBuiltinVariable gl_SampleID
syn keyword chdrBuiltinVariable gl_SampleMask
syn keyword chdrBuiltinVariable gl_SampleMaskIn
syn keyword chdrBuiltinVariable gl_SamplePosition
syn keyword chdrBuiltinVariable gl_SecondaryColor
syn keyword chdrBuiltinVariable gl_TessCoord
syn keyword chdrBuiltinVariable gl_TessLevelInner
syn keyword chdrBuiltinVariable gl_TessLevelOuter
syn keyword chdrBuiltinVariable gl_TexCoord
syn keyword chdrBuiltinVariable gl_TextureEnvColor
syn keyword chdrBuiltinVariable gl_TextureMatrix
syn keyword chdrBuiltinVariable gl_TextureMatrixInverse
syn keyword chdrBuiltinVariable gl_TextureMatrixInverseTranspose
syn keyword chdrBuiltinVariable gl_TextureMatrixTranspose
syn keyword chdrBuiltinVariable gl_Vertex
syn keyword chdrBuiltinVariable gl_VertexID
syn keyword chdrBuiltinVariable gl_ViewportIndex
syn keyword chdrBuiltinVariable gl_WorkGroupID
syn keyword chdrBuiltinVariable gl_WorkGroupSize
syn keyword chdrBuiltinVariable gl_in
syn keyword chdrBuiltinVariable gl_out

" Built-in Functions
syn keyword chdrBuiltinFunction EmitStreamVertex
syn keyword chdrBuiltinFunction EmitVertex
syn keyword chdrBuiltinFunction EndPrimitive
syn keyword chdrBuiltinFunction EndStreamPrimitive
syn keyword chdrBuiltinFunction abs
syn keyword chdrBuiltinFunction acos
syn keyword chdrBuiltinFunction acosh
syn keyword chdrBuiltinFunction all
syn keyword chdrBuiltinFunction any
syn keyword chdrBuiltinFunction asin
syn keyword chdrBuiltinFunction asinh
syn keyword chdrBuiltinFunction atan
syn keyword chdrBuiltinFunction atanh
syn keyword chdrBuiltinFunction atomicAdd
syn keyword chdrBuiltinFunction atomicAnd
syn keyword chdrBuiltinFunction atomicCompSwap
syn keyword chdrBuiltinFunction atomicCounter
syn keyword chdrBuiltinFunction atomicCounterDecrement
syn keyword chdrBuiltinFunction atomicCounterIncrement
syn keyword chdrBuiltinFunction atomicExchange
syn keyword chdrBuiltinFunction atomicMax
syn keyword chdrBuiltinFunction atomicMin
syn keyword chdrBuiltinFunction atomicOr
syn keyword chdrBuiltinFunction atomicXor
syn keyword chdrBuiltinFunction barrier
syn keyword chdrBuiltinFunction bitCount
syn keyword chdrBuiltinFunction bitfieldExtract
syn keyword chdrBuiltinFunction bitfieldInsert
syn keyword chdrBuiltinFunction bitfieldReverse
syn keyword chdrBuiltinFunction ceil
syn keyword chdrBuiltinFunction clamp
syn keyword chdrBuiltinFunction cos
syn keyword chdrBuiltinFunction cosh
syn keyword chdrBuiltinFunction cross
syn keyword chdrBuiltinFunction dFdx
syn keyword chdrBuiltinFunction dFdxCoarse
syn keyword chdrBuiltinFunction dFdxFine
syn keyword chdrBuiltinFunction dFdy
syn keyword chdrBuiltinFunction dFdyCoarse
syn keyword chdrBuiltinFunction dFdyFine
syn keyword chdrBuiltinFunction degrees
syn keyword chdrBuiltinFunction determinant
syn keyword chdrBuiltinFunction distance
syn keyword chdrBuiltinFunction dot
syn keyword chdrBuiltinFunction equal
syn keyword chdrBuiltinFunction exp
syn keyword chdrBuiltinFunction exp2
syn keyword chdrBuiltinFunction faceforward
syn keyword chdrBuiltinFunction findLSB
syn keyword chdrBuiltinFunction findMSB
syn keyword chdrBuiltinFunction floatBitsToInt
syn keyword chdrBuiltinFunction floatBitsToUint
syn keyword chdrBuiltinFunction floor
syn keyword chdrBuiltinFunction fma
syn keyword chdrBuiltinFunction fract
syn keyword chdrBuiltinFunction frexp
syn keyword chdrBuiltinFunction ftransform
syn keyword chdrBuiltinFunction fwidth
syn keyword chdrBuiltinFunction fwidthCoarse
syn keyword chdrBuiltinFunction fwidthFine
syn keyword chdrBuiltinFunction greaterThan
syn keyword chdrBuiltinFunction greaterThanEqual
syn keyword chdrBuiltinFunction groupMemoryBarrier
syn keyword chdrBuiltinFunction imageAtomicAdd
syn keyword chdrBuiltinFunction imageAtomicAnd
syn keyword chdrBuiltinFunction imageAtomicCompSwap
syn keyword chdrBuiltinFunction imageAtomicExchange
syn keyword chdrBuiltinFunction imageAtomicMax
syn keyword chdrBuiltinFunction imageAtomicMin
syn keyword chdrBuiltinFunction imageAtomicOr
syn keyword chdrBuiltinFunction imageAtomicXor
syn keyword chdrBuiltinFunction imageLoad
syn keyword chdrBuiltinFunction imageSize
syn keyword chdrBuiltinFunction imageStore
syn keyword chdrBuiltinFunction imulExtended
syn keyword chdrBuiltinFunction intBitsToFloat
syn keyword chdrBuiltinFunction interpolateAtCentroid
syn keyword chdrBuiltinFunction interpolateAtOffset
syn keyword chdrBuiltinFunction interpolateAtSample
syn keyword chdrBuiltinFunction inverse
syn keyword chdrBuiltinFunction inversesqrt
syn keyword chdrBuiltinFunction isinf
syn keyword chdrBuiltinFunction isnan
syn keyword chdrBuiltinFunction ldexp
syn keyword chdrBuiltinFunction length
syn keyword chdrBuiltinFunction lessThan
syn keyword chdrBuiltinFunction lessThanEqual
syn keyword chdrBuiltinFunction log
syn keyword chdrBuiltinFunction log2
syn keyword chdrBuiltinFunction matrixCompMult
syn keyword chdrBuiltinFunction max
syn keyword chdrBuiltinFunction memoryBarrier
syn keyword chdrBuiltinFunction memoryBarrierAtomicCounter
syn keyword chdrBuiltinFunction memoryBarrierBuffer
syn keyword chdrBuiltinFunction memoryBarrierImage
syn keyword chdrBuiltinFunction memoryBarrierShared
syn keyword chdrBuiltinFunction min
syn keyword chdrBuiltinFunction mix
syn keyword chdrBuiltinFunction mod
syn keyword chdrBuiltinFunction modf
syn keyword chdrBuiltinFunction noise1
syn keyword chdrBuiltinFunction noise2
syn keyword chdrBuiltinFunction noise3
syn keyword chdrBuiltinFunction noise4
syn keyword chdrBuiltinFunction normalize
syn keyword chdrBuiltinFunction not
syn keyword chdrBuiltinFunction notEqual
syn keyword chdrBuiltinFunction outerProduct
syn keyword chdrBuiltinFunction packDouble2x32
syn keyword chdrBuiltinFunction packHalf2x16
syn keyword chdrBuiltinFunction packSnorm2x16
syn keyword chdrBuiltinFunction packSnorm4x8
syn keyword chdrBuiltinFunction packUnorm2x16
syn keyword chdrBuiltinFunction packUnorm4x8
syn keyword chdrBuiltinFunction pow
syn keyword chdrBuiltinFunction radians
syn keyword chdrBuiltinFunction reflect
syn keyword chdrBuiltinFunction refract
syn keyword chdrBuiltinFunction round
syn keyword chdrBuiltinFunction roundEven
syn keyword chdrBuiltinFunction shadow1D
syn keyword chdrBuiltinFunction shadow1DLod
syn keyword chdrBuiltinFunction shadow1DProj
syn keyword chdrBuiltinFunction shadow1DProjLod
syn keyword chdrBuiltinFunction shadow2D
syn keyword chdrBuiltinFunction shadow2DLod
syn keyword chdrBuiltinFunction shadow2DProj
syn keyword chdrBuiltinFunction shadow2DProjLod
syn keyword chdrBuiltinFunction sign
syn keyword chdrBuiltinFunction sin
syn keyword chdrBuiltinFunction sinh
syn keyword chdrBuiltinFunction smoothstep
syn keyword chdrBuiltinFunction sqrt
syn keyword chdrBuiltinFunction step
syn keyword chdrBuiltinFunction tan
syn keyword chdrBuiltinFunction tanh
syn keyword chdrBuiltinFunction texelFetch
syn keyword chdrBuiltinFunction texelFetchOffset
syn keyword chdrBuiltinFunction texture
syn keyword chdrBuiltinFunction texture1D
syn keyword chdrBuiltinFunction texture1DLod
syn keyword chdrBuiltinFunction texture1DProj
syn keyword chdrBuiltinFunction texture1DProjLod
syn keyword chdrBuiltinFunction texture2D
syn keyword chdrBuiltinFunction texture2DLod
syn keyword chdrBuiltinFunction texture2DProj
syn keyword chdrBuiltinFunction texture2DProjLod
syn keyword chdrBuiltinFunction texture3D
syn keyword chdrBuiltinFunction texture3DLod
syn keyword chdrBuiltinFunction texture3DProj
syn keyword chdrBuiltinFunction texture3DProjLod
syn keyword chdrBuiltinFunction textureCube
syn keyword chdrBuiltinFunction textureCubeLod
syn keyword chdrBuiltinFunction textureGather
syn keyword chdrBuiltinFunction textureGatherOffset
syn keyword chdrBuiltinFunction textureGatherOffsets
syn keyword chdrBuiltinFunction textureGrad
syn keyword chdrBuiltinFunction textureGradOffset
syn keyword chdrBuiltinFunction textureLod
syn keyword chdrBuiltinFunction textureLodOffset
syn keyword chdrBuiltinFunction textureOffset
syn keyword chdrBuiltinFunction textureProj
syn keyword chdrBuiltinFunction textureProjGrad
syn keyword chdrBuiltinFunction textureProjGradOffset
syn keyword chdrBuiltinFunction textureProjLod
syn keyword chdrBuiltinFunction textureProjLodOffset
syn keyword chdrBuiltinFunction textureProjOffset
syn keyword chdrBuiltinFunction textureQueryLevels
syn keyword chdrBuiltinFunction textureQueryLod
syn keyword chdrBuiltinFunction textureSize
syn keyword chdrBuiltinFunction transpose
syn keyword chdrBuiltinFunction trunc
syn keyword chdrBuiltinFunction uaddCarry
syn keyword chdrBuiltinFunction uintBitsToFloat
syn keyword chdrBuiltinFunction umulExtended
syn keyword chdrBuiltinFunction unpackDouble2x32
syn keyword chdrBuiltinFunction unpackHalf2x16
syn keyword chdrBuiltinFunction unpackSnorm2x16
syn keyword chdrBuiltinFunction unpackSnorm4x8
syn keyword chdrBuiltinFunction unpackUnorm2x16
syn keyword chdrBuiltinFunction unpackUnorm4x8
syn keyword chdrBuiltinFunction usubBorrow

syn keyword chdrBuiltinFunction map_vertex
syn keyword chdrBuiltinFunction concat_map_prim
syn keyword chdrBuiltinFunction map_frag_data
syn keyword chdrBuiltinFunction yield_vertex
syn keyword chdrBuiltinFunction yield_primitive

hi def link chdrUse             Special
hi def link chdrConditional     Conditional
hi def link chdrRepeat          Repeat
hi def link chdrStatement       Statement
hi def link chdrTodo            Todo
hi def link chdrCommentL        chdrComment
hi def link chdrCommentStart    chdrComment
hi def link chdrComment         Comment
hi def link chdrPreCondit       PreCondit
hi def link chdrDefine          Define
hi def link chdrTokenConcat     chdrPreProc
hi def link chdrPredefinedMacro Macro
hi def link chdrPreProc         PreProc
hi def link chdrBoolean         Boolean
hi def link chdrDecimalInt      chdrInteger
hi def link chdrOctalInt        chdrInteger
hi def link chdrHexInt          chdrInteger
hi def link chdrInteger         Number
hi def link chdrFloat           Float
hi def link chdrIdentifierPrime chdrIdentifier
hi def link chdrIdentifier      Identifier
hi def link chdrStructure       Structure
hi def link chdrType            Type
hi def link chdrQualifier       StorageClass
hi def link chdrBuiltinConstant Constant
hi def link chdrBuiltinFunction Function
hi def link chdrBuiltinVariable Identifier
hi def link chdrSwizzle         Identifier

if !exists("b:current_syntax")
  let b:current_syntax = "chdr"
endif

" vim:set sts=2 sw=2 :
