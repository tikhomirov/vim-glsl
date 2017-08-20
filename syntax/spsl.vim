" Language: Spectra Shading Language
" Maintainer: Sergey Tikhomirov <sergey@tikhomirov.io>
" Maintainer: Dimitri Sabadie <dimitri.sabadie@gmail.com>

if exists("b:current_syntax") && b:current_syntax == "spsl"
  finish
endif

" Modules
syn keyword spslFrom from
syn keyword spslImport import

" Statements
syn keyword spslConditional if else switch case default
syn keyword spslRepeat      for while do
syn keyword spslStatement   discard return break continue

" Comments
syn keyword spslTodo     contained TODO FIXME XXX NOTE
syn region  spslCommentL start="//" skip="\\$" end="$" keepend contains=spslTodo,@Spell
syn region  spslComment  matchgroup=spslCommentStart start="/\*" end="\*/" extend contains=spslTodo,@Spell

" Preprocessor
syn region  spslPreCondit       start="^\s*#\s*\(if\|ifdef\|ifndef\|else\|elif\|endif\)" skip="\\$" end="$" keepend
syn region  spslDefine          start="^\s*#\s*\(define\|undef\)" skip="\\$" end="$" keepend
syn keyword spslTokenConcat     ##
syn keyword spslPredefinedMacro __LINE__ __FILE__ __VERSION__ GL_ES
syn region  spslPreProc         start="^\s*#\s*\(error\|pragma\|extension\|version\|line\)" skip="\\$" end="$" keepend

" Boolean Constants
syn keyword spslBoolean true false

" Integer Numbers
syn match spslDecimalInt display "\<\(0\|[1-9]\d*\)[uU]\?"
syn match spslOctalInt   display "\<0\o\+[uU]\?"
syn match spslHexInt     display "\<0[xX]\x\+[uU]\?"

" Float Numbers
syn match spslFloat display "\<\d\+\.\([eE][+-]\=\d\+\)\=\(lf\|LF\|f\|F\)\="
syn match spslFloat display "\<\.\d\+\([eE][+-]\=\d\+\)\=\(lf\|LF\|f\|F\)\="
syn match spslFloat display "\<\d\+[eE][+-]\=\d\+\(lf\|LF\|f\|F\)\="
syn match spslFloat display "\<\d\+\.\d\+\([eE][+-]\=\d\+\)\=\(lf\|LF\|f\|F\)\="

" Swizzles
syn match spslSwizzle display /\.[xyzw]\{1,4\}\>/
syn match spslSwizzle display /\.[rgba]\{1,4\}\>/
syn match spslSwizzle display /\.[stpq]\{1,4\}\>/

" Structure
syn keyword spslStructure struct nextgroup=spslIdentifier skipwhite skipempty

syn match spslIdentifier contains=spslIdentifierPrime "\%([a-zA-Z_]\)\%([a-zA-Z0-9_]\)*" display contained

" Types
syn keyword spslType atomic_uint
syn keyword spslType bool
syn keyword spslType bvec2
syn keyword spslType bvec3
syn keyword spslType bvec4
syn keyword spslType dmat2
syn keyword spslType dmat2x2
syn keyword spslType dmat2x3
syn keyword spslType dmat2x4
syn keyword spslType dmat3
syn keyword spslType dmat3x2
syn keyword spslType dmat3x3
syn keyword spslType dmat3x4
syn keyword spslType dmat4
syn keyword spslType dmat4x2
syn keyword spslType dmat4x3
syn keyword spslType dmat4x4
syn keyword spslType double
syn keyword spslType dvec2
syn keyword spslType dvec3
syn keyword spslType dvec4
syn keyword spslType float
syn keyword spslType iimage1D
syn keyword spslType iimage1DArray
syn keyword spslType iimage2D
syn keyword spslType iimage2DArray
syn keyword spslType iimage2DMS
syn keyword spslType iimage2DMSArray
syn keyword spslType iimage2DRect
syn keyword spslType iimage3D
syn keyword spslType iimageBuffer
syn keyword spslType iimageCube
syn keyword spslType iimageCubeArray
syn keyword spslType image1D
syn keyword spslType image1DArray
syn keyword spslType image2D
syn keyword spslType image2DArray
syn keyword spslType image2DMS
syn keyword spslType image2DMSArray
syn keyword spslType image2DRect
syn keyword spslType image3D
syn keyword spslType imageBuffer
syn keyword spslType imageCube
syn keyword spslType imageCubeArray
syn keyword spslType int
syn keyword spslType isampler1D
syn keyword spslType isampler1DArray
syn keyword spslType isampler2D
syn keyword spslType isampler2DArray
syn keyword spslType isampler2DMS
syn keyword spslType isampler2DMSArray
syn keyword spslType isampler2DRect
syn keyword spslType isampler3D
syn keyword spslType isamplerBuffer
syn keyword spslType isamplerCube
syn keyword spslType isamplerCubeArray
syn keyword spslType ivec2
syn keyword spslType ivec3
syn keyword spslType ivec4
syn keyword spslType mat2
syn keyword spslType mat2x2
syn keyword spslType mat2x3
syn keyword spslType mat2x4
syn keyword spslType mat3
syn keyword spslType mat3x2
syn keyword spslType mat3x3
syn keyword spslType mat3x4
syn keyword spslType mat4
syn keyword spslType mat4x2
syn keyword spslType mat4x3
syn keyword spslType mat4x4
syn keyword spslType sampler1D
syn keyword spslType sampler1DArray
syn keyword spslType sampler1DArrayShadow
syn keyword spslType sampler1DShadow
syn keyword spslType sampler2D
syn keyword spslType sampler2DArray
syn keyword spslType sampler2DArrayShadow
syn keyword spslType sampler2DMS
syn keyword spslType sampler2DMSArray
syn keyword spslType sampler2DRect
syn keyword spslType sampler2DRectShadow
syn keyword spslType sampler2DShadow
syn keyword spslType sampler3D
syn keyword spslType samplerBuffer
syn keyword spslType samplerCube
syn keyword spslType samplerCubeArray
syn keyword spslType samplerCubeArrayShadow
syn keyword spslType samplerCubeShadow
syn keyword spslType uimage1D
syn keyword spslType uimage1DArray
syn keyword spslType uimage2D
syn keyword spslType uimage2DArray
syn keyword spslType uimage2DMS
syn keyword spslType uimage2DMSArray
syn keyword spslType uimage2DRect
syn keyword spslType uimage3D
syn keyword spslType uimageBuffer
syn keyword spslType uimageCube
syn keyword spslType uimageCubeArray
syn keyword spslType uint
syn keyword spslType usampler1D
syn keyword spslType usampler1DArray
syn keyword spslType usampler2D
syn keyword spslType usampler2DArray
syn keyword spslType usampler2DMS
syn keyword spslType usampler2DMSArray
syn keyword spslType usampler2DRect
syn keyword spslType usampler3D
syn keyword spslType usamplerBuffer
syn keyword spslType usamplerCube
syn keyword spslType usamplerCubeArray
syn keyword spslType uvec2
syn keyword spslType uvec3
syn keyword spslType uvec4
syn keyword spslType vec2
syn keyword spslType vec3
syn keyword spslType vec4
syn keyword spslType void

" Qualifiers
syn keyword spslQualifier align
syn keyword spslQualifier attribute
syn keyword spslQualifier binding
syn keyword spslQualifier buffer
syn keyword spslQualifier ccw
syn keyword spslQualifier centroid
syn keyword spslQualifier centroid varying
syn keyword spslQualifier coherent
syn keyword spslQualifier column_major
syn keyword spslQualifier const
syn keyword spslQualifier cw
syn keyword spslQualifier depth_any
syn keyword spslQualifier depth_greater
syn keyword spslQualifier depth_less
syn keyword spslQualifier depth_unchanged
syn keyword spslQualifier early_fragment_tests
syn keyword spslQualifier equal_spacing
syn keyword spslQualifier flat
syn keyword spslQualifier fractional_even_spacing
syn keyword spslQualifier fractional_odd_spacing
syn keyword spslQualifier highp
syn keyword spslQualifier in
syn keyword spslQualifier index
syn keyword spslQualifier inout
syn keyword spslQualifier invariant
syn keyword spslQualifier invocations
syn keyword spslQualifier isolines
syn keyword spslQualifier layout
syn keyword spslQualifier line_strip
syn keyword spslQualifier lines
syn keyword spslQualifier lines_adjacency
syn keyword spslQualifier local_size_x
syn keyword spslQualifier local_size_y
syn keyword spslQualifier local_size_z
syn keyword spslQualifier location
syn keyword spslQualifier lowp
syn keyword spslQualifier max_vertices
syn keyword spslQualifier mediump
syn keyword spslQualifier noperspective
syn keyword spslQualifier offset
syn keyword spslQualifier origin_upper_left
syn keyword spslQualifier out
syn keyword spslQualifier packed
syn keyword spslQualifier patch
syn keyword spslQualifier pixel_center_integer
syn keyword spslQualifier point_mode
syn keyword spslQualifier points
syn keyword spslQualifier precise
syn keyword spslQualifier precision
syn keyword spslQualifier quads
syn keyword spslQualifier r11f_g11f_b10f
syn keyword spslQualifier r16
syn keyword spslQualifier r16_snorm
syn keyword spslQualifier r16f
syn keyword spslQualifier r16i
syn keyword spslQualifier r16ui
syn keyword spslQualifier r32f
syn keyword spslQualifier r32i
syn keyword spslQualifier r32ui
syn keyword spslQualifier r8
syn keyword spslQualifier r8_snorm
syn keyword spslQualifier r8i
syn keyword spslQualifier r8ui
syn keyword spslQualifier readonly
syn keyword spslQualifier restrict
syn keyword spslQualifier rg16
syn keyword spslQualifier rg16_snorm
syn keyword spslQualifier rg16f
syn keyword spslQualifier rg16i
syn keyword spslQualifier rg16ui
syn keyword spslQualifier rg32f
syn keyword spslQualifier rg32i
syn keyword spslQualifier rg32ui
syn keyword spslQualifier rg8
syn keyword spslQualifier rg8_snorm
syn keyword spslQualifier rg8i
syn keyword spslQualifier rg8ui
syn keyword spslQualifier rgb10_a2
syn keyword spslQualifier rgb10_a2ui
syn keyword spslQualifier rgba16
syn keyword spslQualifier rgba16_snorm
syn keyword spslQualifier rgba16f
syn keyword spslQualifier rgba16i
syn keyword spslQualifier rgba16ui
syn keyword spslQualifier rgba32f
syn keyword spslQualifier rgba32i
syn keyword spslQualifier rgba32ui
syn keyword spslQualifier rgba8
syn keyword spslQualifier rgba8_snorm
syn keyword spslQualifier rgba8i
syn keyword spslQualifier rgba8ui
syn keyword spslQualifier row_major
syn keyword spslQualifier sample
syn keyword spslQualifier shared
syn keyword spslQualifier smooth
syn keyword spslQualifier std140
syn keyword spslQualifier std430
syn keyword spslQualifier stream
syn keyword spslQualifier triangle_strip
syn keyword spslQualifier triangles
syn keyword spslQualifier triangles_adjacency
syn keyword spslQualifier uniform
syn keyword spslQualifier varying
syn keyword spslQualifier vertices
syn keyword spslQualifier volatile
syn keyword spslQualifier writeonly
syn keyword spslQualifier xfb_buffer
syn keyword spslQualifier xfb_stride
syn keyword spslQualifier xfb_offset

" Built-in Constants
syn keyword spslBuiltinConstant gl_CullDistance
syn keyword spslBuiltinConstant gl_MaxAtomicCounterBindings
syn keyword spslBuiltinConstant gl_MaxAtomicCounterBufferSize
syn keyword spslBuiltinConstant gl_MaxClipDistances
syn keyword spslBuiltinConstant gl_MaxClipPlanes
syn keyword spslBuiltinConstant gl_MaxCombinedAtomicCounterBuffers
syn keyword spslBuiltinConstant gl_MaxCombinedAtomicCounters
syn keyword spslBuiltinConstant gl_MaxCombinedClipAndCullDistances
syn keyword spslBuiltinConstant gl_MaxCombinedImageUniforms
syn keyword spslBuiltinConstant gl_MaxCombinedImageUnitsAndFragmentOutputs
syn keyword spslBuiltinConstant gl_MaxCombinedShaderOutputResources
syn keyword spslBuiltinConstant gl_MaxCombinedTextureImageUnits
syn keyword spslBuiltinConstant gl_MaxComputeAtomicCounterBuffers
syn keyword spslBuiltinConstant gl_MaxComputeAtomicCounters
syn keyword spslBuiltinConstant gl_MaxComputeImageUniforms
syn keyword spslBuiltinConstant gl_MaxComputeTextureImageUnits
syn keyword spslBuiltinConstant gl_MaxComputeUniformComponents
syn keyword spslBuiltinConstant gl_MaxComputeWorkGroupCount
syn keyword spslBuiltinConstant gl_MaxComputeWorkGroupSize
syn keyword spslBuiltinConstant gl_MaxCullDistances
syn keyword spslBuiltinConstant gl_MaxDrawBuffers
syn keyword spslBuiltinConstant gl_MaxFragmentAtomicCounterBuffers
syn keyword spslBuiltinConstant gl_MaxFragmentAtomicCounters
syn keyword spslBuiltinConstant gl_MaxFragmentImageUniforms
syn keyword spslBuiltinConstant gl_MaxFragmentInputComponents
syn keyword spslBuiltinConstant gl_MaxFragmentInputVectors
syn keyword spslBuiltinConstant gl_MaxFragmentUniformComponents
syn keyword spslBuiltinConstant gl_MaxFragmentUniformVectors
syn keyword spslBuiltinConstant gl_MaxGeometryAtomicCounterBuffers
syn keyword spslBuiltinConstant gl_MaxGeometryAtomicCounters
syn keyword spslBuiltinConstant gl_MaxGeometryImageUniforms
syn keyword spslBuiltinConstant gl_MaxGeometryInputComponents
syn keyword spslBuiltinConstant gl_MaxGeometryOutputComponents
syn keyword spslBuiltinConstant gl_MaxGeometryOutputVertices
syn keyword spslBuiltinConstant gl_MaxGeometryTextureImageUnits
syn keyword spslBuiltinConstant gl_MaxGeometryTotalOutputComponents
syn keyword spslBuiltinConstant gl_MaxGeometryUniformComponents
syn keyword spslBuiltinConstant gl_MaxGeometryVaryingComponents
syn keyword spslBuiltinConstant gl_MaxImageSamples
syn keyword spslBuiltinConstant gl_MaxImageUnits
syn keyword spslBuiltinConstant gl_MaxLights
syn keyword spslBuiltinConstant gl_MaxPatchVertices
syn keyword spslBuiltinConstant gl_MaxProgramTexelOffset
syn keyword spslBuiltinConstant gl_MaxSamples
syn keyword spslBuiltinConstant gl_MaxTessControlAtomicCounterBuffers
syn keyword spslBuiltinConstant gl_MaxTessControlAtomicCounters
syn keyword spslBuiltinConstant gl_MaxTessControlImageUniforms
syn keyword spslBuiltinConstant gl_MaxTessControlInputComponents
syn keyword spslBuiltinConstant gl_MaxTessControlOutputComponents
syn keyword spslBuiltinConstant gl_MaxTessControlTextureImageUnits
syn keyword spslBuiltinConstant gl_MaxTessControlTotalOutputComponents
syn keyword spslBuiltinConstant gl_MaxTessControlUniformComponents
syn keyword spslBuiltinConstant gl_MaxTessEvaluationAtomicCounterBuffers
syn keyword spslBuiltinConstant gl_MaxTessEvaluationAtomicCounters
syn keyword spslBuiltinConstant gl_MaxTessEvaluationImageUniforms
syn keyword spslBuiltinConstant gl_MaxTessEvaluationInputComponents
syn keyword spslBuiltinConstant gl_MaxTessEvaluationOutputComponents
syn keyword spslBuiltinConstant gl_MaxTessEvaluationTextureImageUnits
syn keyword spslBuiltinConstant gl_MaxTessEvaluationUniformComponents
syn keyword spslBuiltinConstant gl_MaxTessGenLevel
syn keyword spslBuiltinConstant gl_MaxTessPatchComponents
syn keyword spslBuiltinConstant gl_MaxTextureCoords
syn keyword spslBuiltinConstant gl_MaxTextureImageUnits
syn keyword spslBuiltinConstant gl_MaxTextureUnits
syn keyword spslBuiltinConstant gl_MaxTransformFeedbackBuffers
syn keyword spslBuiltinConstant gl_MaxTransformFeedbackInterleavedComponents
syn keyword spslBuiltinConstant gl_MaxVaryingComponents
syn keyword spslBuiltinConstant gl_MaxVaryingFloats
syn keyword spslBuiltinConstant gl_MaxVaryingVectors
syn keyword spslBuiltinConstant gl_MaxVertexAtomicCounterBuffers
syn keyword spslBuiltinConstant gl_MaxVertexAtomicCounters
syn keyword spslBuiltinConstant gl_MaxVertexAttribs
syn keyword spslBuiltinConstant gl_MaxVertexImageUniforms
syn keyword spslBuiltinConstant gl_MaxVertexOutputComponents
syn keyword spslBuiltinConstant gl_MaxVertexOutputVectors
syn keyword spslBuiltinConstant gl_MaxVertexTextureImageUnits
syn keyword spslBuiltinConstant gl_MaxVertexUniformComponents
syn keyword spslBuiltinConstant gl_MaxVertexUniformVectors
syn keyword spslBuiltinConstant gl_MaxViewports
syn keyword spslBuiltinConstant gl_MinProgramTexelOffset

" Built-in Variables
syn keyword spslBuiltinVariable gl_BackColor
syn keyword spslBuiltinVariable gl_BackLightModelProduct
syn keyword spslBuiltinVariable gl_BackLightProduct
syn keyword spslBuiltinVariable gl_BackLightProduct
syn keyword spslBuiltinVariable gl_BackMaterial
syn keyword spslBuiltinVariable gl_BackSecondaryColor
syn keyword spslBuiltinVariable gl_ClipDistance
syn keyword spslBuiltinVariable gl_ClipPlane
syn keyword spslBuiltinVariable gl_ClipVertex
syn keyword spslBuiltinVariable gl_Color
syn keyword spslBuiltinVariable gl_DepthRange
syn keyword spslBuiltinVariable gl_EyePlaneQ
syn keyword spslBuiltinVariable gl_EyePlaneR
syn keyword spslBuiltinVariable gl_EyePlaneS
syn keyword spslBuiltinVariable gl_EyePlaneT
syn keyword spslBuiltinVariable gl_Fog
syn keyword spslBuiltinVariable gl_FogCoord
syn keyword spslBuiltinVariable gl_FogFragCoord
syn keyword spslBuiltinVariable gl_FragColor
syn keyword spslBuiltinVariable gl_FragCoord
syn keyword spslBuiltinVariable gl_FragData
syn keyword spslBuiltinVariable gl_FragDepth
syn keyword spslBuiltinVariable gl_FrontColor
syn keyword spslBuiltinVariable gl_FrontFacing
syn keyword spslBuiltinVariable gl_FrontLightModelProduct
syn keyword spslBuiltinVariable gl_FrontLightProduct
syn keyword spslBuiltinVariable gl_FrontMaterial
syn keyword spslBuiltinVariable gl_FrontSecondaryColor
syn keyword spslBuiltinVariable gl_GlobalInvocationID
syn keyword spslBuiltinVariable gl_HelperInvocation
syn keyword spslBuiltinVariable gl_InstanceID
syn keyword spslBuiltinVariable gl_InvocationID
syn keyword spslBuiltinVariable gl_Layer
syn keyword spslBuiltinVariable gl_LightModel
syn keyword spslBuiltinVariable gl_LightSource
syn keyword spslBuiltinVariable gl_LocalInvocationID
syn keyword spslBuiltinVariable gl_LocalInvocationIndex
syn keyword spslBuiltinVariable gl_ModelViewMatrix
syn keyword spslBuiltinVariable gl_ModelViewMatrixInverse
syn keyword spslBuiltinVariable gl_ModelViewMatrixInverseTranspose
syn keyword spslBuiltinVariable gl_ModelViewMatrixTranspose
syn keyword spslBuiltinVariable gl_ModelViewProjectionMatrix
syn keyword spslBuiltinVariable gl_ModelViewProjectionMatrixInverse
syn keyword spslBuiltinVariable gl_ModelViewProjectionMatrixInverseTranspose
syn keyword spslBuiltinVariable gl_ModelViewProjectionMatrixTranspose
syn keyword spslBuiltinVariable gl_MultiTexCoord0
syn keyword spslBuiltinVariable gl_MultiTexCoord1
syn keyword spslBuiltinVariable gl_MultiTexCoord2
syn keyword spslBuiltinVariable gl_MultiTexCoord3
syn keyword spslBuiltinVariable gl_MultiTexCoord4
syn keyword spslBuiltinVariable gl_MultiTexCoord5
syn keyword spslBuiltinVariable gl_MultiTexCoord6
syn keyword spslBuiltinVariable gl_MultiTexCoord7
syn keyword spslBuiltinVariable gl_Normal
syn keyword spslBuiltinVariable gl_NormalMatrix
syn keyword spslBuiltinVariable gl_NormalScale
syn keyword spslBuiltinVariable gl_NumSamples
syn keyword spslBuiltinVariable gl_NumWorkGroups
syn keyword spslBuiltinVariable gl_ObjectPlaneQ
syn keyword spslBuiltinVariable gl_ObjectPlaneR
syn keyword spslBuiltinVariable gl_ObjectPlaneS
syn keyword spslBuiltinVariable gl_ObjectPlaneT
syn keyword spslBuiltinVariable gl_PatchVerticesIn
syn keyword spslBuiltinVariable gl_Point
syn keyword spslBuiltinVariable gl_PointCoord
syn keyword spslBuiltinVariable gl_PointSize
syn keyword spslBuiltinVariable gl_Position
syn keyword spslBuiltinVariable gl_PrimitiveID
syn keyword spslBuiltinVariable gl_PrimitiveIDIn
syn keyword spslBuiltinVariable gl_ProjectionMatrix
syn keyword spslBuiltinVariable gl_ProjectionMatrixInverse
syn keyword spslBuiltinVariable gl_ProjectionMatrixInverseTranspose
syn keyword spslBuiltinVariable gl_ProjectionMatrixTranspose
syn keyword spslBuiltinVariable gl_SampleID
syn keyword spslBuiltinVariable gl_SampleMask
syn keyword spslBuiltinVariable gl_SampleMaskIn
syn keyword spslBuiltinVariable gl_SamplePosition
syn keyword spslBuiltinVariable gl_SecondaryColor
syn keyword spslBuiltinVariable gl_TessCoord
syn keyword spslBuiltinVariable gl_TessLevelInner
syn keyword spslBuiltinVariable gl_TessLevelOuter
syn keyword spslBuiltinVariable gl_TexCoord
syn keyword spslBuiltinVariable gl_TextureEnvColor
syn keyword spslBuiltinVariable gl_TextureMatrix
syn keyword spslBuiltinVariable gl_TextureMatrixInverse
syn keyword spslBuiltinVariable gl_TextureMatrixInverseTranspose
syn keyword spslBuiltinVariable gl_TextureMatrixTranspose
syn keyword spslBuiltinVariable gl_Vertex
syn keyword spslBuiltinVariable gl_VertexID
syn keyword spslBuiltinVariable gl_ViewportIndex
syn keyword spslBuiltinVariable gl_WorkGroupID
syn keyword spslBuiltinVariable gl_WorkGroupSize
syn keyword spslBuiltinVariable gl_in
syn keyword spslBuiltinVariable gl_out

" Built-in Functions
syn keyword spslBuiltinFunction EmitStreamVertex
syn keyword spslBuiltinFunction EmitVertex
syn keyword spslBuiltinFunction EndPrimitive
syn keyword spslBuiltinFunction EndStreamPrimitive
syn keyword spslBuiltinFunction abs
syn keyword spslBuiltinFunction acos
syn keyword spslBuiltinFunction acosh
syn keyword spslBuiltinFunction all
syn keyword spslBuiltinFunction any
syn keyword spslBuiltinFunction asin
syn keyword spslBuiltinFunction asinh
syn keyword spslBuiltinFunction atan
syn keyword spslBuiltinFunction atanh
syn keyword spslBuiltinFunction atomicAdd
syn keyword spslBuiltinFunction atomicAnd
syn keyword spslBuiltinFunction atomicCompSwap
syn keyword spslBuiltinFunction atomicCounter
syn keyword spslBuiltinFunction atomicCounterDecrement
syn keyword spslBuiltinFunction atomicCounterIncrement
syn keyword spslBuiltinFunction atomicExchange
syn keyword spslBuiltinFunction atomicMax
syn keyword spslBuiltinFunction atomicMin
syn keyword spslBuiltinFunction atomicOr
syn keyword spslBuiltinFunction atomicXor
syn keyword spslBuiltinFunction barrier
syn keyword spslBuiltinFunction bitCount
syn keyword spslBuiltinFunction bitfieldExtract
syn keyword spslBuiltinFunction bitfieldInsert
syn keyword spslBuiltinFunction bitfieldReverse
syn keyword spslBuiltinFunction ceil
syn keyword spslBuiltinFunction clamp
syn keyword spslBuiltinFunction cos
syn keyword spslBuiltinFunction cosh
syn keyword spslBuiltinFunction cross
syn keyword spslBuiltinFunction dFdx
syn keyword spslBuiltinFunction dFdxCoarse
syn keyword spslBuiltinFunction dFdxFine
syn keyword spslBuiltinFunction dFdy
syn keyword spslBuiltinFunction dFdyCoarse
syn keyword spslBuiltinFunction dFdyFine
syn keyword spslBuiltinFunction degrees
syn keyword spslBuiltinFunction determinant
syn keyword spslBuiltinFunction distance
syn keyword spslBuiltinFunction dot
syn keyword spslBuiltinFunction equal
syn keyword spslBuiltinFunction exp
syn keyword spslBuiltinFunction exp2
syn keyword spslBuiltinFunction faceforward
syn keyword spslBuiltinFunction findLSB
syn keyword spslBuiltinFunction findMSB
syn keyword spslBuiltinFunction floatBitsToInt
syn keyword spslBuiltinFunction floatBitsToUint
syn keyword spslBuiltinFunction floor
syn keyword spslBuiltinFunction fma
syn keyword spslBuiltinFunction fract
syn keyword spslBuiltinFunction frexp
syn keyword spslBuiltinFunction ftransform
syn keyword spslBuiltinFunction fwidth
syn keyword spslBuiltinFunction fwidthCoarse
syn keyword spslBuiltinFunction fwidthFine
syn keyword spslBuiltinFunction greaterThan
syn keyword spslBuiltinFunction greaterThanEqual
syn keyword spslBuiltinFunction groupMemoryBarrier
syn keyword spslBuiltinFunction imageAtomicAdd
syn keyword spslBuiltinFunction imageAtomicAnd
syn keyword spslBuiltinFunction imageAtomicCompSwap
syn keyword spslBuiltinFunction imageAtomicExchange
syn keyword spslBuiltinFunction imageAtomicMax
syn keyword spslBuiltinFunction imageAtomicMin
syn keyword spslBuiltinFunction imageAtomicOr
syn keyword spslBuiltinFunction imageAtomicXor
syn keyword spslBuiltinFunction imageLoad
syn keyword spslBuiltinFunction imageSize
syn keyword spslBuiltinFunction imageStore
syn keyword spslBuiltinFunction imulExtended
syn keyword spslBuiltinFunction intBitsToFloat
syn keyword spslBuiltinFunction interpolateAtCentroid
syn keyword spslBuiltinFunction interpolateAtOffset
syn keyword spslBuiltinFunction interpolateAtSample
syn keyword spslBuiltinFunction inverse
syn keyword spslBuiltinFunction inversesqrt
syn keyword spslBuiltinFunction isinf
syn keyword spslBuiltinFunction isnan
syn keyword spslBuiltinFunction ldexp
syn keyword spslBuiltinFunction length
syn keyword spslBuiltinFunction lessThan
syn keyword spslBuiltinFunction lessThanEqual
syn keyword spslBuiltinFunction log
syn keyword spslBuiltinFunction log2
syn keyword spslBuiltinFunction matrixCompMult
syn keyword spslBuiltinFunction max
syn keyword spslBuiltinFunction memoryBarrier
syn keyword spslBuiltinFunction memoryBarrierAtomicCounter
syn keyword spslBuiltinFunction memoryBarrierBuffer
syn keyword spslBuiltinFunction memoryBarrierImage
syn keyword spslBuiltinFunction memoryBarrierShared
syn keyword spslBuiltinFunction min
syn keyword spslBuiltinFunction mix
syn keyword spslBuiltinFunction mod
syn keyword spslBuiltinFunction modf
syn keyword spslBuiltinFunction noise1
syn keyword spslBuiltinFunction noise2
syn keyword spslBuiltinFunction noise3
syn keyword spslBuiltinFunction noise4
syn keyword spslBuiltinFunction normalize
syn keyword spslBuiltinFunction not
syn keyword spslBuiltinFunction notEqual
syn keyword spslBuiltinFunction outerProduct
syn keyword spslBuiltinFunction packDouble2x32
syn keyword spslBuiltinFunction packHalf2x16
syn keyword spslBuiltinFunction packSnorm2x16
syn keyword spslBuiltinFunction packSnorm4x8
syn keyword spslBuiltinFunction packUnorm2x16
syn keyword spslBuiltinFunction packUnorm4x8
syn keyword spslBuiltinFunction pow
syn keyword spslBuiltinFunction radians
syn keyword spslBuiltinFunction reflect
syn keyword spslBuiltinFunction refract
syn keyword spslBuiltinFunction round
syn keyword spslBuiltinFunction roundEven
syn keyword spslBuiltinFunction shadow1D
syn keyword spslBuiltinFunction shadow1DLod
syn keyword spslBuiltinFunction shadow1DProj
syn keyword spslBuiltinFunction shadow1DProjLod
syn keyword spslBuiltinFunction shadow2D
syn keyword spslBuiltinFunction shadow2DLod
syn keyword spslBuiltinFunction shadow2DProj
syn keyword spslBuiltinFunction shadow2DProjLod
syn keyword spslBuiltinFunction sign
syn keyword spslBuiltinFunction sin
syn keyword spslBuiltinFunction sinh
syn keyword spslBuiltinFunction smoothstep
syn keyword spslBuiltinFunction sqrt
syn keyword spslBuiltinFunction step
syn keyword spslBuiltinFunction tan
syn keyword spslBuiltinFunction tanh
syn keyword spslBuiltinFunction texelFetch
syn keyword spslBuiltinFunction texelFetchOffset
syn keyword spslBuiltinFunction texture
syn keyword spslBuiltinFunction texture1D
syn keyword spslBuiltinFunction texture1DLod
syn keyword spslBuiltinFunction texture1DProj
syn keyword spslBuiltinFunction texture1DProjLod
syn keyword spslBuiltinFunction texture2D
syn keyword spslBuiltinFunction texture2DLod
syn keyword spslBuiltinFunction texture2DProj
syn keyword spslBuiltinFunction texture2DProjLod
syn keyword spslBuiltinFunction texture3D
syn keyword spslBuiltinFunction texture3DLod
syn keyword spslBuiltinFunction texture3DProj
syn keyword spslBuiltinFunction texture3DProjLod
syn keyword spslBuiltinFunction textureCube
syn keyword spslBuiltinFunction textureCubeLod
syn keyword spslBuiltinFunction textureGather
syn keyword spslBuiltinFunction textureGatherOffset
syn keyword spslBuiltinFunction textureGatherOffsets
syn keyword spslBuiltinFunction textureGrad
syn keyword spslBuiltinFunction textureGradOffset
syn keyword spslBuiltinFunction textureLod
syn keyword spslBuiltinFunction textureLodOffset
syn keyword spslBuiltinFunction textureOffset
syn keyword spslBuiltinFunction textureProj
syn keyword spslBuiltinFunction textureProjGrad
syn keyword spslBuiltinFunction textureProjGradOffset
syn keyword spslBuiltinFunction textureProjLod
syn keyword spslBuiltinFunction textureProjLodOffset
syn keyword spslBuiltinFunction textureProjOffset
syn keyword spslBuiltinFunction textureQueryLevels
syn keyword spslBuiltinFunction textureQueryLod
syn keyword spslBuiltinFunction textureSize
syn keyword spslBuiltinFunction transpose
syn keyword spslBuiltinFunction trunc
syn keyword spslBuiltinFunction uaddCarry
syn keyword spslBuiltinFunction uintBitsToFloat
syn keyword spslBuiltinFunction umulExtended
syn keyword spslBuiltinFunction unpackDouble2x32
syn keyword spslBuiltinFunction unpackHalf2x16
syn keyword spslBuiltinFunction unpackSnorm2x16
syn keyword spslBuiltinFunction unpackSnorm4x8
syn keyword spslBuiltinFunction unpackUnorm2x16
syn keyword spslBuiltinFunction unpackUnorm4x8
syn keyword spslBuiltinFunction usubBorrow
syn keyword spslBuiltinFunction map_vertex
syn keyword spslBuiltinFunction map_frag_data

hi def link spslFrom            Statement
hi def link spslImport          Special
hi def link spslConditional     Conditional
hi def link spslRepeat          Repeat
hi def link spslStatement       Statement
hi def link spslTodo            Todo
hi def link spslCommentL        spslComment
hi def link spslCommentStart    spslComment
hi def link spslComment         Comment
hi def link spslPreCondit       PreCondit
hi def link spslDefine          Define
hi def link spslTokenConcat     spslPreProc
hi def link spslPredefinedMacro Macro
hi def link spslPreProc         PreProc
hi def link spslBoolean         Boolean
hi def link spslDecimalInt      spslInteger
hi def link spslOctalInt        spslInteger
hi def link spslHexInt          spslInteger
hi def link spslInteger         Number
hi def link spslFloat           Float
hi def link spslIdentifierPrime spslIdentifier
hi def link spslIdentifier      Identifier
hi def link spslStructure       Structure
hi def link spslType            Type
hi def link spslQualifier       StorageClass
hi def link spslBuiltinConstant Constant
hi def link spslBuiltinFunction Function
hi def link spslBuiltinVariable Identifier
hi def link spslSwizzle         Identifier

if !exists("b:current_syntax")
  let b:current_syntax = "spsl"
endif

" vim:set sts=2 sw=2 :
