//#include <required.glsl> // [HACK 4/6/2023] See SCC shader_merger.cpp
//SG_REFLECTION_BEGIN(200)
//attribute vec4 boneData 5
//attribute vec3 blendShape0Pos 6
//attribute vec3 blendShape0Normal 12
//attribute vec3 blendShape1Pos 7
//attribute vec3 blendShape1Normal 13
//attribute vec3 blendShape2Pos 8
//attribute vec3 blendShape2Normal 14
//attribute vec3 blendShape3Pos 9
//attribute vec3 blendShape4Pos 10
//attribute vec3 blendShape5Pos 11
//attribute vec4 position 0
//attribute vec3 normal 1
//attribute vec4 tangent 2
//attribute vec2 texture0 3
//attribute vec2 texture1 4
//attribute vec4 color 18
//attribute vec3 positionNext 15
//attribute vec3 positionPrevious 16
//attribute vec4 strandProperties 17
//sampler sampler Tweak_N167SmpSC 0:20
//sampler sampler Tweak_N168SmpSC 0:21
//sampler sampler Tweak_N169SmpSC 0:22
//sampler sampler intensityTextureSmpSC 0:23
//sampler sampler sc_EnvmapDiffuseSmpSC 0:24
//sampler sampler sc_EnvmapSpecularSmpSC 0:25
//sampler sampler sc_OITCommonSampler 0:26
//sampler sampler sc_SSAOTextureSmpSC 0:27
//sampler sampler sc_ScreenTextureSmpSC 0:28
//sampler sampler sc_ShadowTextureSmpSC 0:29
//sampler sampler transformPosRotTexSmpSC 0:31
//sampler sampler transformScaleTexSmpSC 0:32
//texture texture2D Tweak_N167 0:0:0:20
//texture texture2D Tweak_N168 0:1:0:21
//texture texture2D Tweak_N169 0:2:0:22
//texture texture2D intensityTexture 0:3:0:23
//texture texture2D sc_EnvmapDiffuse 0:4:0:24
//texture texture2D sc_EnvmapSpecular 0:5:0:25
//texture texture2D sc_OITAlpha0 0:6:0:26
//texture texture2D sc_OITAlpha1 0:7:0:26
//texture texture2D sc_OITDepthHigh0 0:8:0:26
//texture texture2D sc_OITDepthHigh1 0:9:0:26
//texture texture2D sc_OITDepthLow0 0:10:0:26
//texture texture2D sc_OITDepthLow1 0:11:0:26
//texture texture2D sc_OITFilteredDepthBoundsTexture 0:12:0:26
//texture texture2D sc_OITFrontDepthTexture 0:13:0:26
//texture texture2D sc_SSAOTexture 0:14:0:27
//texture texture2D sc_ScreenTexture 0:15:0:28
//texture texture2D sc_ShadowTexture 0:16:0:29
//texture texture2D transformPosRotTex 0:18:0:31
//texture texture2D transformScaleTex 0:19:0:32
//spec_const bool BLEND_MODE_AVERAGE 0 0
//spec_const bool BLEND_MODE_BRIGHT 1 0
//spec_const bool BLEND_MODE_COLOR 2 0
//spec_const bool BLEND_MODE_COLOR_BURN 3 0
//spec_const bool BLEND_MODE_COLOR_DODGE 4 0
//spec_const bool BLEND_MODE_DARKEN 5 0
//spec_const bool BLEND_MODE_DIFFERENCE 6 0
//spec_const bool BLEND_MODE_DIVIDE 7 0
//spec_const bool BLEND_MODE_DIVISION 8 0
//spec_const bool BLEND_MODE_EXCLUSION 9 0
//spec_const bool BLEND_MODE_FORGRAY 10 0
//spec_const bool BLEND_MODE_HARD_GLOW 11 0
//spec_const bool BLEND_MODE_HARD_LIGHT 12 0
//spec_const bool BLEND_MODE_HARD_MIX 13 0
//spec_const bool BLEND_MODE_HARD_PHOENIX 14 0
//spec_const bool BLEND_MODE_HARD_REFLECT 15 0
//spec_const bool BLEND_MODE_HUE 16 0
//spec_const bool BLEND_MODE_INTENSE 17 0
//spec_const bool BLEND_MODE_LIGHTEN 18 0
//spec_const bool BLEND_MODE_LINEAR_LIGHT 19 0
//spec_const bool BLEND_MODE_LUMINOSITY 20 0
//spec_const bool BLEND_MODE_NEGATION 21 0
//spec_const bool BLEND_MODE_NOTBRIGHT 22 0
//spec_const bool BLEND_MODE_OVERLAY 23 0
//spec_const bool BLEND_MODE_PIN_LIGHT 24 0
//spec_const bool BLEND_MODE_REALISTIC 25 0
//spec_const bool BLEND_MODE_SATURATION 26 0
//spec_const bool BLEND_MODE_SOFT_LIGHT 27 0
//spec_const bool BLEND_MODE_SUBTRACT 28 0
//spec_const bool BLEND_MODE_VIVID_LIGHT 29 0
//spec_const bool ENABLE_STIPPLE_PATTERN_TEST 30 0
//spec_const bool SC_DISABLE_FRUSTUM_CULLING 31 0
//spec_const bool SC_GL_FRAGMENT_PRECISION_HIGH 32 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_Tweak_N167 33 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_Tweak_N168 34 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_Tweak_N169 35 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 36 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_transformPosRotTex 37 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_transformScaleTex 38 0
//spec_const bool SC_USE_UV_MIN_MAX_Tweak_N167 39 0
//spec_const bool SC_USE_UV_MIN_MAX_Tweak_N168 40 0
//spec_const bool SC_USE_UV_MIN_MAX_Tweak_N169 41 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 42 0
//spec_const bool SC_USE_UV_MIN_MAX_transformPosRotTex 43 0
//spec_const bool SC_USE_UV_MIN_MAX_transformScaleTex 44 0
//spec_const bool SC_USE_UV_TRANSFORM_Tweak_N167 45 0
//spec_const bool SC_USE_UV_TRANSFORM_Tweak_N168 46 0
//spec_const bool SC_USE_UV_TRANSFORM_Tweak_N169 47 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 48 0
//spec_const bool SC_USE_UV_TRANSFORM_transformPosRotTex 49 0
//spec_const bool SC_USE_UV_TRANSFORM_transformScaleTex 50 0
//spec_const bool Tweak_N163 51 0
//spec_const bool Tweak_N166 52 0
//spec_const bool Tweak_N167HasSwappedViews 53 0
//spec_const bool Tweak_N168HasSwappedViews 54 0
//spec_const bool Tweak_N169HasSwappedViews 55 0
//spec_const bool Tweak_N177 56 0
//spec_const bool Tweak_N45 57 0
//spec_const bool UseViewSpaceDepthVariant 58 1
//spec_const bool intensityTextureHasSwappedViews 59 0
//spec_const bool sc_BlendMode_Add 60 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 61 0
//spec_const bool sc_BlendMode_AlphaTest 62 0
//spec_const bool sc_BlendMode_AlphaToCoverage 63 0
//spec_const bool sc_BlendMode_ColoredGlass 64 0
//spec_const bool sc_BlendMode_Custom 65 0
//spec_const bool sc_BlendMode_Max 66 0
//spec_const bool sc_BlendMode_Min 67 0
//spec_const bool sc_BlendMode_Multiply 68 0
//spec_const bool sc_BlendMode_MultiplyOriginal 69 0
//spec_const bool sc_BlendMode_Normal 70 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 71 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 72 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 73 0
//spec_const bool sc_BlendMode_Screen 74 0
//spec_const bool sc_BlendMode_Software 75 0
//spec_const bool sc_CanUseStandardDerivatives 76 0
//spec_const bool sc_CanUseTextureLod 77 0
//spec_const bool sc_DepthOnly 78 0
//spec_const bool sc_EnvmapDiffuseHasSwappedViews 79 0
//spec_const bool sc_EnvmapSpecularHasSwappedViews 80 0
//spec_const bool sc_FramebufferFetch 81 0
//spec_const bool sc_GetFramebufferColorInvalidUsageMarker 82 0
//spec_const bool sc_HasDiffuseEnvmap 83 0
//spec_const bool sc_IsEditor 84 0
//spec_const bool sc_LightEstimation 85 0
//spec_const bool sc_MotionVectorsPass 86 0
//spec_const bool sc_OITCompositingPass 87 0
//spec_const bool sc_OITDepthBoundsPass 88 0
//spec_const bool sc_OITDepthGatherPass 89 0
//spec_const bool sc_OITDepthPrepass 90 0
//spec_const bool sc_OITFrontLayerPass 91 0
//spec_const bool sc_OITMaxLayers4Plus1 92 0
//spec_const bool sc_OITMaxLayers8 93 0
//spec_const bool sc_OITMaxLayersVisualizeLayerCount 94 0
//spec_const bool sc_ProjectiveShadowsCaster 95 0
//spec_const bool sc_ProjectiveShadowsReceiver 96 0
//spec_const bool sc_RenderAlphaToColor 97 0
//spec_const bool sc_SSAOEnabled 98 0
//spec_const bool sc_ScreenTextureHasSwappedViews 99 0
//spec_const bool sc_ShaderComplexityAnalyzer 100 0
//spec_const bool sc_TAAEnabled 101 0
//spec_const bool sc_UseFramebufferFetchMarker 102 0
//spec_const bool sc_VertexBlending 103 0
//spec_const bool sc_VertexBlendingUseNormals 104 0
//spec_const bool transformPosRotTexHasSwappedViews 105 0
//spec_const bool transformScaleTexHasSwappedViews 106 0
//spec_const int SC_DEVICE_CLASS 107 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_Tweak_N167 108 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_Tweak_N168 109 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_Tweak_N169 110 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 111 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex 112 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_transformScaleTex 113 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_Tweak_N167 114 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_Tweak_N168 115 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_Tweak_N169 116 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 117 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex 118 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_transformScaleTex 119 -1
//spec_const int Tweak_N167Layout 120 0
//spec_const int Tweak_N168Layout 121 0
//spec_const int Tweak_N169Layout 122 0
//spec_const int intensityTextureLayout 123 0
//spec_const int sc_AmbientLightMode0 124 0
//spec_const int sc_AmbientLightMode1 125 0
//spec_const int sc_AmbientLightMode2 126 0
//spec_const int sc_AmbientLightMode_Constant 127 0
//spec_const int sc_AmbientLightMode_EnvironmentMap 128 0
//spec_const int sc_AmbientLightMode_FromCamera 129 0
//spec_const int sc_AmbientLightMode_SphericalHarmonics 130 0
//spec_const int sc_AmbientLightsCount 131 0
//spec_const int sc_DepthBufferMode 132 0
//spec_const int sc_DirectionalLightsCount 133 0
//spec_const int sc_EnvLightMode 134 0
//spec_const int sc_EnvmapDiffuseLayout 135 0
//spec_const int sc_EnvmapSpecularLayout 136 0
//spec_const int sc_LightEstimationSGCount 137 0
//spec_const int sc_MaxTextureImageUnits 138 0
//spec_const int sc_PointLightsCount 139 0
//spec_const int sc_RenderingSpace 140 -1
//spec_const int sc_ScreenTextureLayout 141 0
//spec_const int sc_ShaderCacheConstant 142 0
//spec_const int sc_SkinBonesCount 143 0
//spec_const int sc_StereoRenderingMode 144 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 145 0
//spec_const int sc_StereoViewID 146 0
//spec_const int transformPosRotTexLayout 147 0
//spec_const int transformScaleTexLayout 148 0
//SG_REFLECTION_END
#if defined VERTEX_SHADER
#if 0
NGS_BACKEND_SHADER_FLAGS_BEGIN__
NGS_BACKEND_SHADER_FLAGS_END__
#endif
#define SC_DISABLE_FRUSTUM_CULLING 1
#define SC_ENABLE_INSTANCED_RENDERING
#define sc_StereoRendering_Disabled 0
#define sc_StereoRendering_InstancedClipped 1
#define sc_StereoRendering_Multiview 2
#ifdef GL_ES
    #define SC_GLES_VERSION_20 2000
    #define SC_GLES_VERSION_30 3000
    #define SC_GLES_VERSION_31 3100
    #define SC_GLES_VERSION_32 3200
#endif
#ifdef VERTEX_SHADER
    #define scOutPos(clipPosition) gl_Position=clipPosition
    #define MAIN main
#endif
#ifdef SC_ENABLE_INSTANCED_RENDERING
    #ifndef sc_EnableInstancing
        #define sc_EnableInstancing 1
    #endif
#endif
#define mod(x,y) (x-y*floor((x+1e-6)/y))
#if defined(GL_ES)&&(__VERSION__<300)&&!defined(GL_OES_standard_derivatives)
#define dFdx(A) (A)
#define dFdy(A) (A)
#define fwidth(A) (A)
#endif
#if __VERSION__<300
#define isinf(x) (x!=0.0&&x*2.0==x ? true : false)
#define isnan(x) (x>0.0||x<0.0||x==0.0 ? false : true)
#define inverse(M) M
#endif
#ifdef sc_EnableFeatureLevelES3
    #ifdef sc_EnableStereoClipDistance
        #if defined(GL_APPLE_clip_distance)
            #extension GL_APPLE_clip_distance : require
        #elif defined(GL_EXT_clip_cull_distance)
            #extension GL_EXT_clip_cull_distance : require
        #else
            #error Clip distance is requested but not supported by this device.
        #endif
    #endif
#else
    #ifdef sc_EnableStereoClipDistance
        #error Clip distance is requested but not supported by this device.
    #endif
#endif
#ifdef sc_EnableFeatureLevelES3
    #ifdef VERTEX_SHADER
        #define attribute in
        #define varying out
    #endif
    #ifdef FRAGMENT_SHADER
        #define varying in
    #endif
    #define gl_FragColor sc_FragData0
    #define texture2D texture
    #define texture2DLod textureLod
    #define texture2DLodEXT textureLod
    #define textureCubeLodEXT textureLod
    #define sc_CanUseTextureLod 1
#else
    #ifdef FRAGMENT_SHADER
        #if defined(GL_EXT_shader_texture_lod)
            #extension GL_EXT_shader_texture_lod : require
            #define sc_CanUseTextureLod 1
            #define texture2DLod texture2DLodEXT
        #endif
    #endif
#endif
#if defined(sc_EnableMultiviewStereoRendering)
    #define sc_StereoRenderingMode sc_StereoRendering_Multiview
    #define sc_NumStereoViews 2
    #extension GL_OVR_multiview2 : require
    #ifdef VERTEX_SHADER
        #ifdef sc_EnableInstancingFallback
            #define sc_GlobalInstanceID (sc_FallbackInstanceID*2+gl_InstanceID)
        #else
            #define sc_GlobalInstanceID gl_InstanceID
        #endif
        #define sc_LocalInstanceID sc_GlobalInstanceID
        #define sc_StereoViewID int(gl_ViewID_OVR)
    #endif
#elif defined(sc_EnableInstancedClippedStereoRendering)
    #ifndef sc_EnableInstancing
        #error Instanced-clipped stereo rendering requires enabled instancing.
    #endif
    #ifndef sc_EnableStereoClipDistance
        #define sc_StereoRendering_IsClipDistanceEnabled 0
    #else
        #define sc_StereoRendering_IsClipDistanceEnabled 1
    #endif
    #define sc_StereoRenderingMode sc_StereoRendering_InstancedClipped
    #define sc_NumStereoClipPlanes 1
    #define sc_NumStereoViews 2
    #ifdef VERTEX_SHADER
        #ifdef sc_EnableInstancingFallback
            #define sc_GlobalInstanceID (sc_FallbackInstanceID*2+gl_InstanceID)
        #else
            #define sc_GlobalInstanceID gl_InstanceID
        #endif
        #ifdef sc_EnableFeatureLevelES3
            #define sc_LocalInstanceID (sc_GlobalInstanceID/2)
            #define sc_StereoViewID (sc_GlobalInstanceID%2)
        #else
            #define sc_LocalInstanceID int(sc_GlobalInstanceID/2.0)
            #define sc_StereoViewID int(mod(sc_GlobalInstanceID,2.0))
        #endif
    #endif
#else
    #define sc_StereoRenderingMode sc_StereoRendering_Disabled
#endif
#ifdef VERTEX_SHADER
    #ifdef sc_EnableInstancing
        #ifdef GL_ES
            #if defined(sc_EnableFeatureLevelES2)&&!defined(GL_EXT_draw_instanced)
                #define gl_InstanceID (0)
            #endif
        #else
            #if defined(sc_EnableFeatureLevelES2)&&!defined(GL_EXT_draw_instanced)&&!defined(GL_ARB_draw_instanced)&&!defined(GL_EXT_gpu_shader4)
                #define gl_InstanceID (0)
            #endif
        #endif
        #ifdef GL_ARB_draw_instanced
            #extension GL_ARB_draw_instanced : require
            #define gl_InstanceID gl_InstanceIDARB
        #endif
        #ifdef GL_EXT_draw_instanced
            #extension GL_EXT_draw_instanced : require
            #define gl_InstanceID gl_InstanceIDEXT
        #endif
        #ifndef sc_InstanceID
            #define sc_InstanceID gl_InstanceID
        #endif
        #ifndef sc_GlobalInstanceID
            #ifdef sc_EnableInstancingFallback
                #define sc_GlobalInstanceID (sc_FallbackInstanceID)
                #define sc_LocalInstanceID (sc_FallbackInstanceID)
            #else
                #define sc_GlobalInstanceID gl_InstanceID
                #define sc_LocalInstanceID gl_InstanceID
            #endif
        #endif
    #endif
#endif
#ifdef VERTEX_SHADER
    #if (__VERSION__<300)&&!defined(GL_EXT_gpu_shader4)
        #define gl_VertexID (0)
    #endif
#endif
#ifndef GL_ES
        #extension GL_EXT_gpu_shader4 : enable
    #extension GL_ARB_shader_texture_lod : enable
    #ifndef texture2DLodEXT
        #define texture2DLodEXT texture2DLod
    #endif
    #ifndef sc_CanUseTextureLod
    #define sc_CanUseTextureLod 1
    #endif
    #define precision
    #define lowp
    #define mediump
    #define highp
    #define sc_FragmentPrecision
#endif
#ifdef sc_EnableFeatureLevelES3
    #define sc_CanUseSampler2DArray 1
#endif
#if defined(sc_EnableFeatureLevelES2)&&defined(GL_ES)
    #ifdef FRAGMENT_SHADER
        #ifdef GL_OES_standard_derivatives
            #extension GL_OES_standard_derivatives : require
            #define sc_CanUseStandardDerivatives 1
        #endif
    #endif
    #ifdef GL_EXT_texture_array
        #extension GL_EXT_texture_array : require
        #define sc_CanUseSampler2DArray 1
    #else
        #define sc_CanUseSampler2DArray 0
    #endif
#endif
#ifdef GL_ES
    #ifdef sc_FramebufferFetch
        #if defined(GL_EXT_shader_framebuffer_fetch)
            #extension GL_EXT_shader_framebuffer_fetch : require
        #elif defined(GL_ARM_shader_framebuffer_fetch)
            #extension GL_ARM_shader_framebuffer_fetch : require
        #else
            #error Framebuffer fetch is requested but not supported by this device.
        #endif
    #endif
    #ifdef GL_FRAGMENT_PRECISION_HIGH
        #define sc_FragmentPrecision highp
    #else
        #define sc_FragmentPrecision mediump
    #endif
    #ifdef FRAGMENT_SHADER
        precision highp int;
        precision highp float;
    #endif
#endif
#ifdef VERTEX_SHADER
    #ifdef sc_EnableMultiviewStereoRendering
        layout(num_views=sc_NumStereoViews) in;
    #endif
#endif
#if __VERSION__>100
    #define SC_INT_FALLBACK_FLOAT int
    #define SC_INTERPOLATION_FLAT flat
    #define SC_INTERPOLATION_CENTROID centroid
#else
    #define SC_INT_FALLBACK_FLOAT float
    #define SC_INTERPOLATION_FLAT
    #define SC_INTERPOLATION_CENTROID
#endif
#ifndef sc_NumStereoViews
    #define sc_NumStereoViews 1
#endif
#ifndef sc_CanUseSampler2DArray
    #define sc_CanUseSampler2DArray 0
#endif
    #if __VERSION__==100||defined(SCC_VALIDATION)
        #define sampler2DArray vec2
        #define sampler3D vec3
        #define samplerCube vec4
        vec4 texture3D(vec3 s,vec3 uv)                       { return vec4(0.0); }
        vec4 texture3D(vec3 s,vec3 uv,float bias)           { return vec4(0.0); }
        vec4 texture3DLod(vec3 s,vec3 uv,float bias)        { return vec4(0.0); }
        vec4 texture3DLodEXT(vec3 s,vec3 uv,float lod)      { return vec4(0.0); }
        vec4 texture2DArray(vec2 s,vec3 uv)                  { return vec4(0.0); }
        vec4 texture2DArray(vec2 s,vec3 uv,float bias)      { return vec4(0.0); }
        vec4 texture2DArrayLod(vec2 s,vec3 uv,float lod)    { return vec4(0.0); }
        vec4 texture2DArrayLodEXT(vec2 s,vec3 uv,float lod) { return vec4(0.0); }
        vec4 textureCube(vec4 s,vec3 uv)                     { return vec4(0.0); }
        vec4 textureCube(vec4 s,vec3 uv,float lod)          { return vec4(0.0); }
        vec4 textureCubeLod(vec4 s,vec3 uv,float lod)       { return vec4(0.0); }
        vec4 textureCubeLodEXT(vec4 s,vec3 uv,float lod)    { return vec4(0.0); }
        #if defined(VERTEX_SHADER)||!sc_CanUseTextureLod
            #define texture2DLod(s,uv,lod)      vec4(0.0)
            #define texture2DLodEXT(s,uv,lod)   vec4(0.0)
        #endif
    #elif __VERSION__>=300
        #define texture3D texture
        #define textureCube texture
        #define texture2DArray texture
        #define texture2DLod textureLod
        #define texture3DLod textureLod
        #define texture2DLodEXT textureLod
        #define texture3DLodEXT textureLod
        #define textureCubeLod textureLod
        #define textureCubeLodEXT textureLod
        #define texture2DArrayLod textureLod
        #define texture2DArrayLodEXT textureLod
    #endif
    #ifndef sc_TextureRenderingLayout_Regular
        #define sc_TextureRenderingLayout_Regular 0
        #define sc_TextureRenderingLayout_StereoInstancedClipped 1
        #define sc_TextureRenderingLayout_StereoMultiview 2
    #endif
    #define depthToGlobal   depthScreenToViewSpace
    #define depthToLocal    depthViewToScreenSpace
    #ifndef quantizeUV
        #define quantizeUV sc_QuantizeUV
        #define sc_platformUVFlip sc_PlatformFlipV
        #define sc_PlatformFlipUV sc_PlatformFlipV
    #endif
    #ifndef sc_texture2DLod
        #define sc_texture2DLod sc_InternalTextureLevel
        #define sc_textureLod sc_InternalTextureLevel
        #define sc_textureBias sc_InternalTextureBiasOrLevel
        #define sc_texture sc_InternalTexture
    #endif
struct sc_Vertex_t
{
vec4 position;
vec3 normal;
vec3 tangent;
vec2 texture0;
vec2 texture1;
};
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
vec3 SurfacePosition_ObjectSpace;
vec3 VertexNormal_WorldSpace;
vec3 VertexTangent_WorldSpace;
vec3 VertexTangent_ObjectSpace;
};
#ifndef sc_CanUseTextureLod
#define sc_CanUseTextureLod 0
#elif sc_CanUseTextureLod==1
#undef sc_CanUseTextureLod
#define sc_CanUseTextureLod 1
#endif
#ifndef sc_StereoRenderingMode
#define sc_StereoRenderingMode 0
#endif
#ifndef sc_StereoViewID
#define sc_StereoViewID 0
#endif
#ifndef sc_RenderingSpace
#define sc_RenderingSpace -1
#endif
#ifndef sc_TAAEnabled
#define sc_TAAEnabled 0
#elif sc_TAAEnabled==1
#undef sc_TAAEnabled
#define sc_TAAEnabled 1
#endif
#ifndef sc_StereoRendering_IsClipDistanceEnabled
#define sc_StereoRendering_IsClipDistanceEnabled 0
#endif
#ifndef sc_NumStereoViews
#define sc_NumStereoViews 1
#endif
#ifndef sc_ShaderCacheConstant
#define sc_ShaderCacheConstant 0
#endif
#ifndef sc_SkinBonesCount
#define sc_SkinBonesCount 0
#endif
#ifndef sc_VertexBlending
#define sc_VertexBlending 0
#elif sc_VertexBlending==1
#undef sc_VertexBlending
#define sc_VertexBlending 1
#endif
#ifndef sc_VertexBlendingUseNormals
#define sc_VertexBlendingUseNormals 0
#elif sc_VertexBlendingUseNormals==1
#undef sc_VertexBlendingUseNormals
#define sc_VertexBlendingUseNormals 1
#endif
struct sc_Camera_t
{
vec3 position;
float aspect;
vec2 clipPlanes;
};
#ifndef sc_IsEditor
#define sc_IsEditor 0
#elif sc_IsEditor==1
#undef sc_IsEditor
#define sc_IsEditor 1
#endif
#ifndef SC_DISABLE_FRUSTUM_CULLING
#define SC_DISABLE_FRUSTUM_CULLING 0
#elif SC_DISABLE_FRUSTUM_CULLING==1
#undef SC_DISABLE_FRUSTUM_CULLING
#define SC_DISABLE_FRUSTUM_CULLING 1
#endif
#ifndef sc_DepthBufferMode
#define sc_DepthBufferMode 0
#endif
#ifndef sc_ProjectiveShadowsReceiver
#define sc_ProjectiveShadowsReceiver 0
#elif sc_ProjectiveShadowsReceiver==1
#undef sc_ProjectiveShadowsReceiver
#define sc_ProjectiveShadowsReceiver 1
#endif
#ifndef sc_OITDepthGatherPass
#define sc_OITDepthGatherPass 0
#elif sc_OITDepthGatherPass==1
#undef sc_OITDepthGatherPass
#define sc_OITDepthGatherPass 1
#endif
#ifndef sc_OITCompositingPass
#define sc_OITCompositingPass 0
#elif sc_OITCompositingPass==1
#undef sc_OITCompositingPass
#define sc_OITCompositingPass 1
#endif
#ifndef sc_OITDepthBoundsPass
#define sc_OITDepthBoundsPass 0
#elif sc_OITDepthBoundsPass==1
#undef sc_OITDepthBoundsPass
#define sc_OITDepthBoundsPass 1
#endif
#ifndef UseViewSpaceDepthVariant
#define UseViewSpaceDepthVariant 1
#elif UseViewSpaceDepthVariant==1
#undef UseViewSpaceDepthVariant
#define UseViewSpaceDepthVariant 1
#endif
#ifndef transformPosRotTexHasSwappedViews
#define transformPosRotTexHasSwappedViews 0
#elif transformPosRotTexHasSwappedViews==1
#undef transformPosRotTexHasSwappedViews
#define transformPosRotTexHasSwappedViews 1
#endif
#ifndef transformPosRotTexLayout
#define transformPosRotTexLayout 0
#endif
#ifndef transformScaleTexHasSwappedViews
#define transformScaleTexHasSwappedViews 0
#elif transformScaleTexHasSwappedViews==1
#undef transformScaleTexHasSwappedViews
#define transformScaleTexHasSwappedViews 1
#endif
#ifndef transformScaleTexLayout
#define transformScaleTexLayout 0
#endif
#ifndef Tweak_N166
#define Tweak_N166 0
#elif Tweak_N166==1
#undef Tweak_N166
#define Tweak_N166 1
#endif
#ifndef SC_USE_UV_TRANSFORM_transformScaleTex
#define SC_USE_UV_TRANSFORM_transformScaleTex 0
#elif SC_USE_UV_TRANSFORM_transformScaleTex==1
#undef SC_USE_UV_TRANSFORM_transformScaleTex
#define SC_USE_UV_TRANSFORM_transformScaleTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_transformScaleTex
#define SC_SOFTWARE_WRAP_MODE_U_transformScaleTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_transformScaleTex
#define SC_SOFTWARE_WRAP_MODE_V_transformScaleTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_transformScaleTex
#define SC_USE_UV_MIN_MAX_transformScaleTex 0
#elif SC_USE_UV_MIN_MAX_transformScaleTex==1
#undef SC_USE_UV_MIN_MAX_transformScaleTex
#define SC_USE_UV_MIN_MAX_transformScaleTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_transformScaleTex
#define SC_USE_CLAMP_TO_BORDER_transformScaleTex 0
#elif SC_USE_CLAMP_TO_BORDER_transformScaleTex==1
#undef SC_USE_CLAMP_TO_BORDER_transformScaleTex
#define SC_USE_CLAMP_TO_BORDER_transformScaleTex 1
#endif
#ifndef Tweak_N163
#define Tweak_N163 0
#elif Tweak_N163==1
#undef Tweak_N163
#define Tweak_N163 1
#endif
#ifndef SC_USE_UV_TRANSFORM_transformPosRotTex
#define SC_USE_UV_TRANSFORM_transformPosRotTex 0
#elif SC_USE_UV_TRANSFORM_transformPosRotTex==1
#undef SC_USE_UV_TRANSFORM_transformPosRotTex
#define SC_USE_UV_TRANSFORM_transformPosRotTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex
#define SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex
#define SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_transformPosRotTex
#define SC_USE_UV_MIN_MAX_transformPosRotTex 0
#elif SC_USE_UV_MIN_MAX_transformPosRotTex==1
#undef SC_USE_UV_MIN_MAX_transformPosRotTex
#define SC_USE_UV_MIN_MAX_transformPosRotTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_transformPosRotTex
#define SC_USE_CLAMP_TO_BORDER_transformPosRotTex 0
#elif SC_USE_CLAMP_TO_BORDER_transformPosRotTex==1
#undef SC_USE_CLAMP_TO_BORDER_transformPosRotTex
#define SC_USE_CLAMP_TO_BORDER_transformPosRotTex 1
#endif
uniform mat4 sc_ModelMatrix;
uniform mat4 sc_ProjectorMatrix;
uniform vec2 sc_TAAJitterOffset;
uniform vec4 sc_StereoClipPlanes[sc_NumStereoViews];
uniform vec4 sc_UniformConstants;
uniform vec4 sc_BoneMatrices[((sc_SkinBonesCount*3)+1)];
uniform mat3 sc_SkinBonesNormalMatrices[(sc_SkinBonesCount+1)];
uniform vec4 weights0;
uniform vec4 weights1;
uniform mat4 sc_ViewProjectionMatrixArray[sc_NumStereoViews];
uniform mat4 sc_ModelViewMatrixArray[sc_NumStereoViews];
uniform sc_Camera_t sc_Camera;
uniform mat4 sc_ProjectionMatrixInverseArray[sc_NumStereoViews];
uniform mat4 sc_ViewMatrixArray[sc_NumStereoViews];
uniform float sc_DisableFrustumCullingMarker;
uniform mat4 sc_ProjectionMatrixArray[sc_NumStereoViews];
uniform mat3 sc_NormalMatrix;
uniform int PreviewEnabled;
uniform float maxInstanceCount;
uniform float minPos;
uniform float maxPos;
uniform float minSca;
uniform float maxSca;
uniform float Tweak_N112;
uniform float Tweak_N110;
uniform float Tweak_N111;
uniform float Port_Input1_N018;
uniform float Port_Value2_N028;
uniform mat3 transformScaleTexTransform;
uniform vec4 transformScaleTexUvMinMax;
uniform vec4 transformScaleTexBorderColor;
uniform float Port_RangeMinA_N040;
uniform float Port_RangeMaxA_N040;
uniform float Port_Input1_N011;
uniform float Port_Multiplier_N089;
uniform float Port_Input0_N179;
uniform float minRot;
uniform float maxRot;
uniform float Tweak_N144;
uniform float Tweak_N142;
uniform float Tweak_N143;
uniform vec4 sc_Time;
uniform mat4 sc_ModelMatrixInverse;
uniform float Port_Value2_N051;
uniform mat3 transformPosRotTexTransform;
uniform vec4 transformPosRotTexUvMinMax;
uniform vec4 transformPosRotTexBorderColor;
uniform float Port_Value2_N052;
uniform float Port_Value2_N014;
uniform float Port_Value1_N061;
uniform float Port_Value2_N019;
uniform float Port_Value2_N026;
uniform float Port_Input1_N037;
uniform float Port_Value1_N162;
uniform float Port_Value3_N162;
uniform vec3 Port_Input0_N178;
uniform float Port_Input1_N083;
uniform float Port_Input1_N071;
uniform sampler2D transformPosRotTex;
uniform sampler2D transformScaleTex;
varying float varClipDistance;
varying float varStereoViewID;
attribute vec4 boneData;
attribute vec3 blendShape0Pos;
attribute vec3 blendShape0Normal;
attribute vec3 blendShape1Pos;
attribute vec3 blendShape1Normal;
attribute vec3 blendShape2Pos;
attribute vec3 blendShape2Normal;
attribute vec3 blendShape3Pos;
attribute vec3 blendShape4Pos;
attribute vec3 blendShape5Pos;
attribute vec4 position;
attribute vec3 normal;
attribute vec4 tangent;
attribute vec2 texture0;
attribute vec2 texture1;
varying vec3 varPos;
varying vec3 varNormal;
varying vec4 varTangent;
varying vec4 varPackedTex;
varying vec4 varScreenPos;
varying vec2 varScreenTexturePos;
varying vec2 varShadowTex;
varying float varViewSpaceDepth;
varying vec4 varColor;
attribute vec4 color;
varying vec4 PreviewVertexColor;
varying float PreviewVertexSaved;
attribute vec3 positionNext;
attribute vec3 positionPrevious;
attribute vec4 strandProperties;
void blendTargetShapeWithNormal(inout sc_Vertex_t v,vec3 position_1,vec3 normal_1,float weight)
{
vec3 l9_0=v.position.xyz+(position_1*weight);
v=sc_Vertex_t(vec4(l9_0.x,l9_0.y,l9_0.z,v.position.w),v.normal,v.tangent,v.texture0,v.texture1);
v.normal+=(normal_1*weight);
}
void sc_GetBoneMatrix(int index,out vec4 m0,out vec4 m1,out vec4 m2)
{
int l9_0=3*index;
m0=sc_BoneMatrices[l9_0];
m1=sc_BoneMatrices[l9_0+1];
m2=sc_BoneMatrices[l9_0+2];
}
vec3 skinVertexPosition(int i,vec4 v)
{
vec3 l9_0;
#if (sc_SkinBonesCount>0)
{
vec4 param_1;
vec4 param_2;
vec4 param_3;
sc_GetBoneMatrix(i,param_1,param_2,param_3);
l9_0=vec3(dot(v,param_1),dot(v,param_2),dot(v,param_3));
}
#else
{
l9_0=v.xyz;
}
#endif
return l9_0;
}
int sc_GetLocalInstanceID()
{
#ifdef sc_LocalInstanceID
    return sc_LocalInstanceID;
#else
    return 0;
#endif
}
int sc_GetStereoViewIndex()
{
int l9_0;
#if (sc_StereoRenderingMode==0)
{
l9_0=0;
}
#else
{
l9_0=sc_StereoViewID;
}
#endif
return l9_0;
}
int transformPosRotTexGetStereoViewIndex()
{
int l9_0;
#if (transformPosRotTexHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
void sc_SoftwareWrapEarly(inout float uv,int softwareWrapMode)
{
if (softwareWrapMode==1)
{
uv=fract(uv);
}
else
{
if (softwareWrapMode==2)
{
float l9_0=fract(uv);
uv=mix(l9_0,1.0-l9_0,clamp(step(0.25,fract((uv-l9_0)*0.5)),0.0,1.0));
}
}
}
void sc_ClampUV(inout float value,float minValue,float maxValue,bool useClampToBorder,inout float clampToBorderFactor)
{
float l9_0=clamp(value,minValue,maxValue);
float l9_1=step(abs(value-l9_0),9.9999997e-06);
clampToBorderFactor*=(l9_1+((1.0-float(useClampToBorder))*(1.0-l9_1)));
value=l9_0;
}
vec2 sc_TransformUV(vec2 uv,bool useUvTransform,mat3 uvTransform)
{
if (useUvTransform)
{
uv=vec2((uvTransform*vec3(uv,1.0)).xy);
}
return uv;
}
void sc_SoftwareWrapLate(inout float uv,int softwareWrapMode,bool useClampToBorder,inout float clampToBorderFactor)
{
if ((softwareWrapMode==0)||(softwareWrapMode==3))
{
sc_ClampUV(uv,0.0,1.0,useClampToBorder,clampToBorderFactor);
}
}
vec3 sc_SamplingCoordsViewToGlobal(vec2 uv,int renderingLayout,int viewIndex)
{
vec3 l9_0;
if (renderingLayout==0)
{
l9_0=vec3(uv,0.0);
}
else
{
vec3 l9_1;
if (renderingLayout==1)
{
l9_1=vec3(uv.x,(uv.y*0.5)+(0.5-(float(viewIndex)*0.5)),0.0);
}
else
{
l9_1=vec3(uv,float(viewIndex));
}
l9_0=l9_1;
}
return l9_0;
}
float DecodeFloat32(vec4 rgba,bool Quantize)
{
if (Quantize)
{
rgba=floor((rgba*255.0)+vec4(0.5))/vec4(255.0);
}
return dot(rgba,vec4(1.0,0.0039215689,1.53787e-05,6.0308629e-08));
}
int transformScaleTexGetStereoViewIndex()
{
int l9_0;
#if (transformScaleTexHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
float DecodeFloat16(vec2 rg,bool Quantize)
{
if (Quantize)
{
rg=floor((rg*255.0)+vec2(0.5))/vec2(255.0);
}
return dot(rg,vec2(1.0,0.0039215689));
}
void Node24_UnPack(vec4 Packed,out float Value1,float Min1,float Max1,out float Value2,float Min2,float Max2,ssGlobals Globals)
{
float l9_0=0.99998999-0.0;
Value1=Min1+(((DecodeFloat16(Packed.xy,true)-0.0)*(Max1-Min1))/l9_0);
Value2=Min2+(((DecodeFloat16(Packed.zw,true)-0.0)*(Max2-Min2))/l9_0);
}
void Node27_UnPack(vec4 Packed,out float Value1,float Min1,float Max1,out float Value2,float Min2,float Max2,ssGlobals Globals)
{
float l9_0=0.99998999-0.0;
Value1=Min1+(((DecodeFloat16(Packed.xy,true)-0.0)*(Max1-Min1))/l9_0);
Value2=Min2+(((DecodeFloat16(Packed.zw,true)-0.0)*(Max2-Min2))/l9_0);
}
void sc_SetClipDistancePlatform(float dstClipDistance)
{
    #if sc_StereoRenderingMode==sc_StereoRendering_InstancedClipped&&sc_StereoRendering_IsClipDistanceEnabled
        gl_ClipDistance[0]=dstClipDistance;
    #endif
}
void main()
{
PreviewVertexColor=vec4(0.5);
PreviewVertexSaved=0.0;
vec4 l9_0;
#if (sc_IsEditor&&SC_DISABLE_FRUSTUM_CULLING)
{
vec4 l9_1=position;
l9_1.x=position.x+sc_DisableFrustumCullingMarker;
l9_0=l9_1;
}
#else
{
l9_0=position;
}
#endif
vec2 l9_2;
vec2 l9_3;
vec3 l9_4;
vec3 l9_5;
vec4 l9_6;
#if (sc_VertexBlending)
{
vec2 l9_7;
vec2 l9_8;
vec3 l9_9;
vec3 l9_10;
vec4 l9_11;
#if (sc_VertexBlendingUseNormals)
{
sc_Vertex_t l9_12=sc_Vertex_t(l9_0,normal,tangent.xyz,texture0,texture1);
blendTargetShapeWithNormal(l9_12,blendShape0Pos,blendShape0Normal,weights0.x);
blendTargetShapeWithNormal(l9_12,blendShape1Pos,blendShape1Normal,weights0.y);
blendTargetShapeWithNormal(l9_12,blendShape2Pos,blendShape2Normal,weights0.z);
l9_11=l9_12.position;
l9_10=l9_12.normal;
l9_9=l9_12.tangent;
l9_8=l9_12.texture0;
l9_7=l9_12.texture1;
}
#else
{
vec3 l9_14=(((((l9_0.xyz+(blendShape0Pos*weights0.x)).xyz+(blendShape1Pos*weights0.y)).xyz+(blendShape2Pos*weights0.z)).xyz+(blendShape3Pos*weights0.w)).xyz+(blendShape4Pos*weights1.x)).xyz+(blendShape5Pos*weights1.y);
l9_11=vec4(l9_14.x,l9_14.y,l9_14.z,l9_0.w);
l9_10=normal;
l9_9=tangent.xyz;
l9_8=texture0;
l9_7=texture1;
}
#endif
l9_6=l9_11;
l9_5=l9_10;
l9_4=l9_9;
l9_3=l9_8;
l9_2=l9_7;
}
#else
{
l9_6=l9_0;
l9_5=normal;
l9_4=tangent.xyz;
l9_3=texture0;
l9_2=texture1;
}
#endif
vec3 l9_15;
vec3 l9_16;
vec4 l9_17;
#if (sc_SkinBonesCount>0)
{
vec4 l9_18;
#if (sc_SkinBonesCount>0)
{
vec4 l9_19=vec4(1.0,fract(boneData.yzw));
vec4 l9_20=l9_19;
l9_20.x=1.0-dot(l9_19.yzw,vec3(1.0));
l9_18=l9_20;
}
#else
{
l9_18=vec4(0.0);
}
#endif
int l9_21=int(boneData.x);
int l9_22=int(boneData.y);
int l9_23=int(boneData.z);
int l9_24=int(boneData.w);
vec3 l9_25=(((skinVertexPosition(l9_21,l9_6)*l9_18.x)+(skinVertexPosition(l9_22,l9_6)*l9_18.y))+(skinVertexPosition(l9_23,l9_6)*l9_18.z))+(skinVertexPosition(l9_24,l9_6)*l9_18.w);
l9_17=vec4(l9_25.x,l9_25.y,l9_25.z,l9_6.w);
l9_16=((((sc_SkinBonesNormalMatrices[l9_21]*l9_5)*l9_18.x)+((sc_SkinBonesNormalMatrices[l9_22]*l9_5)*l9_18.y))+((sc_SkinBonesNormalMatrices[l9_23]*l9_5)*l9_18.z))+((sc_SkinBonesNormalMatrices[l9_24]*l9_5)*l9_18.w);
l9_15=((((sc_SkinBonesNormalMatrices[l9_21]*l9_4)*l9_18.x)+((sc_SkinBonesNormalMatrices[l9_22]*l9_4)*l9_18.y))+((sc_SkinBonesNormalMatrices[l9_23]*l9_4)*l9_18.z))+((sc_SkinBonesNormalMatrices[l9_24]*l9_4)*l9_18.w);
}
#else
{
l9_17=l9_6;
l9_16=l9_5;
l9_15=l9_4;
}
#endif
#if (sc_RenderingSpace==3)
{
varPos=vec3(0.0);
varNormal=l9_16;
varTangent=vec4(l9_15.x,l9_15.y,l9_15.z,varTangent.w);
}
#else
{
#if (sc_RenderingSpace==4)
{
varPos=vec3(0.0);
varNormal=l9_16;
varTangent=vec4(l9_15.x,l9_15.y,l9_15.z,varTangent.w);
}
#else
{
#if (sc_RenderingSpace==2)
{
varPos=l9_17.xyz;
varNormal=l9_16;
varTangent=vec4(l9_15.x,l9_15.y,l9_15.z,varTangent.w);
}
#else
{
#if (sc_RenderingSpace==1)
{
varPos=(sc_ModelMatrix*l9_17).xyz;
varNormal=sc_NormalMatrix*l9_16;
vec3 l9_26=sc_NormalMatrix*l9_15;
varTangent=vec4(l9_26.x,l9_26.y,l9_26.z,varTangent.w);
}
#endif
}
#endif
}
#endif
}
#endif
bool l9_27=PreviewEnabled==1;
vec2 l9_28;
if (l9_27)
{
vec2 l9_29=l9_3;
l9_29.x=1.0-l9_3.x;
l9_28=l9_29;
}
else
{
l9_28=l9_3;
}
varColor=color;
vec3 l9_30=(sc_ModelMatrixInverse*vec4(varPos,1.0)).xyz;
vec3 l9_31=varNormal;
vec3 l9_32=(sc_ModelMatrixInverse*vec4(varTangent.xyz,0.0)).xyz;
float l9_33=maxInstanceCount+1.234e-06;
float l9_34=(float(sc_GetLocalInstanceID())+Port_Input1_N018)/l9_33;
bool l9_35=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_transformPosRotTex)!=0));
float l9_36=l9_34;
sc_SoftwareWrapEarly(l9_36,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x);
float l9_37=l9_36;
float l9_38=Port_Value2_N051;
sc_SoftwareWrapEarly(l9_38,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y);
float l9_39=l9_38;
vec2 l9_40;
float l9_41;
#if (SC_USE_UV_MIN_MAX_transformPosRotTex)
{
bool l9_42;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_42=ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x==3;
}
#else
{
l9_42=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex)!=0);
}
#endif
float l9_43=l9_37;
float l9_44=1.0;
sc_ClampUV(l9_43,transformPosRotTexUvMinMax.x,transformPosRotTexUvMinMax.z,l9_42,l9_44);
float l9_45=l9_43;
float l9_46=l9_44;
bool l9_47;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_47=ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y==3;
}
#else
{
l9_47=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex)!=0);
}
#endif
float l9_48=l9_39;
float l9_49=l9_46;
sc_ClampUV(l9_48,transformPosRotTexUvMinMax.y,transformPosRotTexUvMinMax.w,l9_47,l9_49);
l9_41=l9_49;
l9_40=vec2(l9_45,l9_48);
}
#else
{
l9_41=1.0;
l9_40=vec2(l9_37,l9_39);
}
#endif
vec2 l9_50=sc_TransformUV(l9_40,(int(SC_USE_UV_TRANSFORM_transformPosRotTex)!=0),transformPosRotTexTransform);
float l9_51=l9_50.x;
float l9_52=l9_41;
sc_SoftwareWrapLate(l9_51,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x,l9_35,l9_52);
float l9_53=l9_50.y;
float l9_54=l9_52;
sc_SoftwareWrapLate(l9_53,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y,l9_35,l9_54);
float l9_55=l9_54;
vec3 l9_56=sc_SamplingCoordsViewToGlobal(vec2(l9_51,l9_53),transformPosRotTexLayout,transformPosRotTexGetStereoViewIndex());
vec4 l9_57;
#if (sc_CanUseTextureLod)
{
l9_57=texture2DLod(transformPosRotTex,l9_56.xy,0.0);
}
#else
{
l9_57=vec4(0.0);
}
#endif
vec4 l9_58;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_58=mix(transformPosRotTexBorderColor,l9_57,vec4(l9_55));
}
#else
{
l9_58=l9_57;
}
#endif
float l9_59=DecodeFloat32(l9_58,true);
float l9_60=maxPos-minPos;
float l9_61=0.99998999-0.0;
float l9_62=l9_34;
sc_SoftwareWrapEarly(l9_62,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x);
float l9_63=l9_62;
float l9_64=Port_Value2_N052;
sc_SoftwareWrapEarly(l9_64,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y);
float l9_65=l9_64;
vec2 l9_66;
float l9_67;
#if (SC_USE_UV_MIN_MAX_transformPosRotTex)
{
bool l9_68;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_68=ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x==3;
}
#else
{
l9_68=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex)!=0);
}
#endif
float l9_69=l9_63;
float l9_70=1.0;
sc_ClampUV(l9_69,transformPosRotTexUvMinMax.x,transformPosRotTexUvMinMax.z,l9_68,l9_70);
float l9_71=l9_69;
float l9_72=l9_70;
bool l9_73;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_73=ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y==3;
}
#else
{
l9_73=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex)!=0);
}
#endif
float l9_74=l9_65;
float l9_75=l9_72;
sc_ClampUV(l9_74,transformPosRotTexUvMinMax.y,transformPosRotTexUvMinMax.w,l9_73,l9_75);
l9_67=l9_75;
l9_66=vec2(l9_71,l9_74);
}
#else
{
l9_67=1.0;
l9_66=vec2(l9_63,l9_65);
}
#endif
vec2 l9_76=sc_TransformUV(l9_66,(int(SC_USE_UV_TRANSFORM_transformPosRotTex)!=0),transformPosRotTexTransform);
float l9_77=l9_76.x;
float l9_78=l9_67;
sc_SoftwareWrapLate(l9_77,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x,l9_35,l9_78);
float l9_79=l9_76.y;
float l9_80=l9_78;
sc_SoftwareWrapLate(l9_79,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y,l9_35,l9_80);
float l9_81=l9_80;
vec3 l9_82=sc_SamplingCoordsViewToGlobal(vec2(l9_77,l9_79),transformPosRotTexLayout,transformPosRotTexGetStereoViewIndex());
vec4 l9_83;
#if (sc_CanUseTextureLod)
{
l9_83=texture2DLod(transformPosRotTex,l9_82.xy,0.0);
}
#else
{
l9_83=vec4(0.0);
}
#endif
vec4 l9_84;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_84=mix(transformPosRotTexBorderColor,l9_83,vec4(l9_81));
}
#else
{
l9_84=l9_83;
}
#endif
float l9_85=DecodeFloat32(l9_84,true);
float l9_86=l9_34;
sc_SoftwareWrapEarly(l9_86,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x);
float l9_87=l9_86;
float l9_88=Port_Value2_N014;
sc_SoftwareWrapEarly(l9_88,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y);
float l9_89=l9_88;
vec2 l9_90;
float l9_91;
#if (SC_USE_UV_MIN_MAX_transformPosRotTex)
{
bool l9_92;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_92=ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x==3;
}
#else
{
l9_92=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex)!=0);
}
#endif
float l9_93=l9_87;
float l9_94=1.0;
sc_ClampUV(l9_93,transformPosRotTexUvMinMax.x,transformPosRotTexUvMinMax.z,l9_92,l9_94);
float l9_95=l9_93;
float l9_96=l9_94;
bool l9_97;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_97=ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y==3;
}
#else
{
l9_97=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex)!=0);
}
#endif
float l9_98=l9_89;
float l9_99=l9_96;
sc_ClampUV(l9_98,transformPosRotTexUvMinMax.y,transformPosRotTexUvMinMax.w,l9_97,l9_99);
l9_91=l9_99;
l9_90=vec2(l9_95,l9_98);
}
#else
{
l9_91=1.0;
l9_90=vec2(l9_87,l9_89);
}
#endif
vec2 l9_100=sc_TransformUV(l9_90,(int(SC_USE_UV_TRANSFORM_transformPosRotTex)!=0),transformPosRotTexTransform);
float l9_101=l9_100.x;
float l9_102=l9_91;
sc_SoftwareWrapLate(l9_101,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x,l9_35,l9_102);
float l9_103=l9_100.y;
float l9_104=l9_102;
sc_SoftwareWrapLate(l9_103,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y,l9_35,l9_104);
float l9_105=l9_104;
vec3 l9_106=sc_SamplingCoordsViewToGlobal(vec2(l9_101,l9_103),transformPosRotTexLayout,transformPosRotTexGetStereoViewIndex());
vec4 l9_107;
#if (sc_CanUseTextureLod)
{
l9_107=texture2DLod(transformPosRotTex,l9_106.xy,0.0);
}
#else
{
l9_107=vec4(0.0);
}
#endif
vec4 l9_108;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_108=mix(transformPosRotTexBorderColor,l9_107,vec4(l9_105));
}
#else
{
l9_108=l9_107;
}
#endif
float l9_109=DecodeFloat32(l9_108,true);
ssGlobals l9_110=ssGlobals(sc_Time.x,sc_Time.y,0.0,l9_30,l9_31,varTangent.xyz,l9_32);
bool l9_111=(int(SC_USE_CLAMP_TO_BORDER_transformScaleTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_transformScaleTex)!=0));
float l9_112=(float(sc_GetLocalInstanceID())+Port_Input1_N018)/l9_33;
sc_SoftwareWrapEarly(l9_112,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformScaleTex,SC_SOFTWARE_WRAP_MODE_V_transformScaleTex).x);
float l9_113=l9_112;
float l9_114=Port_Value2_N028;
sc_SoftwareWrapEarly(l9_114,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformScaleTex,SC_SOFTWARE_WRAP_MODE_V_transformScaleTex).y);
float l9_115=l9_114;
vec2 l9_116;
float l9_117;
#if (SC_USE_UV_MIN_MAX_transformScaleTex)
{
bool l9_118;
#if (SC_USE_CLAMP_TO_BORDER_transformScaleTex)
{
l9_118=ivec2(SC_SOFTWARE_WRAP_MODE_U_transformScaleTex,SC_SOFTWARE_WRAP_MODE_V_transformScaleTex).x==3;
}
#else
{
l9_118=(int(SC_USE_CLAMP_TO_BORDER_transformScaleTex)!=0);
}
#endif
float l9_119=l9_113;
float l9_120=1.0;
sc_ClampUV(l9_119,transformScaleTexUvMinMax.x,transformScaleTexUvMinMax.z,l9_118,l9_120);
float l9_121=l9_119;
float l9_122=l9_120;
bool l9_123;
#if (SC_USE_CLAMP_TO_BORDER_transformScaleTex)
{
l9_123=ivec2(SC_SOFTWARE_WRAP_MODE_U_transformScaleTex,SC_SOFTWARE_WRAP_MODE_V_transformScaleTex).y==3;
}
#else
{
l9_123=(int(SC_USE_CLAMP_TO_BORDER_transformScaleTex)!=0);
}
#endif
float l9_124=l9_115;
float l9_125=l9_122;
sc_ClampUV(l9_124,transformScaleTexUvMinMax.y,transformScaleTexUvMinMax.w,l9_123,l9_125);
l9_117=l9_125;
l9_116=vec2(l9_121,l9_124);
}
#else
{
l9_117=1.0;
l9_116=vec2(l9_113,l9_115);
}
#endif
vec2 l9_126=sc_TransformUV(l9_116,(int(SC_USE_UV_TRANSFORM_transformScaleTex)!=0),transformScaleTexTransform);
float l9_127=l9_126.x;
float l9_128=l9_117;
sc_SoftwareWrapLate(l9_127,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformScaleTex,SC_SOFTWARE_WRAP_MODE_V_transformScaleTex).x,l9_111,l9_128);
float l9_129=l9_126.y;
float l9_130=l9_128;
sc_SoftwareWrapLate(l9_129,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformScaleTex,SC_SOFTWARE_WRAP_MODE_V_transformScaleTex).y,l9_111,l9_130);
float l9_131=l9_130;
vec3 l9_132=sc_SamplingCoordsViewToGlobal(vec2(l9_127,l9_129),transformScaleTexLayout,transformScaleTexGetStereoViewIndex());
vec4 l9_133;
#if (sc_CanUseTextureLod)
{
l9_133=texture2DLod(transformScaleTex,l9_132.xy,0.0);
}
#else
{
l9_133=vec4(0.0);
}
#endif
vec4 l9_134;
#if (SC_USE_CLAMP_TO_BORDER_transformScaleTex)
{
l9_134=mix(transformScaleTexBorderColor,l9_133,vec4(l9_131));
}
#else
{
l9_134=l9_133;
}
#endif
float l9_135=(Port_RangeMaxA_N040-Port_RangeMinA_N040)+1e-06;
float l9_136=maxSca-minSca;
float l9_137;
if ((float(((((l9_134.x-Port_RangeMinA_N040)/l9_135)*l9_136)+minSca)<Port_Input1_N011)*1.0)!=0.0)
{
l9_137=Port_Value1_N061;
}
else
{
float l9_138=(float(sc_GetLocalInstanceID())+Port_Input1_N018)/l9_33;
sc_SoftwareWrapEarly(l9_138,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformScaleTex,SC_SOFTWARE_WRAP_MODE_V_transformScaleTex).x);
float l9_139=l9_138;
float l9_140=Port_Value2_N028;
sc_SoftwareWrapEarly(l9_140,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformScaleTex,SC_SOFTWARE_WRAP_MODE_V_transformScaleTex).y);
float l9_141=l9_140;
vec2 l9_142;
float l9_143;
#if (SC_USE_UV_MIN_MAX_transformScaleTex)
{
bool l9_144;
#if (SC_USE_CLAMP_TO_BORDER_transformScaleTex)
{
l9_144=ivec2(SC_SOFTWARE_WRAP_MODE_U_transformScaleTex,SC_SOFTWARE_WRAP_MODE_V_transformScaleTex).x==3;
}
#else
{
l9_144=(int(SC_USE_CLAMP_TO_BORDER_transformScaleTex)!=0);
}
#endif
float l9_145=l9_139;
float l9_146=1.0;
sc_ClampUV(l9_145,transformScaleTexUvMinMax.x,transformScaleTexUvMinMax.z,l9_144,l9_146);
float l9_147=l9_145;
float l9_148=l9_146;
bool l9_149;
#if (SC_USE_CLAMP_TO_BORDER_transformScaleTex)
{
l9_149=ivec2(SC_SOFTWARE_WRAP_MODE_U_transformScaleTex,SC_SOFTWARE_WRAP_MODE_V_transformScaleTex).y==3;
}
#else
{
l9_149=(int(SC_USE_CLAMP_TO_BORDER_transformScaleTex)!=0);
}
#endif
float l9_150=l9_141;
float l9_151=l9_148;
sc_ClampUV(l9_150,transformScaleTexUvMinMax.y,transformScaleTexUvMinMax.w,l9_149,l9_151);
l9_143=l9_151;
l9_142=vec2(l9_147,l9_150);
}
#else
{
l9_143=1.0;
l9_142=vec2(l9_139,l9_141);
}
#endif
vec2 l9_152=sc_TransformUV(l9_142,(int(SC_USE_UV_TRANSFORM_transformScaleTex)!=0),transformScaleTexTransform);
float l9_153=l9_152.x;
float l9_154=l9_143;
sc_SoftwareWrapLate(l9_153,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformScaleTex,SC_SOFTWARE_WRAP_MODE_V_transformScaleTex).x,l9_111,l9_154);
float l9_155=l9_152.y;
float l9_156=l9_154;
sc_SoftwareWrapLate(l9_155,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformScaleTex,SC_SOFTWARE_WRAP_MODE_V_transformScaleTex).y,l9_111,l9_156);
float l9_157=l9_156;
vec3 l9_158=sc_SamplingCoordsViewToGlobal(vec2(l9_153,l9_155),transformScaleTexLayout,transformScaleTexGetStereoViewIndex());
vec4 l9_159;
#if (sc_CanUseTextureLod)
{
l9_159=texture2DLod(transformScaleTex,l9_158.xy,0.0);
}
#else
{
l9_159=vec4(0.0);
}
#endif
vec4 l9_160;
#if (SC_USE_CLAMP_TO_BORDER_transformScaleTex)
{
l9_160=mix(transformScaleTexBorderColor,l9_159,vec4(l9_157));
}
#else
{
l9_160=l9_159;
}
#endif
float l9_161;
#if (Tweak_N166)
{
l9_161=1.001;
}
#else
{
l9_161=0.001;
}
#endif
l9_137=((((l9_160.x-Port_RangeMinA_N040)/l9_135)*l9_136)+minSca)*mix(Port_Input0_N179,sin((float(sc_GetLocalInstanceID())*Tweak_N112)+((sc_Time.x*Port_Multiplier_N089)*Tweak_N110))*Tweak_N111,l9_161-0.001);
}
vec3 l9_162=vec3(l9_137);
vec3 l9_163=l9_30*l9_162;
float l9_164=l9_34;
sc_SoftwareWrapEarly(l9_164,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x);
float l9_165=l9_164;
float l9_166=Port_Value2_N019;
sc_SoftwareWrapEarly(l9_166,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y);
float l9_167=l9_166;
vec2 l9_168;
float l9_169;
#if (SC_USE_UV_MIN_MAX_transformPosRotTex)
{
bool l9_170;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_170=ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x==3;
}
#else
{
l9_170=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex)!=0);
}
#endif
float l9_171=l9_165;
float l9_172=1.0;
sc_ClampUV(l9_171,transformPosRotTexUvMinMax.x,transformPosRotTexUvMinMax.z,l9_170,l9_172);
float l9_173=l9_171;
float l9_174=l9_172;
bool l9_175;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_175=ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y==3;
}
#else
{
l9_175=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex)!=0);
}
#endif
float l9_176=l9_167;
float l9_177=l9_174;
sc_ClampUV(l9_176,transformPosRotTexUvMinMax.y,transformPosRotTexUvMinMax.w,l9_175,l9_177);
l9_169=l9_177;
l9_168=vec2(l9_173,l9_176);
}
#else
{
l9_169=1.0;
l9_168=vec2(l9_165,l9_167);
}
#endif
vec2 l9_178=sc_TransformUV(l9_168,(int(SC_USE_UV_TRANSFORM_transformPosRotTex)!=0),transformPosRotTexTransform);
float l9_179=l9_178.x;
float l9_180=l9_169;
sc_SoftwareWrapLate(l9_179,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x,l9_35,l9_180);
float l9_181=l9_178.y;
float l9_182=l9_180;
sc_SoftwareWrapLate(l9_181,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y,l9_35,l9_182);
float l9_183=l9_182;
vec3 l9_184=sc_SamplingCoordsViewToGlobal(vec2(l9_179,l9_181),transformPosRotTexLayout,transformPosRotTexGetStereoViewIndex());
vec4 l9_185;
#if (sc_CanUseTextureLod)
{
l9_185=texture2DLod(transformPosRotTex,l9_184.xy,0.0);
}
#else
{
l9_185=vec4(0.0);
}
#endif
vec4 l9_186;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_186=mix(transformPosRotTexBorderColor,l9_185,vec4(l9_183));
}
#else
{
l9_186=l9_185;
}
#endif
float param_1;
float param_4;
Node24_UnPack(l9_186,param_1,minRot,maxRot,param_4,minRot,maxRot,l9_110);
float l9_187=param_1;
float l9_188=param_4;
float l9_189=l9_34;
sc_SoftwareWrapEarly(l9_189,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x);
float l9_190=l9_189;
float l9_191=Port_Value2_N026;
sc_SoftwareWrapEarly(l9_191,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y);
float l9_192=l9_191;
vec2 l9_193;
float l9_194;
#if (SC_USE_UV_MIN_MAX_transformPosRotTex)
{
bool l9_195;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_195=ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x==3;
}
#else
{
l9_195=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex)!=0);
}
#endif
float l9_196=l9_190;
float l9_197=1.0;
sc_ClampUV(l9_196,transformPosRotTexUvMinMax.x,transformPosRotTexUvMinMax.z,l9_195,l9_197);
float l9_198=l9_196;
float l9_199=l9_197;
bool l9_200;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_200=ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y==3;
}
#else
{
l9_200=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex)!=0);
}
#endif
float l9_201=l9_192;
float l9_202=l9_199;
sc_ClampUV(l9_201,transformPosRotTexUvMinMax.y,transformPosRotTexUvMinMax.w,l9_200,l9_202);
l9_194=l9_202;
l9_193=vec2(l9_198,l9_201);
}
#else
{
l9_194=1.0;
l9_193=vec2(l9_190,l9_192);
}
#endif
vec2 l9_203=sc_TransformUV(l9_193,(int(SC_USE_UV_TRANSFORM_transformPosRotTex)!=0),transformPosRotTexTransform);
float l9_204=l9_203.x;
float l9_205=l9_194;
sc_SoftwareWrapLate(l9_204,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x,l9_35,l9_205);
float l9_206=l9_203.y;
float l9_207=l9_205;
sc_SoftwareWrapLate(l9_206,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y,l9_35,l9_207);
float l9_208=l9_207;
vec3 l9_209=sc_SamplingCoordsViewToGlobal(vec2(l9_204,l9_206),transformPosRotTexLayout,transformPosRotTexGetStereoViewIndex());
vec4 l9_210;
#if (sc_CanUseTextureLod)
{
l9_210=texture2DLod(transformPosRotTex,l9_209.xy,0.0);
}
#else
{
l9_210=vec4(0.0);
}
#endif
vec4 l9_211;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_211=mix(transformPosRotTexBorderColor,l9_210,vec4(l9_208));
}
#else
{
l9_211=l9_210;
}
#endif
float param_9;
float param_12;
Node27_UnPack(l9_211,param_9,minRot,maxRot,param_12,minRot,maxRot,l9_110);
float l9_212=param_9;
float l9_213=param_12;
vec3 l9_214=vec3(l9_187,l9_188,l9_212);
float l9_215;
#if (Tweak_N163)
{
l9_215=1.001;
}
#else
{
l9_215=0.001;
}
#endif
float l9_216=l9_215-0.001;
float l9_217=(float(sc_GetLocalInstanceID())+Port_Input1_N018)/l9_33;
float l9_218=l9_217;
sc_SoftwareWrapEarly(l9_218,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x);
float l9_219=l9_218;
float l9_220=Port_Value2_N019;
sc_SoftwareWrapEarly(l9_220,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y);
float l9_221=l9_220;
vec2 l9_222;
float l9_223;
#if (SC_USE_UV_MIN_MAX_transformPosRotTex)
{
bool l9_224;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_224=ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x==3;
}
#else
{
l9_224=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex)!=0);
}
#endif
float l9_225=l9_219;
float l9_226=1.0;
sc_ClampUV(l9_225,transformPosRotTexUvMinMax.x,transformPosRotTexUvMinMax.z,l9_224,l9_226);
float l9_227=l9_225;
float l9_228=l9_226;
bool l9_229;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_229=ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y==3;
}
#else
{
l9_229=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex)!=0);
}
#endif
float l9_230=l9_221;
float l9_231=l9_228;
sc_ClampUV(l9_230,transformPosRotTexUvMinMax.y,transformPosRotTexUvMinMax.w,l9_229,l9_231);
l9_223=l9_231;
l9_222=vec2(l9_227,l9_230);
}
#else
{
l9_223=1.0;
l9_222=vec2(l9_219,l9_221);
}
#endif
vec2 l9_232=sc_TransformUV(l9_222,(int(SC_USE_UV_TRANSFORM_transformPosRotTex)!=0),transformPosRotTexTransform);
float l9_233=l9_232.x;
float l9_234=l9_223;
sc_SoftwareWrapLate(l9_233,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x,l9_35,l9_234);
float l9_235=l9_232.y;
float l9_236=l9_234;
sc_SoftwareWrapLate(l9_235,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y,l9_35,l9_236);
float l9_237=l9_236;
vec3 l9_238=sc_SamplingCoordsViewToGlobal(vec2(l9_233,l9_235),transformPosRotTexLayout,transformPosRotTexGetStereoViewIndex());
vec4 l9_239;
#if (sc_CanUseTextureLod)
{
l9_239=texture2DLod(transformPosRotTex,l9_238.xy,0.0);
}
#else
{
l9_239=vec4(0.0);
}
#endif
vec4 l9_240;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_240=mix(transformPosRotTexBorderColor,l9_239,vec4(l9_237));
}
#else
{
l9_240=l9_239;
}
#endif
float param_17;
float param_20;
Node24_UnPack(l9_240,param_17,minRot,maxRot,param_20,minRot,maxRot,l9_110);
float l9_241=param_17;
float l9_242=param_20;
float l9_243=l9_217;
sc_SoftwareWrapEarly(l9_243,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x);
float l9_244=l9_243;
float l9_245=Port_Value2_N026;
sc_SoftwareWrapEarly(l9_245,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y);
float l9_246=l9_245;
vec2 l9_247;
float l9_248;
#if (SC_USE_UV_MIN_MAX_transformPosRotTex)
{
bool l9_249;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_249=ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x==3;
}
#else
{
l9_249=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex)!=0);
}
#endif
float l9_250=l9_244;
float l9_251=1.0;
sc_ClampUV(l9_250,transformPosRotTexUvMinMax.x,transformPosRotTexUvMinMax.z,l9_249,l9_251);
float l9_252=l9_250;
float l9_253=l9_251;
bool l9_254;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_254=ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y==3;
}
#else
{
l9_254=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex)!=0);
}
#endif
float l9_255=l9_246;
float l9_256=l9_253;
sc_ClampUV(l9_255,transformPosRotTexUvMinMax.y,transformPosRotTexUvMinMax.w,l9_254,l9_256);
l9_248=l9_256;
l9_247=vec2(l9_252,l9_255);
}
#else
{
l9_248=1.0;
l9_247=vec2(l9_244,l9_246);
}
#endif
vec2 l9_257=sc_TransformUV(l9_247,(int(SC_USE_UV_TRANSFORM_transformPosRotTex)!=0),transformPosRotTexTransform);
float l9_258=l9_257.x;
float l9_259=l9_248;
sc_SoftwareWrapLate(l9_258,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x,l9_35,l9_259);
float l9_260=l9_257.y;
float l9_261=l9_259;
sc_SoftwareWrapLate(l9_260,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y,l9_35,l9_261);
float l9_262=l9_261;
vec3 l9_263=sc_SamplingCoordsViewToGlobal(vec2(l9_258,l9_260),transformPosRotTexLayout,transformPosRotTexGetStereoViewIndex());
vec4 l9_264;
#if (sc_CanUseTextureLod)
{
l9_264=texture2DLod(transformPosRotTex,l9_263.xy,0.0);
}
#else
{
l9_264=vec4(0.0);
}
#endif
vec4 l9_265;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_265=mix(transformPosRotTexBorderColor,l9_264,vec4(l9_262));
}
#else
{
l9_265=l9_264;
}
#endif
float param_25;
float param_28;
Node27_UnPack(l9_265,param_25,minRot,maxRot,param_28,minRot,maxRot,l9_110);
float l9_266=param_25;
float l9_267=param_28;
vec3 l9_268=vec3(l9_241,l9_242,l9_266);
float l9_269=(float(sc_GetLocalInstanceID())+Port_Input1_N018)/l9_33;
float l9_270=l9_269;
sc_SoftwareWrapEarly(l9_270,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x);
float l9_271=l9_270;
float l9_272=Port_Value2_N019;
sc_SoftwareWrapEarly(l9_272,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y);
float l9_273=l9_272;
vec2 l9_274;
float l9_275;
#if (SC_USE_UV_MIN_MAX_transformPosRotTex)
{
bool l9_276;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_276=ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x==3;
}
#else
{
l9_276=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex)!=0);
}
#endif
float l9_277=l9_271;
float l9_278=1.0;
sc_ClampUV(l9_277,transformPosRotTexUvMinMax.x,transformPosRotTexUvMinMax.z,l9_276,l9_278);
float l9_279=l9_277;
float l9_280=l9_278;
bool l9_281;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_281=ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y==3;
}
#else
{
l9_281=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex)!=0);
}
#endif
float l9_282=l9_273;
float l9_283=l9_280;
sc_ClampUV(l9_282,transformPosRotTexUvMinMax.y,transformPosRotTexUvMinMax.w,l9_281,l9_283);
l9_275=l9_283;
l9_274=vec2(l9_279,l9_282);
}
#else
{
l9_275=1.0;
l9_274=vec2(l9_271,l9_273);
}
#endif
vec2 l9_284=sc_TransformUV(l9_274,(int(SC_USE_UV_TRANSFORM_transformPosRotTex)!=0),transformPosRotTexTransform);
float l9_285=l9_284.x;
float l9_286=l9_275;
sc_SoftwareWrapLate(l9_285,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x,l9_35,l9_286);
float l9_287=l9_284.y;
float l9_288=l9_286;
sc_SoftwareWrapLate(l9_287,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y,l9_35,l9_288);
float l9_289=l9_288;
vec3 l9_290=sc_SamplingCoordsViewToGlobal(vec2(l9_285,l9_287),transformPosRotTexLayout,transformPosRotTexGetStereoViewIndex());
vec4 l9_291;
#if (sc_CanUseTextureLod)
{
l9_291=texture2DLod(transformPosRotTex,l9_290.xy,0.0);
}
#else
{
l9_291=vec4(0.0);
}
#endif
vec4 l9_292;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_292=mix(transformPosRotTexBorderColor,l9_291,vec4(l9_289));
}
#else
{
l9_292=l9_291;
}
#endif
float param_33;
float param_36;
Node24_UnPack(l9_292,param_33,minRot,maxRot,param_36,minRot,maxRot,l9_110);
float l9_293=param_33;
float l9_294=param_36;
float l9_295=l9_269;
sc_SoftwareWrapEarly(l9_295,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x);
float l9_296=l9_295;
float l9_297=Port_Value2_N026;
sc_SoftwareWrapEarly(l9_297,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y);
float l9_298=l9_297;
vec2 l9_299;
float l9_300;
#if (SC_USE_UV_MIN_MAX_transformPosRotTex)
{
bool l9_301;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_301=ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x==3;
}
#else
{
l9_301=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex)!=0);
}
#endif
float l9_302=l9_296;
float l9_303=1.0;
sc_ClampUV(l9_302,transformPosRotTexUvMinMax.x,transformPosRotTexUvMinMax.z,l9_301,l9_303);
float l9_304=l9_302;
float l9_305=l9_303;
bool l9_306;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_306=ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y==3;
}
#else
{
l9_306=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex)!=0);
}
#endif
float l9_307=l9_298;
float l9_308=l9_305;
sc_ClampUV(l9_307,transformPosRotTexUvMinMax.y,transformPosRotTexUvMinMax.w,l9_306,l9_308);
l9_300=l9_308;
l9_299=vec2(l9_304,l9_307);
}
#else
{
l9_300=1.0;
l9_299=vec2(l9_296,l9_298);
}
#endif
vec2 l9_309=sc_TransformUV(l9_299,(int(SC_USE_UV_TRANSFORM_transformPosRotTex)!=0),transformPosRotTexTransform);
float l9_310=l9_309.x;
float l9_311=l9_300;
sc_SoftwareWrapLate(l9_310,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).x,l9_35,l9_311);
float l9_312=l9_309.y;
float l9_313=l9_311;
sc_SoftwareWrapLate(l9_312,ivec2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex).y,l9_35,l9_313);
float l9_314=l9_313;
vec3 l9_315=sc_SamplingCoordsViewToGlobal(vec2(l9_310,l9_312),transformPosRotTexLayout,transformPosRotTexGetStereoViewIndex());
vec4 l9_316;
#if (sc_CanUseTextureLod)
{
l9_316=texture2DLod(transformPosRotTex,l9_315.xy,0.0);
}
#else
{
l9_316=vec4(0.0);
}
#endif
vec4 l9_317;
#if (SC_USE_CLAMP_TO_BORDER_transformPosRotTex)
{
l9_317=mix(transformPosRotTexBorderColor,l9_316,vec4(l9_314));
}
#else
{
l9_317=l9_316;
}
#endif
float param_41;
float param_44;
Node27_UnPack(l9_317,param_41,minRot,maxRot,param_44,minRot,maxRot,l9_110);
float l9_318=param_41;
float l9_319=param_44;
vec3 l9_320=vec3(l9_293,l9_294,l9_318);
vec3 l9_321;
vec3 l9_322;
vec3 l9_323;
if (l9_27)
{
l9_323=varTangent.xyz;
l9_322=varNormal;
l9_321=varPos;
}
else
{
l9_323=(cross(cross(l9_32,l9_320)-(l9_32*vec3(l9_319)),l9_320)*vec3(Port_Input1_N071))+l9_32;
l9_322=(cross(cross(l9_31,l9_268)-(l9_31*vec3(l9_267)),l9_268)*vec3(Port_Input1_N083))+l9_31;
l9_321=(sc_ModelMatrix*vec4((vec4(minPos+(((l9_59-0.0)*l9_60)/l9_61),minPos+(((l9_85-0.0)*l9_60)/l9_61),minPos+(((l9_109-0.0)*l9_60)/l9_61),0.0).xyz+((cross(cross(l9_163,l9_214)-(l9_163*vec3(l9_213)),l9_214)*vec3(Port_Input1_N037))+l9_163))+mix(Port_Input0_N178,vec3(Port_Value1_N162,sin((float(sc_GetLocalInstanceID())*Tweak_N144)+((sc_Time.x*Port_Multiplier_N089)*Tweak_N142))*Tweak_N143,Port_Value3_N162),vec3(l9_216)),1.0)).xyz;
}
varPos=l9_321;
varNormal=normalize(l9_322);
vec3 l9_324=normalize(l9_323);
varTangent=vec4(l9_324.x,l9_324.y,l9_324.z,varTangent.w);
varTangent.w=tangent.w;
#if (UseViewSpaceDepthVariant&&((sc_OITDepthGatherPass||sc_OITCompositingPass)||sc_OITDepthBoundsPass))
{
vec4 l9_325;
#if (sc_RenderingSpace==3)
{
l9_325=sc_ProjectionMatrixInverseArray[sc_GetStereoViewIndex()]*l9_17;
}
#else
{
vec4 l9_326;
#if (sc_RenderingSpace==2)
{
l9_326=sc_ViewMatrixArray[sc_GetStereoViewIndex()]*l9_17;
}
#else
{
vec4 l9_327;
#if (sc_RenderingSpace==1)
{
l9_327=sc_ModelViewMatrixArray[sc_GetStereoViewIndex()]*l9_17;
}
#else
{
l9_327=l9_17;
}
#endif
l9_326=l9_327;
}
#endif
l9_325=l9_326;
}
#endif
varViewSpaceDepth=-l9_325.z;
}
#endif
vec4 l9_328;
#if (sc_RenderingSpace==3)
{
l9_328=l9_17;
}
#else
{
vec4 l9_329;
#if (sc_RenderingSpace==4)
{
l9_329=(sc_ModelViewMatrixArray[sc_GetStereoViewIndex()]*l9_17)*vec4(1.0/sc_Camera.aspect,1.0,1.0,1.0);
}
#else
{
vec4 l9_330;
#if (sc_RenderingSpace==2)
{
l9_330=sc_ViewProjectionMatrixArray[sc_GetStereoViewIndex()]*vec4(varPos,1.0);
}
#else
{
vec4 l9_331;
#if (sc_RenderingSpace==1)
{
l9_331=sc_ViewProjectionMatrixArray[sc_GetStereoViewIndex()]*vec4(varPos,1.0);
}
#else
{
l9_331=vec4(0.0);
}
#endif
l9_330=l9_331;
}
#endif
l9_329=l9_330;
}
#endif
l9_328=l9_329;
}
#endif
varPackedTex=vec4(l9_28,l9_2);
#if (sc_ProjectiveShadowsReceiver)
{
vec4 l9_332;
#if (sc_RenderingSpace==1)
{
l9_332=sc_ModelMatrix*l9_17;
}
#else
{
l9_332=l9_17;
}
#endif
vec4 l9_333=sc_ProjectorMatrix*l9_332;
varShadowTex=((l9_333.xy/vec2(l9_333.w))*0.5)+vec2(0.5);
}
#endif
vec4 l9_334;
#if (sc_DepthBufferMode==1)
{
vec4 l9_335;
if (sc_ProjectionMatrixArray[sc_GetStereoViewIndex()][2].w!=0.0)
{
vec4 l9_336=l9_328;
l9_336.z=((log2(max(sc_Camera.clipPlanes.x,1.0+l9_328.w))*(2.0/log2(sc_Camera.clipPlanes.y+1.0)))-1.0)*l9_328.w;
l9_335=l9_336;
}
else
{
l9_335=l9_328;
}
l9_334=l9_335;
}
#else
{
l9_334=l9_328;
}
#endif
vec4 l9_337;
#if (sc_TAAEnabled)
{
vec2 l9_338=l9_334.xy+(sc_TAAJitterOffset*l9_334.w);
l9_337=vec4(l9_338.x,l9_338.y,l9_334.z,l9_334.w);
}
#else
{
l9_337=l9_334;
}
#endif
vec4 l9_339;
#if (sc_ShaderCacheConstant!=0)
{
vec4 l9_340=l9_337;
l9_340.x=l9_337.x+(sc_UniformConstants.x*float(sc_ShaderCacheConstant));
l9_339=l9_340;
}
#else
{
l9_339=l9_337;
}
#endif
#if (sc_StereoRenderingMode>0)
{
varStereoViewID=float(sc_StereoViewID);
}
#endif
#if (sc_StereoRenderingMode==1)
{
float l9_341=dot(l9_339,sc_StereoClipPlanes[sc_StereoViewID]);
#if (sc_StereoRendering_IsClipDistanceEnabled==1)
{
sc_SetClipDistancePlatform(l9_341);
}
#else
{
varClipDistance=l9_341;
}
#endif
}
#endif
gl_Position=l9_339;
}
#elif defined FRAGMENT_SHADER // #if defined VERTEX_SHADER
#if 0
NGS_BACKEND_SHADER_FLAGS_BEGIN__
NGS_BACKEND_SHADER_FLAGS_END__
#endif
#define SC_DISABLE_FRUSTUM_CULLING 1
#define SC_ENABLE_INSTANCED_RENDERING
#define sc_StereoRendering_Disabled 0
#define sc_StereoRendering_InstancedClipped 1
#define sc_StereoRendering_Multiview 2
#ifdef GL_ES
    #define SC_GLES_VERSION_20 2000
    #define SC_GLES_VERSION_30 3000
    #define SC_GLES_VERSION_31 3100
    #define SC_GLES_VERSION_32 3200
#endif
#ifdef VERTEX_SHADER
    #define scOutPos(clipPosition) gl_Position=clipPosition
    #define MAIN main
#endif
#ifdef SC_ENABLE_INSTANCED_RENDERING
    #ifndef sc_EnableInstancing
        #define sc_EnableInstancing 1
    #endif
#endif
#define mod(x,y) (x-y*floor((x+1e-6)/y))
#if defined(GL_ES)&&(__VERSION__<300)&&!defined(GL_OES_standard_derivatives)
#define dFdx(A) (A)
#define dFdy(A) (A)
#define fwidth(A) (A)
#endif
#if __VERSION__<300
#define isinf(x) (x!=0.0&&x*2.0==x ? true : false)
#define isnan(x) (x>0.0||x<0.0||x==0.0 ? false : true)
#define inverse(M) M
#endif
#ifdef sc_EnableFeatureLevelES3
    #ifdef sc_EnableStereoClipDistance
        #if defined(GL_APPLE_clip_distance)
            #extension GL_APPLE_clip_distance : require
        #elif defined(GL_EXT_clip_cull_distance)
            #extension GL_EXT_clip_cull_distance : require
        #else
            #error Clip distance is requested but not supported by this device.
        #endif
    #endif
#else
    #ifdef sc_EnableStereoClipDistance
        #error Clip distance is requested but not supported by this device.
    #endif
#endif
#ifdef sc_EnableFeatureLevelES3
    #ifdef VERTEX_SHADER
        #define attribute in
        #define varying out
    #endif
    #ifdef FRAGMENT_SHADER
        #define varying in
    #endif
    #define gl_FragColor sc_FragData0
    #define texture2D texture
    #define texture2DLod textureLod
    #define texture2DLodEXT textureLod
    #define textureCubeLodEXT textureLod
    #define sc_CanUseTextureLod 1
#else
    #ifdef FRAGMENT_SHADER
        #if defined(GL_EXT_shader_texture_lod)
            #extension GL_EXT_shader_texture_lod : require
            #define sc_CanUseTextureLod 1
            #define texture2DLod texture2DLodEXT
        #endif
    #endif
#endif
#if defined(sc_EnableMultiviewStereoRendering)
    #define sc_StereoRenderingMode sc_StereoRendering_Multiview
    #define sc_NumStereoViews 2
    #extension GL_OVR_multiview2 : require
    #ifdef VERTEX_SHADER
        #ifdef sc_EnableInstancingFallback
            #define sc_GlobalInstanceID (sc_FallbackInstanceID*2+gl_InstanceID)
        #else
            #define sc_GlobalInstanceID gl_InstanceID
        #endif
        #define sc_LocalInstanceID sc_GlobalInstanceID
        #define sc_StereoViewID int(gl_ViewID_OVR)
    #endif
#elif defined(sc_EnableInstancedClippedStereoRendering)
    #ifndef sc_EnableInstancing
        #error Instanced-clipped stereo rendering requires enabled instancing.
    #endif
    #ifndef sc_EnableStereoClipDistance
        #define sc_StereoRendering_IsClipDistanceEnabled 0
    #else
        #define sc_StereoRendering_IsClipDistanceEnabled 1
    #endif
    #define sc_StereoRenderingMode sc_StereoRendering_InstancedClipped
    #define sc_NumStereoClipPlanes 1
    #define sc_NumStereoViews 2
    #ifdef VERTEX_SHADER
        #ifdef sc_EnableInstancingFallback
            #define sc_GlobalInstanceID (sc_FallbackInstanceID*2+gl_InstanceID)
        #else
            #define sc_GlobalInstanceID gl_InstanceID
        #endif
        #ifdef sc_EnableFeatureLevelES3
            #define sc_LocalInstanceID (sc_GlobalInstanceID/2)
            #define sc_StereoViewID (sc_GlobalInstanceID%2)
        #else
            #define sc_LocalInstanceID int(sc_GlobalInstanceID/2.0)
            #define sc_StereoViewID int(mod(sc_GlobalInstanceID,2.0))
        #endif
    #endif
#else
    #define sc_StereoRenderingMode sc_StereoRendering_Disabled
#endif
#ifdef VERTEX_SHADER
    #ifdef sc_EnableInstancing
        #ifdef GL_ES
            #if defined(sc_EnableFeatureLevelES2)&&!defined(GL_EXT_draw_instanced)
                #define gl_InstanceID (0)
            #endif
        #else
            #if defined(sc_EnableFeatureLevelES2)&&!defined(GL_EXT_draw_instanced)&&!defined(GL_ARB_draw_instanced)&&!defined(GL_EXT_gpu_shader4)
                #define gl_InstanceID (0)
            #endif
        #endif
        #ifdef GL_ARB_draw_instanced
            #extension GL_ARB_draw_instanced : require
            #define gl_InstanceID gl_InstanceIDARB
        #endif
        #ifdef GL_EXT_draw_instanced
            #extension GL_EXT_draw_instanced : require
            #define gl_InstanceID gl_InstanceIDEXT
        #endif
        #ifndef sc_InstanceID
            #define sc_InstanceID gl_InstanceID
        #endif
        #ifndef sc_GlobalInstanceID
            #ifdef sc_EnableInstancingFallback
                #define sc_GlobalInstanceID (sc_FallbackInstanceID)
                #define sc_LocalInstanceID (sc_FallbackInstanceID)
            #else
                #define sc_GlobalInstanceID gl_InstanceID
                #define sc_LocalInstanceID gl_InstanceID
            #endif
        #endif
    #endif
#endif
#ifdef VERTEX_SHADER
    #if (__VERSION__<300)&&!defined(GL_EXT_gpu_shader4)
        #define gl_VertexID (0)
    #endif
#endif
#ifndef GL_ES
        #extension GL_EXT_gpu_shader4 : enable
    #extension GL_ARB_shader_texture_lod : enable
    #ifndef texture2DLodEXT
        #define texture2DLodEXT texture2DLod
    #endif
    #ifndef sc_CanUseTextureLod
    #define sc_CanUseTextureLod 1
    #endif
    #define precision
    #define lowp
    #define mediump
    #define highp
    #define sc_FragmentPrecision
#endif
#ifdef sc_EnableFeatureLevelES3
    #define sc_CanUseSampler2DArray 1
#endif
#if defined(sc_EnableFeatureLevelES2)&&defined(GL_ES)
    #ifdef FRAGMENT_SHADER
        #ifdef GL_OES_standard_derivatives
            #extension GL_OES_standard_derivatives : require
            #define sc_CanUseStandardDerivatives 1
        #endif
    #endif
    #ifdef GL_EXT_texture_array
        #extension GL_EXT_texture_array : require
        #define sc_CanUseSampler2DArray 1
    #else
        #define sc_CanUseSampler2DArray 0
    #endif
#endif
#ifdef GL_ES
    #ifdef sc_FramebufferFetch
        #if defined(GL_EXT_shader_framebuffer_fetch)
            #extension GL_EXT_shader_framebuffer_fetch : require
        #elif defined(GL_ARM_shader_framebuffer_fetch)
            #extension GL_ARM_shader_framebuffer_fetch : require
        #else
            #error Framebuffer fetch is requested but not supported by this device.
        #endif
    #endif
    #ifdef GL_FRAGMENT_PRECISION_HIGH
        #define sc_FragmentPrecision highp
    #else
        #define sc_FragmentPrecision mediump
    #endif
    #ifdef FRAGMENT_SHADER
        precision highp int;
        precision highp float;
    #endif
#endif
#ifdef VERTEX_SHADER
    #ifdef sc_EnableMultiviewStereoRendering
        layout(num_views=sc_NumStereoViews) in;
    #endif
#endif
#if __VERSION__>100
    #define SC_INT_FALLBACK_FLOAT int
    #define SC_INTERPOLATION_FLAT flat
    #define SC_INTERPOLATION_CENTROID centroid
#else
    #define SC_INT_FALLBACK_FLOAT float
    #define SC_INTERPOLATION_FLAT
    #define SC_INTERPOLATION_CENTROID
#endif
#ifndef sc_NumStereoViews
    #define sc_NumStereoViews 1
#endif
#ifndef sc_CanUseSampler2DArray
    #define sc_CanUseSampler2DArray 0
#endif
    #if __VERSION__==100||defined(SCC_VALIDATION)
        #define sampler2DArray vec2
        #define sampler3D vec3
        #define samplerCube vec4
        vec4 texture3D(vec3 s,vec3 uv)                       { return vec4(0.0); }
        vec4 texture3D(vec3 s,vec3 uv,float bias)           { return vec4(0.0); }
        vec4 texture3DLod(vec3 s,vec3 uv,float bias)        { return vec4(0.0); }
        vec4 texture3DLodEXT(vec3 s,vec3 uv,float lod)      { return vec4(0.0); }
        vec4 texture2DArray(vec2 s,vec3 uv)                  { return vec4(0.0); }
        vec4 texture2DArray(vec2 s,vec3 uv,float bias)      { return vec4(0.0); }
        vec4 texture2DArrayLod(vec2 s,vec3 uv,float lod)    { return vec4(0.0); }
        vec4 texture2DArrayLodEXT(vec2 s,vec3 uv,float lod) { return vec4(0.0); }
        vec4 textureCube(vec4 s,vec3 uv)                     { return vec4(0.0); }
        vec4 textureCube(vec4 s,vec3 uv,float lod)          { return vec4(0.0); }
        vec4 textureCubeLod(vec4 s,vec3 uv,float lod)       { return vec4(0.0); }
        vec4 textureCubeLodEXT(vec4 s,vec3 uv,float lod)    { return vec4(0.0); }
        #if defined(VERTEX_SHADER)||!sc_CanUseTextureLod
            #define texture2DLod(s,uv,lod)      vec4(0.0)
            #define texture2DLodEXT(s,uv,lod)   vec4(0.0)
        #endif
    #elif __VERSION__>=300
        #define texture3D texture
        #define textureCube texture
        #define texture2DArray texture
        #define texture2DLod textureLod
        #define texture3DLod textureLod
        #define texture2DLodEXT textureLod
        #define texture3DLodEXT textureLod
        #define textureCubeLod textureLod
        #define textureCubeLodEXT textureLod
        #define texture2DArrayLod textureLod
        #define texture2DArrayLodEXT textureLod
    #endif
    #ifndef sc_TextureRenderingLayout_Regular
        #define sc_TextureRenderingLayout_Regular 0
        #define sc_TextureRenderingLayout_StereoInstancedClipped 1
        #define sc_TextureRenderingLayout_StereoMultiview 2
    #endif
    #define depthToGlobal   depthScreenToViewSpace
    #define depthToLocal    depthViewToScreenSpace
    #ifndef quantizeUV
        #define quantizeUV sc_QuantizeUV
        #define sc_platformUVFlip sc_PlatformFlipV
        #define sc_PlatformFlipUV sc_PlatformFlipV
    #endif
    #ifndef sc_texture2DLod
        #define sc_texture2DLod sc_InternalTextureLevel
        #define sc_textureLod sc_InternalTextureLevel
        #define sc_textureBias sc_InternalTextureBiasOrLevel
        #define sc_texture sc_InternalTexture
    #endif
#if sc_ExporterVersion<224
#define MAIN main
#endif
    #ifndef sc_FramebufferFetch
    #define sc_FramebufferFetch 0
    #elif sc_FramebufferFetch==1
    #undef sc_FramebufferFetch
    #define sc_FramebufferFetch 1
    #endif
    #if !defined(GL_ES)&&__VERSION__<420
        #ifdef FRAGMENT_SHADER
            #define sc_FragData0 gl_FragData[0]
            #define sc_FragData1 gl_FragData[1]
            #define sc_FragData2 gl_FragData[2]
            #define sc_FragData3 gl_FragData[3]
        #endif
        mat4 getFragData() { return mat4(vec4(0.0),vec4(0.0),vec4(0.0),vec4(0.0)); }
        #define gl_LastFragData (getFragData())
        #if sc_FramebufferFetch
            #error Framebuffer fetch is requested but not supported by this device.
        #endif
    #elif defined(sc_EnableFeatureLevelES3)
        #if sc_FragDataCount>=1
            #define sc_DeclareFragData0(StorageQualifier) layout(location=0) StorageQualifier sc_FragmentPrecision vec4 sc_FragData0
        #endif
        #if sc_FragDataCount>=2
            #define sc_DeclareFragData1(StorageQualifier) layout(location=1) StorageQualifier sc_FragmentPrecision vec4 sc_FragData1
        #endif
        #if sc_FragDataCount>=3
            #define sc_DeclareFragData2(StorageQualifier) layout(location=2) StorageQualifier sc_FragmentPrecision vec4 sc_FragData2
        #endif
        #if sc_FragDataCount>=4
            #define sc_DeclareFragData3(StorageQualifier) layout(location=3) StorageQualifier sc_FragmentPrecision vec4 sc_FragData3
        #endif
        #ifndef sc_DeclareFragData0
            #define sc_DeclareFragData0(_) const vec4 sc_FragData0=vec4(0.0)
        #endif
        #ifndef sc_DeclareFragData1
            #define sc_DeclareFragData1(_) const vec4 sc_FragData1=vec4(0.0)
        #endif
        #ifndef sc_DeclareFragData2
            #define sc_DeclareFragData2(_) const vec4 sc_FragData2=vec4(0.0)
        #endif
        #ifndef sc_DeclareFragData3
            #define sc_DeclareFragData3(_) const vec4 sc_FragData3=vec4(0.0)
        #endif
        #if sc_FramebufferFetch
            #ifdef GL_EXT_shader_framebuffer_fetch
                sc_DeclareFragData0(inout);
                sc_DeclareFragData1(inout);
                sc_DeclareFragData2(inout);
                sc_DeclareFragData3(inout);
                mediump mat4 getFragData() { return mat4(sc_FragData0,sc_FragData1,sc_FragData2,sc_FragData3); }
                #define gl_LastFragData (getFragData())
            #elif defined(GL_ARM_shader_framebuffer_fetch)
                sc_DeclareFragData0(out);
                sc_DeclareFragData1(out);
                sc_DeclareFragData2(out);
                sc_DeclareFragData3(out);
                mediump mat4 getFragData() { return mat4(gl_LastFragColorARM,vec4(0.0),vec4(0.0),vec4(0.0)); }
                #define gl_LastFragData (getFragData())
            #endif
        #else
            #ifdef sc_EnableFeatureLevelES3
                sc_DeclareFragData0(out);
                sc_DeclareFragData1(out);
                sc_DeclareFragData2(out);
                sc_DeclareFragData3(out);
                mediump mat4 getFragData() { return mat4(vec4(0.0),vec4(0.0),vec4(0.0),vec4(0.0)); }
                #define gl_LastFragData (getFragData())
            #endif
        #endif
    #elif defined(sc_EnableFeatureLevelES2)
        #define sc_FragData0 gl_FragColor
        mediump mat4 getFragData() { return mat4(vec4(0.0),vec4(0.0),vec4(0.0),vec4(0.0)); }
    #else
        #define sc_FragData0 gl_FragColor
        mediump mat4 getFragData() { return mat4(vec4(0.0),vec4(0.0),vec4(0.0),vec4(0.0)); }
    #endif
struct SurfaceProperties
{
vec3 albedo;
float opacity;
vec3 normal;
vec3 positionWS;
vec3 viewDirWS;
float metallic;
float roughness;
vec3 emissive;
vec3 ao;
vec3 specularAo;
vec3 bakedShadows;
vec3 specColor;
};
struct LightingComponents
{
vec3 directDiffuse;
vec3 directSpecular;
vec3 indirectDiffuse;
vec3 indirectSpecular;
vec3 emitted;
vec3 transmitted;
};
struct LightProperties
{
vec3 direction;
vec3 color;
float attenuation;
};
struct sc_SphericalGaussianLight_t
{
vec3 color;
float sharpness;
vec3 axis;
};
#ifndef sc_CanUseStandardDerivatives
#define sc_CanUseStandardDerivatives 0
#elif sc_CanUseStandardDerivatives==1
#undef sc_CanUseStandardDerivatives
#define sc_CanUseStandardDerivatives 1
#endif
#ifndef sc_CanUseTextureLod
#define sc_CanUseTextureLod 0
#elif sc_CanUseTextureLod==1
#undef sc_CanUseTextureLod
#define sc_CanUseTextureLod 1
#endif
#ifndef sc_StereoRenderingMode
#define sc_StereoRenderingMode 0
#endif
#ifndef sc_EnvmapDiffuseHasSwappedViews
#define sc_EnvmapDiffuseHasSwappedViews 0
#elif sc_EnvmapDiffuseHasSwappedViews==1
#undef sc_EnvmapDiffuseHasSwappedViews
#define sc_EnvmapDiffuseHasSwappedViews 1
#endif
#ifndef sc_EnvmapDiffuseLayout
#define sc_EnvmapDiffuseLayout 0
#endif
#ifndef sc_EnvmapSpecularHasSwappedViews
#define sc_EnvmapSpecularHasSwappedViews 0
#elif sc_EnvmapSpecularHasSwappedViews==1
#undef sc_EnvmapSpecularHasSwappedViews
#define sc_EnvmapSpecularHasSwappedViews 1
#endif
#ifndef sc_EnvmapSpecularLayout
#define sc_EnvmapSpecularLayout 0
#endif
#ifndef sc_ScreenTextureHasSwappedViews
#define sc_ScreenTextureHasSwappedViews 0
#elif sc_ScreenTextureHasSwappedViews==1
#undef sc_ScreenTextureHasSwappedViews
#define sc_ScreenTextureHasSwappedViews 1
#endif
#ifndef sc_ScreenTextureLayout
#define sc_ScreenTextureLayout 0
#endif
#ifndef sc_NumStereoViews
#define sc_NumStereoViews 1
#endif
#ifndef sc_BlendMode_Normal
#define sc_BlendMode_Normal 0
#elif sc_BlendMode_Normal==1
#undef sc_BlendMode_Normal
#define sc_BlendMode_Normal 1
#endif
#ifndef sc_BlendMode_AlphaToCoverage
#define sc_BlendMode_AlphaToCoverage 0
#elif sc_BlendMode_AlphaToCoverage==1
#undef sc_BlendMode_AlphaToCoverage
#define sc_BlendMode_AlphaToCoverage 1
#endif
#ifndef sc_BlendMode_PremultipliedAlphaHardware
#define sc_BlendMode_PremultipliedAlphaHardware 0
#elif sc_BlendMode_PremultipliedAlphaHardware==1
#undef sc_BlendMode_PremultipliedAlphaHardware
#define sc_BlendMode_PremultipliedAlphaHardware 1
#endif
#ifndef sc_BlendMode_PremultipliedAlphaAuto
#define sc_BlendMode_PremultipliedAlphaAuto 0
#elif sc_BlendMode_PremultipliedAlphaAuto==1
#undef sc_BlendMode_PremultipliedAlphaAuto
#define sc_BlendMode_PremultipliedAlphaAuto 1
#endif
#ifndef sc_BlendMode_PremultipliedAlpha
#define sc_BlendMode_PremultipliedAlpha 0
#elif sc_BlendMode_PremultipliedAlpha==1
#undef sc_BlendMode_PremultipliedAlpha
#define sc_BlendMode_PremultipliedAlpha 1
#endif
#ifndef sc_BlendMode_AddWithAlphaFactor
#define sc_BlendMode_AddWithAlphaFactor 0
#elif sc_BlendMode_AddWithAlphaFactor==1
#undef sc_BlendMode_AddWithAlphaFactor
#define sc_BlendMode_AddWithAlphaFactor 1
#endif
#ifndef sc_BlendMode_AlphaTest
#define sc_BlendMode_AlphaTest 0
#elif sc_BlendMode_AlphaTest==1
#undef sc_BlendMode_AlphaTest
#define sc_BlendMode_AlphaTest 1
#endif
#ifndef sc_BlendMode_Multiply
#define sc_BlendMode_Multiply 0
#elif sc_BlendMode_Multiply==1
#undef sc_BlendMode_Multiply
#define sc_BlendMode_Multiply 1
#endif
#ifndef sc_BlendMode_MultiplyOriginal
#define sc_BlendMode_MultiplyOriginal 0
#elif sc_BlendMode_MultiplyOriginal==1
#undef sc_BlendMode_MultiplyOriginal
#define sc_BlendMode_MultiplyOriginal 1
#endif
#ifndef sc_BlendMode_ColoredGlass
#define sc_BlendMode_ColoredGlass 0
#elif sc_BlendMode_ColoredGlass==1
#undef sc_BlendMode_ColoredGlass
#define sc_BlendMode_ColoredGlass 1
#endif
#ifndef sc_BlendMode_Add
#define sc_BlendMode_Add 0
#elif sc_BlendMode_Add==1
#undef sc_BlendMode_Add
#define sc_BlendMode_Add 1
#endif
#ifndef sc_BlendMode_Screen
#define sc_BlendMode_Screen 0
#elif sc_BlendMode_Screen==1
#undef sc_BlendMode_Screen
#define sc_BlendMode_Screen 1
#endif
#ifndef sc_BlendMode_Min
#define sc_BlendMode_Min 0
#elif sc_BlendMode_Min==1
#undef sc_BlendMode_Min
#define sc_BlendMode_Min 1
#endif
#ifndef sc_BlendMode_Max
#define sc_BlendMode_Max 0
#elif sc_BlendMode_Max==1
#undef sc_BlendMode_Max
#define sc_BlendMode_Max 1
#endif
#ifndef sc_ProjectiveShadowsReceiver
#define sc_ProjectiveShadowsReceiver 0
#elif sc_ProjectiveShadowsReceiver==1
#undef sc_ProjectiveShadowsReceiver
#define sc_ProjectiveShadowsReceiver 1
#endif
#ifndef sc_MotionVectorsPass
#define sc_MotionVectorsPass 0
#elif sc_MotionVectorsPass==1
#undef sc_MotionVectorsPass
#define sc_MotionVectorsPass 1
#endif
#ifndef sc_StereoRendering_IsClipDistanceEnabled
#define sc_StereoRendering_IsClipDistanceEnabled 0
#endif
#ifndef sc_ShaderComplexityAnalyzer
#define sc_ShaderComplexityAnalyzer 0
#elif sc_ShaderComplexityAnalyzer==1
#undef sc_ShaderComplexityAnalyzer
#define sc_ShaderComplexityAnalyzer 1
#endif
#ifndef sc_ShaderCacheConstant
#define sc_ShaderCacheConstant 0
#endif
#ifndef sc_UseFramebufferFetchMarker
#define sc_UseFramebufferFetchMarker 0
#elif sc_UseFramebufferFetchMarker==1
#undef sc_UseFramebufferFetchMarker
#define sc_UseFramebufferFetchMarker 1
#endif
#ifndef sc_FramebufferFetch
#define sc_FramebufferFetch 0
#elif sc_FramebufferFetch==1
#undef sc_FramebufferFetch
#define sc_FramebufferFetch 1
#endif
#ifndef sc_IsEditor
#define sc_IsEditor 0
#elif sc_IsEditor==1
#undef sc_IsEditor
#define sc_IsEditor 1
#endif
#ifndef sc_GetFramebufferColorInvalidUsageMarker
#define sc_GetFramebufferColorInvalidUsageMarker 0
#elif sc_GetFramebufferColorInvalidUsageMarker==1
#undef sc_GetFramebufferColorInvalidUsageMarker
#define sc_GetFramebufferColorInvalidUsageMarker 1
#endif
#ifndef sc_BlendMode_Software
#define sc_BlendMode_Software 0
#elif sc_BlendMode_Software==1
#undef sc_BlendMode_Software
#define sc_BlendMode_Software 1
#endif
#ifndef sc_SSAOEnabled
#define sc_SSAOEnabled 0
#elif sc_SSAOEnabled==1
#undef sc_SSAOEnabled
#define sc_SSAOEnabled 1
#endif
#ifndef SC_DEVICE_CLASS
#define SC_DEVICE_CLASS -1
#endif
#ifndef SC_GL_FRAGMENT_PRECISION_HIGH
#define SC_GL_FRAGMENT_PRECISION_HIGH 0
#elif SC_GL_FRAGMENT_PRECISION_HIGH==1
#undef SC_GL_FRAGMENT_PRECISION_HIGH
#define SC_GL_FRAGMENT_PRECISION_HIGH 1
#endif
#ifndef intensityTextureHasSwappedViews
#define intensityTextureHasSwappedViews 0
#elif intensityTextureHasSwappedViews==1
#undef intensityTextureHasSwappedViews
#define intensityTextureHasSwappedViews 1
#endif
#ifndef intensityTextureLayout
#define intensityTextureLayout 0
#endif
#ifndef BLEND_MODE_REALISTIC
#define BLEND_MODE_REALISTIC 0
#elif BLEND_MODE_REALISTIC==1
#undef BLEND_MODE_REALISTIC
#define BLEND_MODE_REALISTIC 1
#endif
#ifndef BLEND_MODE_FORGRAY
#define BLEND_MODE_FORGRAY 0
#elif BLEND_MODE_FORGRAY==1
#undef BLEND_MODE_FORGRAY
#define BLEND_MODE_FORGRAY 1
#endif
#ifndef BLEND_MODE_NOTBRIGHT
#define BLEND_MODE_NOTBRIGHT 0
#elif BLEND_MODE_NOTBRIGHT==1
#undef BLEND_MODE_NOTBRIGHT
#define BLEND_MODE_NOTBRIGHT 1
#endif
#ifndef BLEND_MODE_DIVISION
#define BLEND_MODE_DIVISION 0
#elif BLEND_MODE_DIVISION==1
#undef BLEND_MODE_DIVISION
#define BLEND_MODE_DIVISION 1
#endif
#ifndef BLEND_MODE_BRIGHT
#define BLEND_MODE_BRIGHT 0
#elif BLEND_MODE_BRIGHT==1
#undef BLEND_MODE_BRIGHT
#define BLEND_MODE_BRIGHT 1
#endif
#ifndef BLEND_MODE_INTENSE
#define BLEND_MODE_INTENSE 0
#elif BLEND_MODE_INTENSE==1
#undef BLEND_MODE_INTENSE
#define BLEND_MODE_INTENSE 1
#endif
#ifndef SC_USE_UV_TRANSFORM_intensityTexture
#define SC_USE_UV_TRANSFORM_intensityTexture 0
#elif SC_USE_UV_TRANSFORM_intensityTexture==1
#undef SC_USE_UV_TRANSFORM_intensityTexture
#define SC_USE_UV_TRANSFORM_intensityTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_intensityTexture
#define SC_SOFTWARE_WRAP_MODE_U_intensityTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_intensityTexture
#define SC_SOFTWARE_WRAP_MODE_V_intensityTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_intensityTexture
#define SC_USE_UV_MIN_MAX_intensityTexture 0
#elif SC_USE_UV_MIN_MAX_intensityTexture==1
#undef SC_USE_UV_MIN_MAX_intensityTexture
#define SC_USE_UV_MIN_MAX_intensityTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_intensityTexture
#define SC_USE_CLAMP_TO_BORDER_intensityTexture 0
#elif SC_USE_CLAMP_TO_BORDER_intensityTexture==1
#undef SC_USE_CLAMP_TO_BORDER_intensityTexture
#define SC_USE_CLAMP_TO_BORDER_intensityTexture 1
#endif
#ifndef BLEND_MODE_LIGHTEN
#define BLEND_MODE_LIGHTEN 0
#elif BLEND_MODE_LIGHTEN==1
#undef BLEND_MODE_LIGHTEN
#define BLEND_MODE_LIGHTEN 1
#endif
#ifndef BLEND_MODE_DARKEN
#define BLEND_MODE_DARKEN 0
#elif BLEND_MODE_DARKEN==1
#undef BLEND_MODE_DARKEN
#define BLEND_MODE_DARKEN 1
#endif
#ifndef BLEND_MODE_DIVIDE
#define BLEND_MODE_DIVIDE 0
#elif BLEND_MODE_DIVIDE==1
#undef BLEND_MODE_DIVIDE
#define BLEND_MODE_DIVIDE 1
#endif
#ifndef BLEND_MODE_AVERAGE
#define BLEND_MODE_AVERAGE 0
#elif BLEND_MODE_AVERAGE==1
#undef BLEND_MODE_AVERAGE
#define BLEND_MODE_AVERAGE 1
#endif
#ifndef BLEND_MODE_SUBTRACT
#define BLEND_MODE_SUBTRACT 0
#elif BLEND_MODE_SUBTRACT==1
#undef BLEND_MODE_SUBTRACT
#define BLEND_MODE_SUBTRACT 1
#endif
#ifndef BLEND_MODE_DIFFERENCE
#define BLEND_MODE_DIFFERENCE 0
#elif BLEND_MODE_DIFFERENCE==1
#undef BLEND_MODE_DIFFERENCE
#define BLEND_MODE_DIFFERENCE 1
#endif
#ifndef BLEND_MODE_NEGATION
#define BLEND_MODE_NEGATION 0
#elif BLEND_MODE_NEGATION==1
#undef BLEND_MODE_NEGATION
#define BLEND_MODE_NEGATION 1
#endif
#ifndef BLEND_MODE_EXCLUSION
#define BLEND_MODE_EXCLUSION 0
#elif BLEND_MODE_EXCLUSION==1
#undef BLEND_MODE_EXCLUSION
#define BLEND_MODE_EXCLUSION 1
#endif
#ifndef BLEND_MODE_OVERLAY
#define BLEND_MODE_OVERLAY 0
#elif BLEND_MODE_OVERLAY==1
#undef BLEND_MODE_OVERLAY
#define BLEND_MODE_OVERLAY 1
#endif
#ifndef BLEND_MODE_SOFT_LIGHT
#define BLEND_MODE_SOFT_LIGHT 0
#elif BLEND_MODE_SOFT_LIGHT==1
#undef BLEND_MODE_SOFT_LIGHT
#define BLEND_MODE_SOFT_LIGHT 1
#endif
#ifndef BLEND_MODE_HARD_LIGHT
#define BLEND_MODE_HARD_LIGHT 0
#elif BLEND_MODE_HARD_LIGHT==1
#undef BLEND_MODE_HARD_LIGHT
#define BLEND_MODE_HARD_LIGHT 1
#endif
#ifndef BLEND_MODE_COLOR_DODGE
#define BLEND_MODE_COLOR_DODGE 0
#elif BLEND_MODE_COLOR_DODGE==1
#undef BLEND_MODE_COLOR_DODGE
#define BLEND_MODE_COLOR_DODGE 1
#endif
#ifndef BLEND_MODE_COLOR_BURN
#define BLEND_MODE_COLOR_BURN 0
#elif BLEND_MODE_COLOR_BURN==1
#undef BLEND_MODE_COLOR_BURN
#define BLEND_MODE_COLOR_BURN 1
#endif
#ifndef BLEND_MODE_LINEAR_LIGHT
#define BLEND_MODE_LINEAR_LIGHT 0
#elif BLEND_MODE_LINEAR_LIGHT==1
#undef BLEND_MODE_LINEAR_LIGHT
#define BLEND_MODE_LINEAR_LIGHT 1
#endif
#ifndef BLEND_MODE_VIVID_LIGHT
#define BLEND_MODE_VIVID_LIGHT 0
#elif BLEND_MODE_VIVID_LIGHT==1
#undef BLEND_MODE_VIVID_LIGHT
#define BLEND_MODE_VIVID_LIGHT 1
#endif
#ifndef BLEND_MODE_PIN_LIGHT
#define BLEND_MODE_PIN_LIGHT 0
#elif BLEND_MODE_PIN_LIGHT==1
#undef BLEND_MODE_PIN_LIGHT
#define BLEND_MODE_PIN_LIGHT 1
#endif
#ifndef BLEND_MODE_HARD_MIX
#define BLEND_MODE_HARD_MIX 0
#elif BLEND_MODE_HARD_MIX==1
#undef BLEND_MODE_HARD_MIX
#define BLEND_MODE_HARD_MIX 1
#endif
#ifndef BLEND_MODE_HARD_REFLECT
#define BLEND_MODE_HARD_REFLECT 0
#elif BLEND_MODE_HARD_REFLECT==1
#undef BLEND_MODE_HARD_REFLECT
#define BLEND_MODE_HARD_REFLECT 1
#endif
#ifndef BLEND_MODE_HARD_GLOW
#define BLEND_MODE_HARD_GLOW 0
#elif BLEND_MODE_HARD_GLOW==1
#undef BLEND_MODE_HARD_GLOW
#define BLEND_MODE_HARD_GLOW 1
#endif
#ifndef BLEND_MODE_HARD_PHOENIX
#define BLEND_MODE_HARD_PHOENIX 0
#elif BLEND_MODE_HARD_PHOENIX==1
#undef BLEND_MODE_HARD_PHOENIX
#define BLEND_MODE_HARD_PHOENIX 1
#endif
#ifndef BLEND_MODE_HUE
#define BLEND_MODE_HUE 0
#elif BLEND_MODE_HUE==1
#undef BLEND_MODE_HUE
#define BLEND_MODE_HUE 1
#endif
#ifndef BLEND_MODE_SATURATION
#define BLEND_MODE_SATURATION 0
#elif BLEND_MODE_SATURATION==1
#undef BLEND_MODE_SATURATION
#define BLEND_MODE_SATURATION 1
#endif
#ifndef BLEND_MODE_COLOR
#define BLEND_MODE_COLOR 0
#elif BLEND_MODE_COLOR==1
#undef BLEND_MODE_COLOR
#define BLEND_MODE_COLOR 1
#endif
#ifndef BLEND_MODE_LUMINOSITY
#define BLEND_MODE_LUMINOSITY 0
#elif BLEND_MODE_LUMINOSITY==1
#undef BLEND_MODE_LUMINOSITY
#define BLEND_MODE_LUMINOSITY 1
#endif
#ifndef sc_SkinBonesCount
#define sc_SkinBonesCount 0
#endif
#ifndef UseViewSpaceDepthVariant
#define UseViewSpaceDepthVariant 1
#elif UseViewSpaceDepthVariant==1
#undef UseViewSpaceDepthVariant
#define UseViewSpaceDepthVariant 1
#endif
#ifndef sc_OITDepthGatherPass
#define sc_OITDepthGatherPass 0
#elif sc_OITDepthGatherPass==1
#undef sc_OITDepthGatherPass
#define sc_OITDepthGatherPass 1
#endif
#ifndef sc_OITCompositingPass
#define sc_OITCompositingPass 0
#elif sc_OITCompositingPass==1
#undef sc_OITCompositingPass
#define sc_OITCompositingPass 1
#endif
#ifndef sc_OITDepthBoundsPass
#define sc_OITDepthBoundsPass 0
#elif sc_OITDepthBoundsPass==1
#undef sc_OITDepthBoundsPass
#define sc_OITDepthBoundsPass 1
#endif
#ifndef sc_OITMaxLayers4Plus1
#define sc_OITMaxLayers4Plus1 0
#elif sc_OITMaxLayers4Plus1==1
#undef sc_OITMaxLayers4Plus1
#define sc_OITMaxLayers4Plus1 1
#endif
#ifndef sc_OITMaxLayersVisualizeLayerCount
#define sc_OITMaxLayersVisualizeLayerCount 0
#elif sc_OITMaxLayersVisualizeLayerCount==1
#undef sc_OITMaxLayersVisualizeLayerCount
#define sc_OITMaxLayersVisualizeLayerCount 1
#endif
#ifndef sc_OITMaxLayers8
#define sc_OITMaxLayers8 0
#elif sc_OITMaxLayers8==1
#undef sc_OITMaxLayers8
#define sc_OITMaxLayers8 1
#endif
#ifndef sc_OITFrontLayerPass
#define sc_OITFrontLayerPass 0
#elif sc_OITFrontLayerPass==1
#undef sc_OITFrontLayerPass
#define sc_OITFrontLayerPass 1
#endif
#ifndef sc_OITDepthPrepass
#define sc_OITDepthPrepass 0
#elif sc_OITDepthPrepass==1
#undef sc_OITDepthPrepass
#define sc_OITDepthPrepass 1
#endif
#ifndef ENABLE_STIPPLE_PATTERN_TEST
#define ENABLE_STIPPLE_PATTERN_TEST 0
#elif ENABLE_STIPPLE_PATTERN_TEST==1
#undef ENABLE_STIPPLE_PATTERN_TEST
#define ENABLE_STIPPLE_PATTERN_TEST 1
#endif
#ifndef sc_ProjectiveShadowsCaster
#define sc_ProjectiveShadowsCaster 0
#elif sc_ProjectiveShadowsCaster==1
#undef sc_ProjectiveShadowsCaster
#define sc_ProjectiveShadowsCaster 1
#endif
#ifndef sc_RenderAlphaToColor
#define sc_RenderAlphaToColor 0
#elif sc_RenderAlphaToColor==1
#undef sc_RenderAlphaToColor
#define sc_RenderAlphaToColor 1
#endif
#ifndef sc_BlendMode_Custom
#define sc_BlendMode_Custom 0
#elif sc_BlendMode_Custom==1
#undef sc_BlendMode_Custom
#define sc_BlendMode_Custom 1
#endif
#ifndef Tweak_N167HasSwappedViews
#define Tweak_N167HasSwappedViews 0
#elif Tweak_N167HasSwappedViews==1
#undef Tweak_N167HasSwappedViews
#define Tweak_N167HasSwappedViews 1
#endif
#ifndef Tweak_N167Layout
#define Tweak_N167Layout 0
#endif
#ifndef Tweak_N168HasSwappedViews
#define Tweak_N168HasSwappedViews 0
#elif Tweak_N168HasSwappedViews==1
#undef Tweak_N168HasSwappedViews
#define Tweak_N168HasSwappedViews 1
#endif
#ifndef Tweak_N168Layout
#define Tweak_N168Layout 0
#endif
#ifndef Tweak_N169HasSwappedViews
#define Tweak_N169HasSwappedViews 0
#elif Tweak_N169HasSwappedViews==1
#undef Tweak_N169HasSwappedViews
#define Tweak_N169HasSwappedViews 1
#endif
#ifndef Tweak_N169Layout
#define Tweak_N169Layout 0
#endif
#ifndef sc_EnvLightMode
#define sc_EnvLightMode 0
#endif
#ifndef sc_AmbientLightMode_EnvironmentMap
#define sc_AmbientLightMode_EnvironmentMap 0
#endif
#ifndef sc_AmbientLightMode_FromCamera
#define sc_AmbientLightMode_FromCamera 0
#endif
#ifndef sc_LightEstimation
#define sc_LightEstimation 0
#elif sc_LightEstimation==1
#undef sc_LightEstimation
#define sc_LightEstimation 1
#endif
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
vec3 ambientLight;
};
#ifndef sc_LightEstimationSGCount
#define sc_LightEstimationSGCount 0
#endif
#ifndef sc_MaxTextureImageUnits
#define sc_MaxTextureImageUnits 0
#endif
#ifndef sc_HasDiffuseEnvmap
#define sc_HasDiffuseEnvmap 0
#elif sc_HasDiffuseEnvmap==1
#undef sc_HasDiffuseEnvmap
#define sc_HasDiffuseEnvmap 1
#endif
#ifndef sc_AmbientLightMode_SphericalHarmonics
#define sc_AmbientLightMode_SphericalHarmonics 0
#endif
#ifndef sc_AmbientLightsCount
#define sc_AmbientLightsCount 0
#endif
#ifndef sc_AmbientLightMode0
#define sc_AmbientLightMode0 0
#endif
#ifndef sc_AmbientLightMode_Constant
#define sc_AmbientLightMode_Constant 0
#endif
struct sc_AmbientLight_t
{
vec3 color;
float intensity;
};
#ifndef sc_AmbientLightMode1
#define sc_AmbientLightMode1 0
#endif
#ifndef sc_AmbientLightMode2
#define sc_AmbientLightMode2 0
#endif
#ifndef sc_DirectionalLightsCount
#define sc_DirectionalLightsCount 0
#endif
struct sc_DirectionalLight_t
{
vec3 direction;
vec4 color;
};
#ifndef sc_PointLightsCount
#define sc_PointLightsCount 0
#endif
struct sc_PointLight_t
{
bool falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
vec3 direction;
vec3 position;
vec4 color;
};
#ifndef Tweak_N177
#define Tweak_N177 0
#elif Tweak_N177==1
#undef Tweak_N177
#define Tweak_N177 1
#endif
#ifndef SC_USE_UV_TRANSFORM_Tweak_N167
#define SC_USE_UV_TRANSFORM_Tweak_N167 0
#elif SC_USE_UV_TRANSFORM_Tweak_N167==1
#undef SC_USE_UV_TRANSFORM_Tweak_N167
#define SC_USE_UV_TRANSFORM_Tweak_N167 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_Tweak_N167
#define SC_SOFTWARE_WRAP_MODE_U_Tweak_N167 -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_Tweak_N167
#define SC_SOFTWARE_WRAP_MODE_V_Tweak_N167 -1
#endif
#ifndef SC_USE_UV_MIN_MAX_Tweak_N167
#define SC_USE_UV_MIN_MAX_Tweak_N167 0
#elif SC_USE_UV_MIN_MAX_Tweak_N167==1
#undef SC_USE_UV_MIN_MAX_Tweak_N167
#define SC_USE_UV_MIN_MAX_Tweak_N167 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_Tweak_N167
#define SC_USE_CLAMP_TO_BORDER_Tweak_N167 0
#elif SC_USE_CLAMP_TO_BORDER_Tweak_N167==1
#undef SC_USE_CLAMP_TO_BORDER_Tweak_N167
#define SC_USE_CLAMP_TO_BORDER_Tweak_N167 1
#endif
#ifndef Tweak_N45
#define Tweak_N45 0
#elif Tweak_N45==1
#undef Tweak_N45
#define Tweak_N45 1
#endif
#ifndef sc_DepthOnly
#define sc_DepthOnly 0
#elif sc_DepthOnly==1
#undef sc_DepthOnly
#define sc_DepthOnly 1
#endif
struct sc_Camera_t
{
vec3 position;
float aspect;
vec2 clipPlanes;
};
#ifndef SC_USE_UV_TRANSFORM_Tweak_N168
#define SC_USE_UV_TRANSFORM_Tweak_N168 0
#elif SC_USE_UV_TRANSFORM_Tweak_N168==1
#undef SC_USE_UV_TRANSFORM_Tweak_N168
#define SC_USE_UV_TRANSFORM_Tweak_N168 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_Tweak_N168
#define SC_SOFTWARE_WRAP_MODE_U_Tweak_N168 -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_Tweak_N168
#define SC_SOFTWARE_WRAP_MODE_V_Tweak_N168 -1
#endif
#ifndef SC_USE_UV_MIN_MAX_Tweak_N168
#define SC_USE_UV_MIN_MAX_Tweak_N168 0
#elif SC_USE_UV_MIN_MAX_Tweak_N168==1
#undef SC_USE_UV_MIN_MAX_Tweak_N168
#define SC_USE_UV_MIN_MAX_Tweak_N168 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_Tweak_N168
#define SC_USE_CLAMP_TO_BORDER_Tweak_N168 0
#elif SC_USE_CLAMP_TO_BORDER_Tweak_N168==1
#undef SC_USE_CLAMP_TO_BORDER_Tweak_N168
#define SC_USE_CLAMP_TO_BORDER_Tweak_N168 1
#endif
#ifndef SC_USE_UV_TRANSFORM_Tweak_N169
#define SC_USE_UV_TRANSFORM_Tweak_N169 0
#elif SC_USE_UV_TRANSFORM_Tweak_N169==1
#undef SC_USE_UV_TRANSFORM_Tweak_N169
#define SC_USE_UV_TRANSFORM_Tweak_N169 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_Tweak_N169
#define SC_SOFTWARE_WRAP_MODE_U_Tweak_N169 -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_Tweak_N169
#define SC_SOFTWARE_WRAP_MODE_V_Tweak_N169 -1
#endif
#ifndef SC_USE_UV_MIN_MAX_Tweak_N169
#define SC_USE_UV_MIN_MAX_Tweak_N169 0
#elif SC_USE_UV_MIN_MAX_Tweak_N169==1
#undef SC_USE_UV_MIN_MAX_Tweak_N169
#define SC_USE_UV_MIN_MAX_Tweak_N169 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_Tweak_N169
#define SC_USE_CLAMP_TO_BORDER_Tweak_N169 0
#elif SC_USE_CLAMP_TO_BORDER_Tweak_N169==1
#undef SC_USE_CLAMP_TO_BORDER_Tweak_N169
#define SC_USE_CLAMP_TO_BORDER_Tweak_N169 1
#endif
uniform vec4 sc_EnvmapSpecularDims;
uniform vec4 sc_CurrentRenderTargetDims;
uniform mat4 sc_ProjectionMatrixArray[sc_NumStereoViews];
uniform float sc_ShadowDensity;
uniform vec4 sc_ShadowColor;
uniform mat4 sc_ViewProjectionMatrixArray[sc_NumStereoViews];
uniform mat4 sc_PrevFrameViewProjectionMatrixArray[sc_NumStereoViews];
uniform mat4 sc_PrevFrameModelMatrix;
uniform mat4 sc_ModelMatrixInverse;
uniform float shaderComplexityValue;
uniform vec4 sc_UniformConstants;
uniform float _sc_framebufferFetchMarker;
uniform float _sc_GetFramebufferColorInvalidUsageMarker;
uniform float correctedIntensity;
uniform mat3 intensityTextureTransform;
uniform vec4 intensityTextureUvMinMax;
uniform vec4 intensityTextureBorderColor;
uniform float alphaTestThreshold;
uniform sc_LightEstimationData_t sc_LightEstimationData;
uniform vec3 sc_EnvmapRotation;
uniform vec4 sc_EnvmapSpecularSize;
uniform vec4 sc_EnvmapDiffuseSize;
uniform float sc_EnvmapExposure;
uniform vec3 sc_Sh[9];
uniform float sc_ShIntensity;
uniform sc_AmbientLight_t sc_AmbientLights[(sc_AmbientLightsCount+1)];
uniform sc_DirectionalLight_t sc_DirectionalLights[(sc_DirectionalLightsCount+1)];
uniform sc_PointLight_t sc_PointLights[(sc_PointLightsCount+1)];
uniform mat3 Tweak_N167Transform;
uniform vec4 Tweak_N167UvMinMax;
uniform vec4 Tweak_N167BorderColor;
uniform vec4 Tweak_N175;
uniform float Tweak_N17;
uniform sc_Camera_t sc_Camera;
uniform vec4 Port_Default_N176;
uniform mat3 Tweak_N168Transform;
uniform vec4 Tweak_N168UvMinMax;
uniform vec4 Tweak_N168BorderColor;
uniform mat3 Tweak_N169Transform;
uniform vec4 Tweak_N169UvMinMax;
uniform vec4 Tweak_N169BorderColor;
uniform vec3 Port_Emissive_N174;
uniform vec3 Port_SpecularAO_N174;
uniform int PreviewEnabled;
uniform sampler2D Tweak_N167;
uniform sampler2D Tweak_N168;
uniform sampler2D Tweak_N169;
uniform sampler2D sc_SSAOTexture;
uniform sampler2D sc_ShadowTexture;
uniform sampler2D sc_EnvmapSpecular;
uniform sampler2D sc_EnvmapDiffuse;
uniform sampler2D sc_ScreenTexture;
uniform sampler2D intensityTexture;
uniform sampler2D sc_OITFrontDepthTexture;
uniform sampler2D sc_OITDepthHigh0;
uniform sampler2D sc_OITDepthLow0;
uniform sampler2D sc_OITAlpha0;
uniform sampler2D sc_OITDepthHigh1;
uniform sampler2D sc_OITDepthLow1;
uniform sampler2D sc_OITAlpha1;
uniform sampler2D sc_OITFilteredDepthBoundsTexture;
varying float varStereoViewID;
varying vec2 varShadowTex;
varying float varClipDistance;
varying float varViewSpaceDepth;
varying vec4 PreviewVertexColor;
varying float PreviewVertexSaved;
varying vec4 varPackedTex;
varying vec3 varPos;
varying vec4 varTangent;
varying vec3 varNormal;
varying vec4 varScreenPos;
varying vec2 varScreenTexturePos;
varying vec4 varColor;
int sc_GetStereoViewIndex()
{
int l9_0;
#if (sc_StereoRenderingMode==0)
{
l9_0=0;
}
#else
{
l9_0=int(varStereoViewID);
}
#endif
return l9_0;
}
void sc_SoftwareWrapEarly(inout float uv,int softwareWrapMode)
{
if (softwareWrapMode==1)
{
uv=fract(uv);
}
else
{
if (softwareWrapMode==2)
{
float l9_0=fract(uv);
uv=mix(l9_0,1.0-l9_0,clamp(step(0.25,fract((uv-l9_0)*0.5)),0.0,1.0));
}
}
}
void sc_ClampUV(inout float value,float minValue,float maxValue,bool useClampToBorder,inout float clampToBorderFactor)
{
float l9_0=clamp(value,minValue,maxValue);
float l9_1=step(abs(value-l9_0),9.9999997e-06);
clampToBorderFactor*=(l9_1+((1.0-float(useClampToBorder))*(1.0-l9_1)));
value=l9_0;
}
vec2 sc_TransformUV(vec2 uv,bool useUvTransform,mat3 uvTransform)
{
if (useUvTransform)
{
uv=vec2((uvTransform*vec3(uv,1.0)).xy);
}
return uv;
}
void sc_SoftwareWrapLate(inout float uv,int softwareWrapMode,bool useClampToBorder,inout float clampToBorderFactor)
{
if ((softwareWrapMode==0)||(softwareWrapMode==3))
{
sc_ClampUV(uv,0.0,1.0,useClampToBorder,clampToBorderFactor);
}
}
vec3 sc_SamplingCoordsViewToGlobal(vec2 uv,int renderingLayout,int viewIndex)
{
vec3 l9_0;
if (renderingLayout==0)
{
l9_0=vec3(uv,0.0);
}
else
{
vec3 l9_1;
if (renderingLayout==1)
{
l9_1=vec3(uv.x,(uv.y*0.5)+(0.5-(float(viewIndex)*0.5)),0.0);
}
else
{
l9_1=vec3(uv,float(viewIndex));
}
l9_0=l9_1;
}
return l9_0;
}
vec3 ssSRGB_to_Linear(vec3 value)
{
vec3 l9_0;
#if ((SC_DEVICE_CLASS>=2)&&SC_GL_FRAGMENT_PRECISION_HIGH)
{
l9_0=vec3(pow(value.x,2.2),pow(value.y,2.2),pow(value.z,2.2));
}
#else
{
l9_0=value*value;
}
#endif
return l9_0;
}
vec3 evaluateSSAO(vec3 positionWS)
{
#if (sc_SSAOEnabled)
{
vec4 l9_0=sc_ViewProjectionMatrixArray[sc_GetStereoViewIndex()]*vec4(positionWS,1.0);
return vec3(texture2D(sc_SSAOTexture,((l9_0.xyz/vec3(l9_0.w)).xy*0.5)+vec2(0.5)).x);
}
#else
{
return vec3(1.0);
}
#endif
}
vec3 fresnelSchlickSub(float cosTheta,vec3 F0,vec3 fresnelMax)
{
float l9_0=1.0-cosTheta;
float l9_1=l9_0*l9_0;
return F0+((fresnelMax-F0)*((l9_1*l9_1)*l9_0));
}
float Dggx(float NdotH,float roughness)
{
float l9_0=roughness*roughness;
float l9_1=l9_0*l9_0;
float l9_2=((NdotH*NdotH)*(l9_1-1.0))+1.0;
return l9_1/((l9_2*l9_2)+9.9999999e-09);
}
vec3 calculateDirectSpecular(SurfaceProperties surfaceProperties,vec3 L,vec3 V)
{
float l9_0=surfaceProperties.roughness;
float l9_1=max(l9_0,0.029999999);
vec3 l9_2=surfaceProperties.specColor;
vec3 l9_3=surfaceProperties.normal;
vec3 l9_4=L;
vec3 l9_5=V;
vec3 l9_6=normalize(l9_4+l9_5);
vec3 l9_7=L;
float l9_8=clamp(dot(l9_3,l9_7),0.0,1.0);
vec3 l9_9=V;
float l9_10=clamp(dot(l9_3,l9_6),0.0,1.0);
vec3 l9_11=V;
float l9_12=clamp(dot(l9_11,l9_6),0.0,1.0);
#if ((SC_DEVICE_CLASS>=2)&&SC_GL_FRAGMENT_PRECISION_HIGH)
{
float l9_13=l9_1+1.0;
float l9_14=(l9_13*l9_13)*0.125;
float l9_15=1.0-l9_14;
return fresnelSchlickSub(l9_12,l9_2,vec3(1.0))*(((Dggx(l9_10,l9_1)*(1.0/(((l9_8*l9_15)+l9_14)*((clamp(dot(l9_3,l9_9),0.0,1.0)*l9_15)+l9_14))))*0.25)*l9_8);
}
#else
{
float l9_16=exp2(11.0-(10.0*l9_1));
return ((fresnelSchlickSub(l9_12,l9_2,vec3(1.0))*((l9_16*0.125)+0.25))*pow(l9_10,l9_16))*l9_8;
}
#endif
}
LightingComponents accumulateLight(LightingComponents lighting,LightProperties light,SurfaceProperties surfaceProperties,vec3 V)
{
lighting.directDiffuse+=((vec3(clamp(dot(surfaceProperties.normal,light.direction),0.0,1.0))*light.color)*light.attenuation);
lighting.directSpecular+=((calculateDirectSpecular(surfaceProperties,light.direction,V)*light.color)*light.attenuation);
return lighting;
}
float computeDistanceAttenuation(float distanceToLight,float falloffEndDistance)
{
float l9_0=distanceToLight;
float l9_1=distanceToLight;
float l9_2=l9_0*l9_1;
if (falloffEndDistance==0.0)
{
return 1.0/l9_2;
}
return max(min(1.0-((l9_2*l9_2)/pow(falloffEndDistance,4.0)),1.0),0.0)/l9_2;
}
vec2 calcPanoramicTexCoordsFromDir(vec3 reflDir,float rotationDegrees)
{
float l9_0=-reflDir.z;
vec2 l9_1=vec2((((reflDir.x<0.0) ? (-1.0) : 1.0)*acos(clamp(l9_0/length(vec2(reflDir.x,l9_0)),-1.0,1.0)))-1.5707964,acos(reflDir.y))/vec2(6.2831855,3.1415927);
float l9_2=l9_1.x+(rotationDegrees/360.0);
vec2 l9_3=vec2(l9_2,1.0-l9_1.y);
l9_3.x=fract((l9_2+floor(l9_2))+1.0);
return l9_3;
}
int sc_EnvmapSpecularGetStereoViewIndex()
{
int l9_0;
#if (sc_EnvmapSpecularHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
vec4 sc_EnvmapSpecularSampleViewIndexBias(vec2 uv,int viewIndex,float bias)
{
return texture2D(sc_EnvmapSpecular,sc_SamplingCoordsViewToGlobal(uv,sc_EnvmapSpecularLayout,viewIndex).xy,bias);
}
vec2 calcSeamlessPanoramicUvsForSampling(vec2 uv,vec2 topMipRes,float lod)
{
#if ((SC_DEVICE_CLASS>=2)&&SC_GL_FRAGMENT_PRECISION_HIGH)
{
vec2 l9_0=max(vec2(1.0),topMipRes/vec2(exp2(lod)));
return ((uv*(l9_0-vec2(1.0)))/l9_0)+(vec2(0.5)/l9_0);
}
#else
{
return uv;
}
#endif
}
vec3 getSpecularDominantDir(vec3 N,vec3 R,float roughness)
{
#if ((SC_DEVICE_CLASS>=2)&&SC_GL_FRAGMENT_PRECISION_HIGH)
{
return normalize(mix(R,N,vec3((roughness*roughness)*roughness)));
}
#else
{
return R;
}
#endif
}
float sc_InternalCalculateSampleBias(vec2 texSize,vec2 uv,float level_)
{
float l9_0;
#if (sc_CanUseStandardDerivatives)
{
vec2 l9_1=uv*texSize;
float l9_2=l9_1.x;
float l9_3=l9_1.y;
l9_0=level_-log2(max(max(abs(dFdx(l9_2)),abs(dFdy(l9_2))),max(abs(dFdx(l9_3)),abs(dFdy(l9_3)))));
}
#else
{
l9_0=0.0;
}
#endif
return l9_0;
}
vec4 sc_EnvmapSpecularSampleViewIndexLevel(vec2 uv,int viewIndex,float level_)
{
vec4 l9_0;
#if (sc_CanUseTextureLod)
{
float l9_1=level_;
vec3 l9_2=sc_SamplingCoordsViewToGlobal(uv,sc_EnvmapSpecularLayout,viewIndex);
vec2 l9_3=l9_2.xy;
vec4 l9_4;
#if (sc_CanUseTextureLod)
{
l9_4=texture2DLod(sc_EnvmapSpecular,l9_3,l9_1);
}
#else
{
vec4 l9_5;
#if (sc_CanUseStandardDerivatives)
{
l9_5=texture2D(sc_EnvmapSpecular,l9_3,sc_InternalCalculateSampleBias(sc_EnvmapSpecularDims.xy,l9_3,l9_1));
}
#else
{
l9_5=vec4(0.0);
}
#endif
l9_4=l9_5;
}
#endif
l9_0=l9_4;
}
#else
{
l9_0=vec4(0.0);
}
#endif
return l9_0;
}
vec3 envBRDFApprox(SurfaceProperties surfaceProperties,float NdotV)
{
#if ((SC_DEVICE_CLASS>=2)&&SC_GL_FRAGMENT_PRECISION_HIGH)
{
vec4 l9_0=(vec4(-1.0,-0.0275,-0.57200003,0.022)*surfaceProperties.roughness)+vec4(1.0,0.0425,1.04,-0.039999999);
float l9_1=l9_0.x;
vec2 l9_2=(vec2(-1.04,1.04)*((min(l9_1*l9_1,exp2((-9.2799997)*NdotV))*l9_1)+l9_0.y))+l9_0.zw;
return max((surfaceProperties.specColor*l9_2.x)+vec3(l9_2.y),vec3(0.0));
}
#else
{
return fresnelSchlickSub(NdotV,surfaceProperties.specColor,max(vec3(1.0-surfaceProperties.roughness),surfaceProperties.specColor));
}
#endif
}
vec2 sc_SamplingCoordsGlobalToView(vec3 uvi,int renderingLayout,int viewIndex)
{
if (renderingLayout==1)
{
uvi.y=((2.0*uvi.y)+float(viewIndex))-1.0;
}
return uvi.xy;
}
vec2 sc_ScreenCoordsGlobalToView(vec2 uv)
{
vec2 l9_0;
#if (sc_StereoRenderingMode==1)
{
l9_0=sc_SamplingCoordsGlobalToView(vec3(uv,0.0),1,sc_GetStereoViewIndex());
}
#else
{
l9_0=uv;
}
#endif
return l9_0;
}
int sc_ScreenTextureGetStereoViewIndex()
{
int l9_0;
#if (sc_ScreenTextureHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
vec4 sc_ScreenTextureSampleViewIndexBias(vec2 uv,int viewIndex,float bias)
{
return texture2D(sc_ScreenTexture,sc_SamplingCoordsViewToGlobal(uv,sc_ScreenTextureLayout,viewIndex).xy,bias);
}
vec4 sc_readFragData0_Platform()
{
    return getFragData()[0];
}
vec4 sc_readFragData0()
{
vec4 l9_0=sc_readFragData0_Platform();
vec4 l9_1;
#if (sc_UseFramebufferFetchMarker)
{
vec4 l9_2=l9_0;
l9_2.x=l9_0.x+_sc_framebufferFetchMarker;
l9_1=l9_2;
}
#else
{
l9_1=l9_0;
}
#endif
return l9_1;
}
vec4 sc_GetFramebufferColor()
{
vec4 l9_0;
#if (sc_FramebufferFetch)
{
l9_0=sc_readFragData0();
}
#else
{
l9_0=sc_ScreenTextureSampleViewIndexBias(sc_ScreenCoordsGlobalToView(gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw),sc_ScreenTextureGetStereoViewIndex(),0.0);
}
#endif
vec4 l9_1;
#if (((sc_IsEditor&&sc_GetFramebufferColorInvalidUsageMarker)&&(!sc_BlendMode_Software))&&(!sc_BlendMode_ColoredGlass))
{
vec4 l9_2=l9_0;
l9_2.x=l9_0.x+_sc_GetFramebufferColorInvalidUsageMarker;
l9_1=l9_2;
}
#else
{
l9_1=l9_0;
}
#endif
return l9_1;
}
float srgbToLinear(float x)
{
#if ((SC_DEVICE_CLASS>=2)&&SC_GL_FRAGMENT_PRECISION_HIGH)
{
return pow(x,2.2);
}
#else
{
return x*x;
}
#endif
}
float linearToSrgb(float x)
{
#if ((SC_DEVICE_CLASS>=2)&&SC_GL_FRAGMENT_PRECISION_HIGH)
{
return pow(x,0.45454547);
}
#else
{
return sqrt(x);
}
#endif
}
float transformSingleColor(float original,float intMap,float target)
{
#if ((BLEND_MODE_REALISTIC||BLEND_MODE_FORGRAY)||BLEND_MODE_NOTBRIGHT)
{
return original/pow(1.0-target,intMap);
}
#else
{
#if (BLEND_MODE_DIVISION)
{
return original/(1.0-target);
}
#else
{
#if (BLEND_MODE_BRIGHT)
{
return original/pow(1.0-target,2.0-(2.0*original));
}
#endif
}
#endif
}
#endif
return 0.0;
}
vec3 RGBtoHCV(vec3 rgb)
{
vec4 l9_0;
if (rgb.y<rgb.z)
{
l9_0=vec4(rgb.zy,-1.0,0.66666669);
}
else
{
l9_0=vec4(rgb.yz,0.0,-0.33333334);
}
vec4 l9_1;
if (rgb.x<l9_0.x)
{
l9_1=vec4(l9_0.xyw,rgb.x);
}
else
{
l9_1=vec4(rgb.x,l9_0.yzx);
}
float l9_2=l9_1.x-min(l9_1.w,l9_1.y);
return vec3(abs(((l9_1.w-l9_1.y)/((6.0*l9_2)+1e-07))+l9_1.z),l9_2,l9_1.x);
}
vec3 RGBToHSL(vec3 rgb)
{
vec3 l9_0=RGBtoHCV(rgb);
float l9_1=l9_0.y;
float l9_2=l9_0.z-(l9_1*0.5);
return vec3(l9_0.x,l9_1/((1.0-abs((2.0*l9_2)-1.0))+1e-07),l9_2);
}
vec3 HUEtoRGB(float hue)
{
return clamp(vec3(abs((6.0*hue)-3.0)-1.0,2.0-abs((6.0*hue)-2.0),2.0-abs((6.0*hue)-4.0)),vec3(0.0),vec3(1.0));
}
vec3 HSLToRGB(vec3 hsl)
{
return ((HUEtoRGB(hsl.x)-vec3(0.5))*((1.0-abs((2.0*hsl.z)-1.0))*hsl.y))+vec3(hsl.z);
}
vec3 transformColor(float yValue,vec3 original,vec3 target,float weight,float intMap)
{
#if (BLEND_MODE_INTENSE)
{
return mix(original,HSLToRGB(vec3(target.x,target.y,RGBToHSL(original).z)),vec3(weight));
}
#else
{
return mix(original,clamp(vec3(transformSingleColor(yValue,intMap,target.x),transformSingleColor(yValue,intMap,target.y),transformSingleColor(yValue,intMap,target.z)),vec3(0.0),vec3(1.0)),vec3(weight));
}
#endif
}
vec3 definedBlend(vec3 a,vec3 b)
{
#if (BLEND_MODE_LIGHTEN)
{
return max(a,b);
}
#else
{
#if (BLEND_MODE_DARKEN)
{
return min(a,b);
}
#else
{
#if (BLEND_MODE_DIVIDE)
{
return b/a;
}
#else
{
#if (BLEND_MODE_AVERAGE)
{
return (a+b)*0.5;
}
#else
{
#if (BLEND_MODE_SUBTRACT)
{
return max((a+b)-vec3(1.0),vec3(0.0));
}
#else
{
#if (BLEND_MODE_DIFFERENCE)
{
return abs(a-b);
}
#else
{
#if (BLEND_MODE_NEGATION)
{
return vec3(1.0)-abs((vec3(1.0)-a)-b);
}
#else
{
#if (BLEND_MODE_EXCLUSION)
{
return (a+b)-((a*2.0)*b);
}
#else
{
#if (BLEND_MODE_OVERLAY)
{
float l9_0;
if (a.x<0.5)
{
l9_0=(2.0*a.x)*b.x;
}
else
{
l9_0=1.0-((2.0*(1.0-a.x))*(1.0-b.x));
}
float l9_1;
if (a.y<0.5)
{
l9_1=(2.0*a.y)*b.y;
}
else
{
l9_1=1.0-((2.0*(1.0-a.y))*(1.0-b.y));
}
float l9_2;
if (a.z<0.5)
{
l9_2=(2.0*a.z)*b.z;
}
else
{
l9_2=1.0-((2.0*(1.0-a.z))*(1.0-b.z));
}
return vec3(l9_0,l9_1,l9_2);
}
#else
{
#if (BLEND_MODE_SOFT_LIGHT)
{
return (((vec3(1.0)-(b*2.0))*a)*a)+((a*2.0)*b);
}
#else
{
#if (BLEND_MODE_HARD_LIGHT)
{
float l9_3;
if (b.x<0.5)
{
l9_3=(2.0*b.x)*a.x;
}
else
{
l9_3=1.0-((2.0*(1.0-b.x))*(1.0-a.x));
}
float l9_4;
if (b.y<0.5)
{
l9_4=(2.0*b.y)*a.y;
}
else
{
l9_4=1.0-((2.0*(1.0-b.y))*(1.0-a.y));
}
float l9_5;
if (b.z<0.5)
{
l9_5=(2.0*b.z)*a.z;
}
else
{
l9_5=1.0-((2.0*(1.0-b.z))*(1.0-a.z));
}
return vec3(l9_3,l9_4,l9_5);
}
#else
{
#if (BLEND_MODE_COLOR_DODGE)
{
float l9_6;
if (b.x==1.0)
{
l9_6=b.x;
}
else
{
l9_6=min(a.x/(1.0-b.x),1.0);
}
float l9_7;
if (b.y==1.0)
{
l9_7=b.y;
}
else
{
l9_7=min(a.y/(1.0-b.y),1.0);
}
float l9_8;
if (b.z==1.0)
{
l9_8=b.z;
}
else
{
l9_8=min(a.z/(1.0-b.z),1.0);
}
return vec3(l9_6,l9_7,l9_8);
}
#else
{
#if (BLEND_MODE_COLOR_BURN)
{
float l9_9;
if (b.x==0.0)
{
l9_9=b.x;
}
else
{
l9_9=max(1.0-((1.0-a.x)/b.x),0.0);
}
float l9_10;
if (b.y==0.0)
{
l9_10=b.y;
}
else
{
l9_10=max(1.0-((1.0-a.y)/b.y),0.0);
}
float l9_11;
if (b.z==0.0)
{
l9_11=b.z;
}
else
{
l9_11=max(1.0-((1.0-a.z)/b.z),0.0);
}
return vec3(l9_9,l9_10,l9_11);
}
#else
{
#if (BLEND_MODE_LINEAR_LIGHT)
{
float l9_12;
if (b.x<0.5)
{
l9_12=max((a.x+(2.0*b.x))-1.0,0.0);
}
else
{
l9_12=min(a.x+(2.0*(b.x-0.5)),1.0);
}
float l9_13;
if (b.y<0.5)
{
l9_13=max((a.y+(2.0*b.y))-1.0,0.0);
}
else
{
l9_13=min(a.y+(2.0*(b.y-0.5)),1.0);
}
float l9_14;
if (b.z<0.5)
{
l9_14=max((a.z+(2.0*b.z))-1.0,0.0);
}
else
{
l9_14=min(a.z+(2.0*(b.z-0.5)),1.0);
}
return vec3(l9_12,l9_13,l9_14);
}
#else
{
#if (BLEND_MODE_VIVID_LIGHT)
{
float l9_15;
if (b.x<0.5)
{
float l9_16;
if ((2.0*b.x)==0.0)
{
l9_16=2.0*b.x;
}
else
{
l9_16=max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_15=l9_16;
}
else
{
float l9_17;
if ((2.0*(b.x-0.5))==1.0)
{
l9_17=2.0*(b.x-0.5);
}
else
{
l9_17=min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_15=l9_17;
}
float l9_18;
if (b.y<0.5)
{
float l9_19;
if ((2.0*b.y)==0.0)
{
l9_19=2.0*b.y;
}
else
{
l9_19=max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_18=l9_19;
}
else
{
float l9_20;
if ((2.0*(b.y-0.5))==1.0)
{
l9_20=2.0*(b.y-0.5);
}
else
{
l9_20=min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_18=l9_20;
}
float l9_21;
if (b.z<0.5)
{
float l9_22;
if ((2.0*b.z)==0.0)
{
l9_22=2.0*b.z;
}
else
{
l9_22=max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_21=l9_22;
}
else
{
float l9_23;
if ((2.0*(b.z-0.5))==1.0)
{
l9_23=2.0*(b.z-0.5);
}
else
{
l9_23=min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_21=l9_23;
}
return vec3(l9_15,l9_18,l9_21);
}
#else
{
#if (BLEND_MODE_PIN_LIGHT)
{
float l9_24;
if (b.x<0.5)
{
l9_24=min(a.x,2.0*b.x);
}
else
{
l9_24=max(a.x,2.0*(b.x-0.5));
}
float l9_25;
if (b.y<0.5)
{
l9_25=min(a.y,2.0*b.y);
}
else
{
l9_25=max(a.y,2.0*(b.y-0.5));
}
float l9_26;
if (b.z<0.5)
{
l9_26=min(a.z,2.0*b.z);
}
else
{
l9_26=max(a.z,2.0*(b.z-0.5));
}
return vec3(l9_24,l9_25,l9_26);
}
#else
{
#if (BLEND_MODE_HARD_MIX)
{
float l9_27;
if (b.x<0.5)
{
float l9_28;
if ((2.0*b.x)==0.0)
{
l9_28=2.0*b.x;
}
else
{
l9_28=max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_27=l9_28;
}
else
{
float l9_29;
if ((2.0*(b.x-0.5))==1.0)
{
l9_29=2.0*(b.x-0.5);
}
else
{
l9_29=min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_27=l9_29;
}
bool l9_30=l9_27<0.5;
float l9_31;
if (b.y<0.5)
{
float l9_32;
if ((2.0*b.y)==0.0)
{
l9_32=2.0*b.y;
}
else
{
l9_32=max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_31=l9_32;
}
else
{
float l9_33;
if ((2.0*(b.y-0.5))==1.0)
{
l9_33=2.0*(b.y-0.5);
}
else
{
l9_33=min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_31=l9_33;
}
bool l9_34=l9_31<0.5;
float l9_35;
if (b.z<0.5)
{
float l9_36;
if ((2.0*b.z)==0.0)
{
l9_36=2.0*b.z;
}
else
{
l9_36=max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_35=l9_36;
}
else
{
float l9_37;
if ((2.0*(b.z-0.5))==1.0)
{
l9_37=2.0*(b.z-0.5);
}
else
{
l9_37=min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_35=l9_37;
}
return vec3(l9_30 ? 0.0 : 1.0,l9_34 ? 0.0 : 1.0,(l9_35<0.5) ? 0.0 : 1.0);
}
#else
{
#if (BLEND_MODE_HARD_REFLECT)
{
float l9_38;
if (b.x==1.0)
{
l9_38=b.x;
}
else
{
l9_38=min((a.x*a.x)/(1.0-b.x),1.0);
}
float l9_39;
if (b.y==1.0)
{
l9_39=b.y;
}
else
{
l9_39=min((a.y*a.y)/(1.0-b.y),1.0);
}
float l9_40;
if (b.z==1.0)
{
l9_40=b.z;
}
else
{
l9_40=min((a.z*a.z)/(1.0-b.z),1.0);
}
return vec3(l9_38,l9_39,l9_40);
}
#else
{
#if (BLEND_MODE_HARD_GLOW)
{
float l9_41;
if (a.x==1.0)
{
l9_41=a.x;
}
else
{
l9_41=min((b.x*b.x)/(1.0-a.x),1.0);
}
float l9_42;
if (a.y==1.0)
{
l9_42=a.y;
}
else
{
l9_42=min((b.y*b.y)/(1.0-a.y),1.0);
}
float l9_43;
if (a.z==1.0)
{
l9_43=a.z;
}
else
{
l9_43=min((b.z*b.z)/(1.0-a.z),1.0);
}
return vec3(l9_41,l9_42,l9_43);
}
#else
{
#if (BLEND_MODE_HARD_PHOENIX)
{
return (min(a,b)-max(a,b))+vec3(1.0);
}
#else
{
#if (BLEND_MODE_HUE)
{
return HSLToRGB(vec3(RGBToHSL(b).x,RGBToHSL(a).yz));
}
#else
{
#if (BLEND_MODE_SATURATION)
{
vec3 l9_44=RGBToHSL(a);
return HSLToRGB(vec3(l9_44.x,RGBToHSL(b).y,l9_44.z));
}
#else
{
#if (BLEND_MODE_COLOR)
{
return HSLToRGB(vec3(RGBToHSL(b).xy,RGBToHSL(a).z));
}
#else
{
#if (BLEND_MODE_LUMINOSITY)
{
return HSLToRGB(vec3(RGBToHSL(a).xy,RGBToHSL(b).z));
}
#else
{
vec3 l9_45=a;
vec3 l9_46=b;
float l9_47=((0.29899999*l9_45.x)+(0.58700001*l9_45.y))+(0.114*l9_45.z);
int l9_48;
#if (intensityTextureHasSwappedViews)
{
l9_48=1-sc_GetStereoViewIndex();
}
#else
{
l9_48=sc_GetStereoViewIndex();
}
#endif
bool l9_49=(int(SC_USE_CLAMP_TO_BORDER_intensityTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_intensityTexture)!=0));
float l9_50=pow(l9_47,1.0/correctedIntensity);
sc_SoftwareWrapEarly(l9_50,ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).x);
float l9_51=l9_50;
float l9_52=0.5;
sc_SoftwareWrapEarly(l9_52,ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).y);
float l9_53=l9_52;
vec2 l9_54;
float l9_55;
#if (SC_USE_UV_MIN_MAX_intensityTexture)
{
bool l9_56;
#if (SC_USE_CLAMP_TO_BORDER_intensityTexture)
{
l9_56=ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).x==3;
}
#else
{
l9_56=(int(SC_USE_CLAMP_TO_BORDER_intensityTexture)!=0);
}
#endif
float l9_57=l9_51;
float l9_58=1.0;
sc_ClampUV(l9_57,intensityTextureUvMinMax.x,intensityTextureUvMinMax.z,l9_56,l9_58);
float l9_59=l9_57;
float l9_60=l9_58;
bool l9_61;
#if (SC_USE_CLAMP_TO_BORDER_intensityTexture)
{
l9_61=ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).y==3;
}
#else
{
l9_61=(int(SC_USE_CLAMP_TO_BORDER_intensityTexture)!=0);
}
#endif
float l9_62=l9_53;
float l9_63=l9_60;
sc_ClampUV(l9_62,intensityTextureUvMinMax.y,intensityTextureUvMinMax.w,l9_61,l9_63);
l9_55=l9_63;
l9_54=vec2(l9_59,l9_62);
}
#else
{
l9_55=1.0;
l9_54=vec2(l9_51,l9_53);
}
#endif
vec2 l9_64=sc_TransformUV(l9_54,(int(SC_USE_UV_TRANSFORM_intensityTexture)!=0),intensityTextureTransform);
float l9_65=l9_64.x;
float l9_66=l9_55;
sc_SoftwareWrapLate(l9_65,ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).x,l9_49,l9_66);
float l9_67=l9_64.y;
float l9_68=l9_66;
sc_SoftwareWrapLate(l9_67,ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).y,l9_49,l9_68);
float l9_69=l9_68;
vec3 l9_70=sc_SamplingCoordsViewToGlobal(vec2(l9_65,l9_67),intensityTextureLayout,l9_48);
vec4 l9_71=texture2D(intensityTexture,l9_70.xy,0.0);
vec4 l9_72;
#if (SC_USE_CLAMP_TO_BORDER_intensityTexture)
{
l9_72=mix(intensityTextureBorderColor,l9_71,vec4(l9_69));
}
#else
{
l9_72=l9_71;
}
#endif
float l9_73=((((l9_72.x*256.0)+l9_72.y)+(l9_72.z/256.0))/257.00391)*16.0;
float l9_74;
#if (BLEND_MODE_FORGRAY)
{
l9_74=max(l9_73,1.0);
}
#else
{
l9_74=l9_73;
}
#endif
float l9_75;
#if (BLEND_MODE_NOTBRIGHT)
{
l9_75=min(l9_74,1.0);
}
#else
{
l9_75=l9_74;
}
#endif
return transformColor(l9_47,l9_45,l9_46,1.0,l9_75);
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
vec4 outputMotionVectorsIfNeeded(vec3 surfacePosWorldSpace,vec4 finalColor)
{
#if (sc_MotionVectorsPass)
{
vec4 l9_0=vec4(surfacePosWorldSpace,1.0);
vec4 l9_1=sc_ViewProjectionMatrixArray[sc_GetStereoViewIndex()]*l9_0;
vec4 l9_2=((sc_PrevFrameViewProjectionMatrixArray[sc_GetStereoViewIndex()]*sc_PrevFrameModelMatrix)*sc_ModelMatrixInverse)*l9_0;
vec2 l9_3=((l9_1.xy/vec2(l9_1.w)).xy-(l9_2.xy/vec2(l9_2.w)).xy)*0.5;
float l9_4=floor(((l9_3.x*5.0)+0.5)*65535.0);
float l9_5=floor(l9_4*0.00390625);
float l9_6=floor(((l9_3.y*5.0)+0.5)*65535.0);
float l9_7=floor(l9_6*0.00390625);
return vec4(l9_5/255.0,(l9_4-(l9_5*256.0))/255.0,l9_7/255.0,(l9_6-(l9_7*256.0))/255.0);
}
#else
{
return finalColor;
}
#endif
}
void sc_writeFragData0Internal(vec4 col,float zero,int cacheConst)
{
    col.x+=zero*float(cacheConst);
    sc_FragData0=col;
}
float getFrontLayerZTestEpsilon()
{
#if (sc_SkinBonesCount>0)
{
return 5e-07;
}
#else
{
return 5.0000001e-08;
}
#endif
}
void unpackValues(float channel,int passIndex,inout int values[8])
{
#if (sc_OITCompositingPass)
{
channel=floor((channel*255.0)+0.5);
int l9_0=((passIndex+1)*4)-1;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_0>=(passIndex*4))
{
values[l9_0]=(values[l9_0]*4)+int(floor(mod(channel,4.0)));
channel=floor(channel/4.0);
l9_0--;
continue;
}
else
{
break;
}
}
}
#endif
}
float getDepthOrderingEpsilon()
{
#if (sc_SkinBonesCount>0)
{
return 0.001;
}
#else
{
return 0.0;
}
#endif
}
int encodeDepth(float depth,vec2 depthBounds)
{
float l9_0=(1.0-depthBounds.x)*1000.0;
return int(clamp((depth-l9_0)/((depthBounds.y*1000.0)-l9_0),0.0,1.0)*65535.0);
}
float viewSpaceDepth()
{
#if (UseViewSpaceDepthVariant&&((sc_OITDepthGatherPass||sc_OITCompositingPass)||sc_OITDepthBoundsPass))
{
return varViewSpaceDepth;
}
#else
{
return sc_ProjectionMatrixArray[sc_GetStereoViewIndex()][3].z/(sc_ProjectionMatrixArray[sc_GetStereoViewIndex()][2].z+((gl_FragCoord.z*2.0)-1.0));
}
#endif
}
float packValue(inout int value)
{
#if (sc_OITDepthGatherPass)
{
int l9_0=value;
value/=4;
return floor(floor(mod(float(l9_0),4.0))*64.0)/255.0;
}
#else
{
return 0.0;
}
#endif
}
void sc_writeFragData1(vec4 col)
{
#if sc_FragDataCount>=2
    sc_FragData1=col;
#endif
}
void sc_writeFragData2(vec4 col)
{
#if sc_FragDataCount>=3
    sc_FragData2=col;
#endif
}
void main()
{
#if (sc_DepthOnly)
{
return;
}
#endif
#if ((sc_StereoRenderingMode==1)&&(sc_StereoRendering_IsClipDistanceEnabled==0))
{
if (varClipDistance<0.0)
{
discard;
}
}
#endif
vec3 l9_0=normalize(sc_Camera.position-varPos);
vec3 l9_1=normalize(varTangent.xyz);
vec3 l9_2=normalize(varNormal);
vec4 l9_3;
#if (Tweak_N177)
{
int l9_4;
#if (Tweak_N167HasSwappedViews)
{
l9_4=1-sc_GetStereoViewIndex();
}
#else
{
l9_4=sc_GetStereoViewIndex();
}
#endif
bool l9_5=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N167)!=0)&&(!(int(SC_USE_UV_MIN_MAX_Tweak_N167)!=0));
float l9_6=varPackedTex.x;
sc_SoftwareWrapEarly(l9_6,ivec2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N167,SC_SOFTWARE_WRAP_MODE_V_Tweak_N167).x);
float l9_7=l9_6;
float l9_8=varPackedTex.y;
sc_SoftwareWrapEarly(l9_8,ivec2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N167,SC_SOFTWARE_WRAP_MODE_V_Tweak_N167).y);
float l9_9=l9_8;
vec2 l9_10;
float l9_11;
#if (SC_USE_UV_MIN_MAX_Tweak_N167)
{
bool l9_12;
#if (SC_USE_CLAMP_TO_BORDER_Tweak_N167)
{
l9_12=ivec2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N167,SC_SOFTWARE_WRAP_MODE_V_Tweak_N167).x==3;
}
#else
{
l9_12=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N167)!=0);
}
#endif
float l9_13=l9_7;
float l9_14=1.0;
sc_ClampUV(l9_13,Tweak_N167UvMinMax.x,Tweak_N167UvMinMax.z,l9_12,l9_14);
float l9_15=l9_13;
float l9_16=l9_14;
bool l9_17;
#if (SC_USE_CLAMP_TO_BORDER_Tweak_N167)
{
l9_17=ivec2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N167,SC_SOFTWARE_WRAP_MODE_V_Tweak_N167).y==3;
}
#else
{
l9_17=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N167)!=0);
}
#endif
float l9_18=l9_9;
float l9_19=l9_16;
sc_ClampUV(l9_18,Tweak_N167UvMinMax.y,Tweak_N167UvMinMax.w,l9_17,l9_19);
l9_11=l9_19;
l9_10=vec2(l9_15,l9_18);
}
#else
{
l9_11=1.0;
l9_10=vec2(l9_7,l9_9);
}
#endif
vec2 l9_20=sc_TransformUV(l9_10,(int(SC_USE_UV_TRANSFORM_Tweak_N167)!=0),Tweak_N167Transform);
float l9_21=l9_20.x;
float l9_22=l9_11;
sc_SoftwareWrapLate(l9_21,ivec2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N167,SC_SOFTWARE_WRAP_MODE_V_Tweak_N167).x,l9_5,l9_22);
float l9_23=l9_20.y;
float l9_24=l9_22;
sc_SoftwareWrapLate(l9_23,ivec2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N167,SC_SOFTWARE_WRAP_MODE_V_Tweak_N167).y,l9_5,l9_24);
float l9_25=l9_24;
vec3 l9_26=sc_SamplingCoordsViewToGlobal(vec2(l9_21,l9_23),Tweak_N167Layout,l9_4);
vec4 l9_27=texture2D(Tweak_N167,l9_26.xy,0.0);
vec4 l9_28;
#if (SC_USE_CLAMP_TO_BORDER_Tweak_N167)
{
l9_28=mix(Tweak_N167BorderColor,l9_27,vec4(l9_25));
}
#else
{
l9_28=l9_27;
}
#endif
l9_3=l9_28;
}
#else
{
l9_3=Port_Default_N176;
}
#endif
vec4 l9_29=l9_3*Tweak_N175;
vec3 l9_30=vec3(l9_29.xyz);
vec4 l9_31=vec4(l9_30.x,l9_30.y,l9_30.z,vec4(0.0).w);
l9_31.w=Tweak_N17;
int l9_32;
#if (Tweak_N168HasSwappedViews)
{
l9_32=1-sc_GetStereoViewIndex();
}
#else
{
l9_32=sc_GetStereoViewIndex();
}
#endif
bool l9_33=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N168)!=0)&&(!(int(SC_USE_UV_MIN_MAX_Tweak_N168)!=0));
float l9_34=varPackedTex.x;
sc_SoftwareWrapEarly(l9_34,ivec2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N168,SC_SOFTWARE_WRAP_MODE_V_Tweak_N168).x);
float l9_35=l9_34;
float l9_36=varPackedTex.y;
sc_SoftwareWrapEarly(l9_36,ivec2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N168,SC_SOFTWARE_WRAP_MODE_V_Tweak_N168).y);
float l9_37=l9_36;
vec2 l9_38;
float l9_39;
#if (SC_USE_UV_MIN_MAX_Tweak_N168)
{
bool l9_40;
#if (SC_USE_CLAMP_TO_BORDER_Tweak_N168)
{
l9_40=ivec2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N168,SC_SOFTWARE_WRAP_MODE_V_Tweak_N168).x==3;
}
#else
{
l9_40=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N168)!=0);
}
#endif
float l9_41=l9_35;
float l9_42=1.0;
sc_ClampUV(l9_41,Tweak_N168UvMinMax.x,Tweak_N168UvMinMax.z,l9_40,l9_42);
float l9_43=l9_41;
float l9_44=l9_42;
bool l9_45;
#if (SC_USE_CLAMP_TO_BORDER_Tweak_N168)
{
l9_45=ivec2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N168,SC_SOFTWARE_WRAP_MODE_V_Tweak_N168).y==3;
}
#else
{
l9_45=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N168)!=0);
}
#endif
float l9_46=l9_37;
float l9_47=l9_44;
sc_ClampUV(l9_46,Tweak_N168UvMinMax.y,Tweak_N168UvMinMax.w,l9_45,l9_47);
l9_39=l9_47;
l9_38=vec2(l9_43,l9_46);
}
#else
{
l9_39=1.0;
l9_38=vec2(l9_35,l9_37);
}
#endif
vec2 l9_48=sc_TransformUV(l9_38,(int(SC_USE_UV_TRANSFORM_Tweak_N168)!=0),Tweak_N168Transform);
float l9_49=l9_48.x;
float l9_50=l9_39;
sc_SoftwareWrapLate(l9_49,ivec2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N168,SC_SOFTWARE_WRAP_MODE_V_Tweak_N168).x,l9_33,l9_50);
float l9_51=l9_48.y;
float l9_52=l9_50;
sc_SoftwareWrapLate(l9_51,ivec2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N168,SC_SOFTWARE_WRAP_MODE_V_Tweak_N168).y,l9_33,l9_52);
float l9_53=l9_52;
vec3 l9_54=sc_SamplingCoordsViewToGlobal(vec2(l9_49,l9_51),Tweak_N168Layout,l9_32);
vec4 l9_55=texture2D(Tweak_N168,l9_54.xy,0.0);
vec4 l9_56;
#if (SC_USE_CLAMP_TO_BORDER_Tweak_N168)
{
l9_56=mix(Tweak_N168BorderColor,l9_55,vec4(l9_53));
}
#else
{
l9_56=l9_55;
}
#endif
int l9_57;
#if (Tweak_N169HasSwappedViews)
{
l9_57=1-sc_GetStereoViewIndex();
}
#else
{
l9_57=sc_GetStereoViewIndex();
}
#endif
bool l9_58=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N169)!=0)&&(!(int(SC_USE_UV_MIN_MAX_Tweak_N169)!=0));
float l9_59=varPackedTex.x;
sc_SoftwareWrapEarly(l9_59,ivec2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N169,SC_SOFTWARE_WRAP_MODE_V_Tweak_N169).x);
float l9_60=l9_59;
float l9_61=varPackedTex.y;
sc_SoftwareWrapEarly(l9_61,ivec2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N169,SC_SOFTWARE_WRAP_MODE_V_Tweak_N169).y);
float l9_62=l9_61;
vec2 l9_63;
float l9_64;
#if (SC_USE_UV_MIN_MAX_Tweak_N169)
{
bool l9_65;
#if (SC_USE_CLAMP_TO_BORDER_Tweak_N169)
{
l9_65=ivec2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N169,SC_SOFTWARE_WRAP_MODE_V_Tweak_N169).x==3;
}
#else
{
l9_65=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N169)!=0);
}
#endif
float l9_66=l9_60;
float l9_67=1.0;
sc_ClampUV(l9_66,Tweak_N169UvMinMax.x,Tweak_N169UvMinMax.z,l9_65,l9_67);
float l9_68=l9_66;
float l9_69=l9_67;
bool l9_70;
#if (SC_USE_CLAMP_TO_BORDER_Tweak_N169)
{
l9_70=ivec2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N169,SC_SOFTWARE_WRAP_MODE_V_Tweak_N169).y==3;
}
#else
{
l9_70=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N169)!=0);
}
#endif
float l9_71=l9_62;
float l9_72=l9_69;
sc_ClampUV(l9_71,Tweak_N169UvMinMax.y,Tweak_N169UvMinMax.w,l9_70,l9_72);
l9_64=l9_72;
l9_63=vec2(l9_68,l9_71);
}
#else
{
l9_64=1.0;
l9_63=vec2(l9_60,l9_62);
}
#endif
vec2 l9_73=sc_TransformUV(l9_63,(int(SC_USE_UV_TRANSFORM_Tweak_N169)!=0),Tweak_N169Transform);
float l9_74=l9_73.x;
float l9_75=l9_64;
sc_SoftwareWrapLate(l9_74,ivec2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N169,SC_SOFTWARE_WRAP_MODE_V_Tweak_N169).x,l9_58,l9_75);
float l9_76=l9_73.y;
float l9_77=l9_75;
sc_SoftwareWrapLate(l9_76,ivec2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N169,SC_SOFTWARE_WRAP_MODE_V_Tweak_N169).y,l9_58,l9_77);
float l9_78=l9_77;
vec3 l9_79=sc_SamplingCoordsViewToGlobal(vec2(l9_74,l9_76),Tweak_N169Layout,l9_57);
vec4 l9_80=texture2D(Tweak_N169,l9_79.xy,0.0);
vec4 l9_81;
#if (SC_USE_CLAMP_TO_BORDER_Tweak_N169)
{
l9_81=mix(Tweak_N169BorderColor,l9_80,vec4(l9_78));
}
#else
{
l9_81=l9_80;
}
#endif
vec3 l9_82;
#if (!sc_ProjectiveShadowsCaster)
{
l9_82=mat3(l9_1,cross(l9_2,l9_1)*varTangent.w,l9_2)*l9_56.xyz;
}
#else
{
l9_82=vec3(0.0);
}
#endif
float l9_83=clamp(Tweak_N17,0.0,1.0);
#if (sc_BlendMode_AlphaTest)
{
if (l9_83<alphaTestThreshold)
{
discard;
}
}
#endif
#if (ENABLE_STIPPLE_PATTERN_TEST)
{
if (l9_83<((mod(dot(floor(mod(gl_FragCoord.xy,vec2(4.0))),vec2(4.0,1.0))*9.0,16.0)+1.0)/17.0))
{
discard;
}
}
#endif
vec3 l9_84=max(l9_29.xyz,vec3(0.0));
vec4 l9_85;
#if (sc_ProjectiveShadowsCaster)
{
l9_85=vec4(l9_84,l9_83);
}
#else
{
float l9_86=clamp(l9_81.x,0.0,1.0);
float l9_87=clamp(l9_81.y,0.0,1.0);
vec3 l9_88=ssSRGB_to_Linear(l9_84);
vec3 l9_89=normalize(l9_82);
vec3 l9_90=ssSRGB_to_Linear(Port_Emissive_N174);
vec3 l9_91;
#if (sc_SSAOEnabled)
{
l9_91=evaluateSSAO(varPos);
}
#else
{
l9_91=clamp(vec3(l9_81.z),vec3(0.0),vec3(1.0));
}
#endif
vec3 l9_92=vec3(l9_86);
vec3 l9_93=mix(vec3(0.039999999),l9_88*l9_86,l9_92);
vec3 l9_94=mix(l9_88*(1.0-l9_86),vec3(0.0),l9_92);
SurfaceProperties l9_95=SurfaceProperties(l9_94,l9_83,l9_89,varPos,l9_0,l9_86,l9_87,l9_90,l9_91,Port_SpecularAO_N174,vec3(1.0),l9_93);
vec4 l9_96=vec4(1.0);
vec3 l9_97;
vec3 l9_98;
vec3 l9_99;
vec3 l9_100;
int l9_101;
vec3 l9_102;
vec3 l9_103;
#if (sc_DirectionalLightsCount>0)
{
vec3 l9_104;
vec3 l9_105;
vec3 l9_106;
vec3 l9_107;
int l9_108;
vec3 l9_109;
vec3 l9_110;
l9_110=vec3(1.0);
l9_109=vec3(0.0);
l9_108=0;
l9_107=vec3(0.0);
l9_106=vec3(0.0);
l9_105=vec3(0.0);
l9_104=vec3(0.0);
LightingComponents l9_111;
LightProperties l9_112;
SurfaceProperties l9_113;
vec3 l9_114;
int l9_115=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_115<sc_DirectionalLightsCount)
{
LightingComponents l9_116=accumulateLight(LightingComponents(l9_104,l9_105,l9_110,l9_109,l9_107,l9_106),LightProperties(sc_DirectionalLights[l9_115].direction,sc_DirectionalLights[l9_115].color.xyz,sc_DirectionalLights[l9_115].color.w*l9_96[(l9_108<3) ? l9_108 : 3]),l9_95,l9_0);
l9_110=l9_116.indirectDiffuse;
l9_109=l9_116.indirectSpecular;
l9_108++;
l9_107=l9_116.emitted;
l9_106=l9_116.transmitted;
l9_105=l9_116.directSpecular;
l9_104=l9_116.directDiffuse;
l9_115++;
continue;
}
else
{
break;
}
}
l9_103=l9_110;
l9_102=l9_109;
l9_101=l9_108;
l9_100=l9_107;
l9_99=l9_106;
l9_98=l9_105;
l9_97=l9_104;
}
#else
{
l9_103=vec3(1.0);
l9_102=vec3(0.0);
l9_101=0;
l9_100=vec3(0.0);
l9_99=vec3(0.0);
l9_98=vec3(0.0);
l9_97=vec3(0.0);
}
#endif
vec3 l9_117;
vec3 l9_118;
vec3 l9_119;
#if (sc_PointLightsCount>0)
{
vec3 l9_120;
vec3 l9_121;
vec3 l9_122;
vec3 l9_123;
vec3 l9_124;
vec3 l9_125;
l9_125=l9_103;
l9_124=l9_102;
l9_123=l9_100;
l9_122=l9_99;
l9_121=l9_98;
l9_120=l9_97;
int l9_126;
vec3 l9_127;
vec3 l9_128;
vec3 l9_129;
vec3 l9_130;
vec3 l9_131;
vec3 l9_132;
int l9_133=0;
int l9_134=l9_101;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_133<sc_PointLightsCount)
{
vec3 l9_135=sc_PointLights[l9_133].position-varPos;
vec3 l9_136=normalize(l9_135);
float l9_137=l9_96[(l9_134<3) ? l9_134 : 3];
float l9_138=clamp((dot(l9_136,sc_PointLights[l9_133].direction)*sc_PointLights[l9_133].angleScale)+sc_PointLights[l9_133].angleOffset,0.0,1.0);
float l9_139=(sc_PointLights[l9_133].color.w*l9_137)*(l9_138*l9_138);
float l9_140;
if (sc_PointLights[l9_133].falloffEnabled)
{
l9_140=l9_139*computeDistanceAttenuation(length(l9_135),sc_PointLights[l9_133].falloffEndDistance);
}
else
{
l9_140=l9_139;
}
l9_126=l9_134+1;
LightingComponents l9_141=accumulateLight(LightingComponents(l9_120,l9_121,l9_125,l9_124,l9_123,l9_122),LightProperties(l9_136,sc_PointLights[l9_133].color.xyz,l9_140),l9_95,l9_0);
l9_127=l9_141.directDiffuse;
l9_128=l9_141.directSpecular;
l9_129=l9_141.indirectDiffuse;
l9_130=l9_141.indirectSpecular;
l9_131=l9_141.emitted;
l9_132=l9_141.transmitted;
l9_125=l9_129;
l9_124=l9_130;
l9_134=l9_126;
l9_123=l9_131;
l9_122=l9_132;
l9_121=l9_128;
l9_120=l9_127;
l9_133++;
continue;
}
else
{
break;
}
}
l9_119=l9_122;
l9_118=l9_121;
l9_117=l9_120;
}
#else
{
l9_119=l9_99;
l9_118=l9_98;
l9_117=l9_97;
}
#endif
vec3 l9_142;
vec3 l9_143;
#if (sc_ProjectiveShadowsReceiver)
{
vec3 l9_144;
#if (sc_ProjectiveShadowsReceiver)
{
vec2 l9_145=abs(varShadowTex-vec2(0.5));
vec4 l9_146=texture2D(sc_ShadowTexture,varShadowTex)*step(max(l9_145.x,l9_145.y),0.5);
l9_144=mix(vec3(1.0),mix(sc_ShadowColor.xyz,sc_ShadowColor.xyz*l9_146.xyz,vec3(sc_ShadowColor.w)),vec3(l9_146.w*sc_ShadowDensity));
}
#else
{
l9_144=vec3(1.0);
}
#endif
l9_143=l9_117*l9_144;
l9_142=l9_118*l9_144;
}
#else
{
l9_143=l9_117;
l9_142=l9_118;
}
#endif
vec3 l9_147;
#if ((sc_EnvLightMode==sc_AmbientLightMode_EnvironmentMap)||(sc_EnvLightMode==sc_AmbientLightMode_FromCamera))
{
vec2 l9_148=calcPanoramicTexCoordsFromDir(l9_89,sc_EnvmapRotation.y);
vec4 l9_149;
#if (sc_EnvLightMode==sc_AmbientLightMode_FromCamera)
{
vec2 l9_150;
#if ((SC_DEVICE_CLASS>=2)&&SC_GL_FRAGMENT_PRECISION_HIGH)
{
l9_150=calcSeamlessPanoramicUvsForSampling(l9_148,sc_EnvmapSpecularSize.xy,5.0);
}
#else
{
l9_150=l9_148;
}
#endif
l9_149=sc_EnvmapSpecularSampleViewIndexBias(l9_150,sc_EnvmapSpecularGetStereoViewIndex(),13.0);
}
#else
{
vec4 l9_151;
#if ((sc_MaxTextureImageUnits>8)&&sc_HasDiffuseEnvmap)
{
vec2 l9_152=calcSeamlessPanoramicUvsForSampling(l9_148,sc_EnvmapDiffuseSize.xy,0.0);
int l9_153;
#if (sc_EnvmapDiffuseHasSwappedViews)
{
l9_153=1-sc_GetStereoViewIndex();
}
#else
{
l9_153=sc_GetStereoViewIndex();
}
#endif
l9_151=texture2D(sc_EnvmapDiffuse,sc_SamplingCoordsViewToGlobal(l9_152,sc_EnvmapDiffuseLayout,l9_153).xy,-13.0);
}
#else
{
l9_151=sc_EnvmapSpecularSampleViewIndexBias(l9_148,sc_EnvmapSpecularGetStereoViewIndex(),13.0);
}
#endif
l9_149=l9_151;
}
#endif
l9_147=(l9_149.xyz*(1.0/l9_149.w))*sc_EnvmapExposure;
}
#else
{
vec3 l9_154;
#if (sc_EnvLightMode==sc_AmbientLightMode_SphericalHarmonics)
{
vec3 l9_155=-l9_89;
float l9_156=l9_155.x;
float l9_157=l9_155.y;
float l9_158=l9_155.z;
l9_154=(((((((sc_Sh[8]*0.42904299)*((l9_156*l9_156)-(l9_157*l9_157)))+((sc_Sh[6]*0.74312502)*(l9_158*l9_158)))+(sc_Sh[0]*0.88622701))-(sc_Sh[6]*0.24770799))+((((sc_Sh[4]*(l9_156*l9_157))+(sc_Sh[7]*(l9_156*l9_158)))+(sc_Sh[5]*(l9_157*l9_158)))*0.85808599))+((((sc_Sh[3]*l9_156)+(sc_Sh[1]*l9_157))+(sc_Sh[2]*l9_158))*1.0233279))*sc_ShIntensity;
}
#else
{
l9_154=vec3(0.0);
}
#endif
l9_147=l9_154;
}
#endif
vec3 l9_159;
#if (sc_AmbientLightsCount>0)
{
vec3 l9_160;
#if (sc_AmbientLightMode0==sc_AmbientLightMode_Constant)
{
l9_160=l9_147+(sc_AmbientLights[0].color*sc_AmbientLights[0].intensity);
}
#else
{
vec3 l9_161=l9_147;
l9_161.x=l9_147.x+(1e-06*sc_AmbientLights[0].color.x);
l9_160=l9_161;
}
#endif
l9_159=l9_160;
}
#else
{
l9_159=l9_147;
}
#endif
vec3 l9_162;
#if (sc_AmbientLightsCount>1)
{
vec3 l9_163;
#if (sc_AmbientLightMode1==sc_AmbientLightMode_Constant)
{
l9_163=l9_159+(sc_AmbientLights[1].color*sc_AmbientLights[1].intensity);
}
#else
{
vec3 l9_164=l9_159;
l9_164.x=l9_159.x+(1e-06*sc_AmbientLights[1].color.x);
l9_163=l9_164;
}
#endif
l9_162=l9_163;
}
#else
{
l9_162=l9_159;
}
#endif
vec3 l9_165;
#if (sc_AmbientLightsCount>2)
{
vec3 l9_166;
#if (sc_AmbientLightMode2==sc_AmbientLightMode_Constant)
{
l9_166=l9_162+(sc_AmbientLights[2].color*sc_AmbientLights[2].intensity);
}
#else
{
vec3 l9_167=l9_162;
l9_167.x=l9_162.x+(1e-06*sc_AmbientLights[2].color.x);
l9_166=l9_167;
}
#endif
l9_165=l9_166;
}
#else
{
l9_165=l9_162;
}
#endif
vec3 l9_168;
#if (sc_LightEstimation)
{
vec3 l9_169;
l9_169=sc_LightEstimationData.ambientLight;
vec3 l9_170;
int l9_171=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_171<sc_LightEstimationSGCount)
{
float l9_172=dot(sc_LightEstimationData.sg[l9_171].axis,l9_89);
float l9_173=exp(-sc_LightEstimationData.sg[l9_171].sharpness);
float l9_174=l9_173*l9_173;
float l9_175=1.0/sc_LightEstimationData.sg[l9_171].sharpness;
float l9_176=(1.0+(2.0*l9_174))-l9_175;
float l9_177=sqrt(1.0-l9_176);
float l9_178=0.36000001*l9_172;
float l9_179=(1.0/(4.0*0.36000001))*l9_177;
float l9_180=l9_178+l9_179;
float l9_181;
if (step(abs(l9_178),l9_179)>0.5)
{
l9_181=(l9_180*l9_180)/l9_177;
}
else
{
l9_181=clamp(l9_172,0.0,1.0);
}
l9_170=l9_169+((((sc_LightEstimationData.sg[l9_171].color/vec3(sc_LightEstimationData.sg[l9_171].sharpness))*6.2831855)*((l9_176*l9_181)+(((l9_173-l9_174)*l9_175)-l9_174)))/vec3(3.1415927));
l9_169=l9_170;
l9_171++;
continue;
}
else
{
break;
}
}
l9_168=l9_165+l9_169;
}
#else
{
l9_168=l9_165;
}
#endif
vec3 l9_182;
#if ((sc_EnvLightMode==sc_AmbientLightMode_EnvironmentMap)||(sc_EnvLightMode==sc_AmbientLightMode_FromCamera))
{
float l9_183=clamp(pow(l9_87,0.66666669),0.0,1.0)*5.0;
vec2 l9_184=calcPanoramicTexCoordsFromDir(getSpecularDominantDir(l9_89,reflect(-l9_0,l9_89),l9_87),sc_EnvmapRotation.y);
vec4 l9_185;
#if ((SC_DEVICE_CLASS>=2)&&SC_GL_FRAGMENT_PRECISION_HIGH)
{
float l9_186=floor(l9_183);
float l9_187=ceil(l9_183);
l9_185=mix(sc_EnvmapSpecularSampleViewIndexLevel(calcSeamlessPanoramicUvsForSampling(l9_184,sc_EnvmapSpecularSize.xy,l9_186),sc_EnvmapSpecularGetStereoViewIndex(),l9_186),sc_EnvmapSpecularSampleViewIndexLevel(calcSeamlessPanoramicUvsForSampling(l9_184,sc_EnvmapSpecularSize.xy,l9_187),sc_EnvmapSpecularGetStereoViewIndex(),l9_187),vec4(l9_183-l9_186));
}
#else
{
l9_185=sc_EnvmapSpecularSampleViewIndexLevel(l9_184,sc_EnvmapSpecularGetStereoViewIndex(),l9_183);
}
#endif
l9_182=vec3(0.0)+((((l9_185.xyz*(1.0/l9_185.w))*sc_EnvmapExposure)+vec3(1e-06))*envBRDFApprox(l9_95,abs(dot(l9_89,l9_0))));
}
#else
{
l9_182=vec3(0.0);
}
#endif
vec3 l9_188;
#if (sc_LightEstimation)
{
float l9_189=clamp(l9_87*l9_87,0.0099999998,1.0);
vec3 l9_190;
l9_190=sc_LightEstimationData.ambientLight*l9_93;
int l9_191=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_191<sc_LightEstimationSGCount)
{
float l9_192=l9_189*l9_189;
vec3 l9_193=reflect(-l9_0,l9_89);
float l9_194=dot(l9_89,l9_0);
float l9_195=(2.0/l9_192)/(4.0*max(l9_194,9.9999997e-05));
float l9_196=length((l9_193*l9_195)+(sc_LightEstimationData.sg[l9_191].axis*sc_LightEstimationData.sg[l9_191].sharpness));
float l9_197=clamp(dot(l9_89,l9_193),0.0,1.0);
float l9_198=clamp(l9_194,0.0,1.0);
float l9_199=1.0-l9_192;
l9_190+=((((((((vec3(1.0/(3.1415927*l9_192))*exp((l9_196-l9_195)-sc_LightEstimationData.sg[l9_191].sharpness))*sc_LightEstimationData.sg[l9_191].color)*6.2831855)*(1.0-exp((-2.0)*l9_196)))/vec3(l9_196))*((1.0/(l9_197+sqrt(l9_192+((l9_199*l9_197)*l9_197))))*(1.0/(l9_198+sqrt(l9_192+((l9_199*l9_198)*l9_198))))))*(l9_93+((vec3(1.0)-l9_93)*pow(1.0-clamp(dot(l9_193,normalize(l9_193+l9_0)),0.0,1.0),5.0))))*l9_197);
l9_191++;
continue;
}
else
{
break;
}
}
l9_188=l9_182+l9_190;
}
#else
{
l9_188=l9_182;
}
#endif
float l9_200;
vec3 l9_201;
vec3 l9_202;
vec3 l9_203;
#if (sc_BlendMode_ColoredGlass)
{
l9_203=vec3(0.0);
l9_202=vec3(0.0);
l9_201=ssSRGB_to_Linear(sc_GetFramebufferColor().xyz)*mix(vec3(1.0),l9_94,vec3(l9_83));
l9_200=1.0;
}
#else
{
l9_203=l9_143;
l9_202=l9_168;
l9_201=l9_119;
l9_200=l9_83;
}
#endif
bool l9_204;
#if (sc_BlendMode_PremultipliedAlpha)
{
l9_204=true;
}
#else
{
l9_204=false;
}
#endif
vec3 l9_205=l9_202*l9_91;
vec3 l9_206=l9_203+l9_205;
vec3 l9_207=l9_94*l9_206;
vec3 l9_208=l9_188*Port_SpecularAO_N174;
vec3 l9_209=l9_142+l9_208;
vec3 l9_210;
if (l9_204)
{
l9_210=l9_207*srgbToLinear(l9_200);
}
else
{
l9_210=l9_207;
}
vec3 l9_211=l9_210+l9_209;
vec3 l9_212=(l9_211+l9_90)+l9_201;
float l9_213=l9_212.x;
vec4 l9_214=vec4(l9_213,l9_212.yz,l9_200);
vec4 l9_215;
#if (sc_IsEditor)
{
vec4 l9_216=l9_214;
l9_216.x=l9_213+((l9_91.x*Port_SpecularAO_N174.x)*9.9999997e-06);
l9_215=l9_216;
}
#else
{
l9_215=l9_214;
}
#endif
vec4 l9_217;
#if (!sc_BlendMode_Multiply)
{
vec3 l9_218=l9_215.xyz*1.8;
vec3 l9_219=(l9_215.xyz*(l9_218+vec3(1.4)))/((l9_215.xyz*(l9_218+vec3(0.5)))+vec3(1.5));
l9_217=vec4(l9_219.x,l9_219.y,l9_219.z,l9_215.w);
}
#else
{
l9_217=l9_215;
}
#endif
vec3 l9_220=vec3(linearToSrgb(l9_217.x),linearToSrgb(l9_217.y),linearToSrgb(l9_217.z));
l9_85=vec4(l9_220.x,l9_220.y,l9_220.z,l9_217.w);
}
#endif
vec4 l9_221=max(l9_85,vec4(0.0));
float l9_222;
#if (Tweak_N45)
{
l9_222=1.001;
}
#else
{
l9_222=0.001;
}
#endif
float l9_223=l9_222-0.001;
vec4 l9_224=mix(l9_31,l9_221,vec4(l9_223));
vec4 l9_225;
#if (sc_ProjectiveShadowsCaster)
{
float l9_226;
#if (((sc_BlendMode_Normal||sc_BlendMode_AlphaToCoverage)||sc_BlendMode_PremultipliedAlphaHardware)||sc_BlendMode_PremultipliedAlphaAuto)
{
l9_226=l9_224.w;
}
#else
{
float l9_227;
#if (sc_BlendMode_PremultipliedAlpha)
{
l9_227=clamp(l9_224.w*2.0,0.0,1.0);
}
#else
{
float l9_228;
#if (sc_BlendMode_AddWithAlphaFactor)
{
l9_228=clamp(dot(l9_224.xyz,vec3(l9_224.w)),0.0,1.0);
}
#else
{
float l9_229;
#if (sc_BlendMode_AlphaTest)
{
l9_229=1.0;
}
#else
{
float l9_230;
#if (sc_BlendMode_Multiply)
{
l9_230=(1.0-dot(l9_224.xyz,vec3(0.33333001)))*l9_224.w;
}
#else
{
float l9_231;
#if (sc_BlendMode_MultiplyOriginal)
{
l9_231=(1.0-clamp(dot(l9_224.xyz,vec3(1.0)),0.0,1.0))*l9_224.w;
}
#else
{
float l9_232;
#if (sc_BlendMode_ColoredGlass)
{
l9_232=clamp(dot(l9_224.xyz,vec3(1.0)),0.0,1.0)*l9_224.w;
}
#else
{
float l9_233;
#if (sc_BlendMode_Add)
{
l9_233=clamp(dot(l9_224.xyz,vec3(1.0)),0.0,1.0);
}
#else
{
float l9_234;
#if (sc_BlendMode_AddWithAlphaFactor)
{
l9_234=clamp(dot(l9_224.xyz,vec3(1.0)),0.0,1.0)*l9_224.w;
}
#else
{
float l9_235;
#if (sc_BlendMode_Screen)
{
l9_235=dot(l9_224.xyz,vec3(0.33333001))*l9_224.w;
}
#else
{
float l9_236;
#if (sc_BlendMode_Min)
{
l9_236=1.0-clamp(dot(l9_224.xyz,vec3(1.0)),0.0,1.0);
}
#else
{
float l9_237;
#if (sc_BlendMode_Max)
{
l9_237=clamp(dot(l9_224.xyz,vec3(1.0)),0.0,1.0);
}
#else
{
l9_237=1.0;
}
#endif
l9_236=l9_237;
}
#endif
l9_235=l9_236;
}
#endif
l9_234=l9_235;
}
#endif
l9_233=l9_234;
}
#endif
l9_232=l9_233;
}
#endif
l9_231=l9_232;
}
#endif
l9_230=l9_231;
}
#endif
l9_229=l9_230;
}
#endif
l9_228=l9_229;
}
#endif
l9_227=l9_228;
}
#endif
l9_226=l9_227;
}
#endif
l9_225=vec4(mix(sc_ShadowColor.xyz,sc_ShadowColor.xyz*l9_224.xyz,vec3(sc_ShadowColor.w)),sc_ShadowDensity*l9_226);
}
#else
{
vec4 l9_238;
#if (sc_RenderAlphaToColor)
{
l9_238=vec4(l9_224.w);
}
#else
{
vec4 l9_239;
#if (sc_BlendMode_Custom)
{
vec3 l9_240=sc_GetFramebufferColor().xyz;
vec3 l9_241=mix(l9_240,definedBlend(l9_240,l9_224.xyz).xyz,vec3(l9_224.w));
vec4 l9_242=vec4(l9_241.x,l9_241.y,l9_241.z,vec4(0.0).w);
l9_242.w=1.0;
l9_239=l9_242;
}
#else
{
vec4 l9_243;
#if (sc_BlendMode_MultiplyOriginal)
{
float l9_244=l9_224.w;
l9_243=vec4(mix(vec3(1.0),l9_224.xyz,vec3(l9_244)),l9_244);
}
#else
{
vec4 l9_245;
#if (sc_BlendMode_Screen||sc_BlendMode_PremultipliedAlphaAuto)
{
float l9_246=l9_224.w;
float l9_247;
#if (sc_BlendMode_PremultipliedAlphaAuto)
{
l9_247=clamp(l9_246,0.0,1.0);
}
#else
{
l9_247=l9_246;
}
#endif
l9_245=vec4(l9_224.xyz*l9_247,l9_247);
}
#else
{
l9_245=l9_224;
}
#endif
l9_243=l9_245;
}
#endif
l9_239=l9_243;
}
#endif
l9_238=l9_239;
}
#endif
l9_225=l9_238;
}
#endif
vec4 l9_248;
if (PreviewEnabled==1)
{
vec4 l9_249;
if (((PreviewVertexSaved*1.0)!=0.0) ? true : false)
{
l9_249=PreviewVertexColor;
}
else
{
l9_249=vec4(0.0);
}
l9_248=l9_249;
}
else
{
l9_248=l9_225;
}
vec4 l9_250;
#if (sc_ShaderComplexityAnalyzer)
{
l9_250=vec4(shaderComplexityValue/255.0,0.0,0.0,1.0);
}
#else
{
l9_250=vec4(0.0);
}
#endif
vec4 l9_251;
if (l9_250.w>0.0)
{
l9_251=l9_250;
}
else
{
l9_251=l9_248;
}
vec4 l9_252=outputMotionVectorsIfNeeded(varPos,max(l9_251,vec4(0.0)));
vec4 l9_253=clamp(l9_252,vec4(0.0),vec4(1.0));
#if (sc_OITDepthBoundsPass)
{
#if (sc_OITDepthBoundsPass)
{
float l9_254=clamp(viewSpaceDepth()/1000.0,0.0,1.0);
sc_writeFragData0Internal(vec4(max(0.0,1.0-(l9_254-0.0039215689)),min(1.0,l9_254+0.0039215689),0.0,0.0),sc_UniformConstants.x,sc_ShaderCacheConstant);
}
#endif
}
#else
{
#if (sc_OITDepthPrepass)
{
sc_writeFragData0Internal(vec4(1.0),sc_UniformConstants.x,sc_ShaderCacheConstant);
}
#else
{
#if (sc_OITDepthGatherPass)
{
#if (sc_OITDepthGatherPass)
{
vec2 l9_255=sc_ScreenCoordsGlobalToView(gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw);
#if (sc_OITMaxLayers4Plus1)
{
if ((gl_FragCoord.z-texture2D(sc_OITFrontDepthTexture,l9_255).x)<=getFrontLayerZTestEpsilon())
{
discard;
}
}
#endif
int l9_256=encodeDepth(viewSpaceDepth(),texture2D(sc_OITFilteredDepthBoundsTexture,l9_255).xy);
float l9_257=packValue(l9_256);
int l9_264=int(l9_253.w*255.0);
float l9_265=packValue(l9_264);
sc_writeFragData0Internal(vec4(packValue(l9_256),packValue(l9_256),packValue(l9_256),packValue(l9_256)),sc_UniformConstants.x,sc_ShaderCacheConstant);
sc_writeFragData1(vec4(l9_257,packValue(l9_256),packValue(l9_256),packValue(l9_256)));
sc_writeFragData2(vec4(l9_265,packValue(l9_264),packValue(l9_264),packValue(l9_264)));
#if (sc_OITMaxLayersVisualizeLayerCount)
{
sc_writeFragData2(vec4(0.0039215689,0.0,0.0,0.0));
}
#endif
}
#endif
}
#else
{
#if (sc_OITCompositingPass)
{
#if (sc_OITCompositingPass)
{
vec2 l9_268=sc_ScreenCoordsGlobalToView(gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw);
#if (sc_OITMaxLayers4Plus1)
{
if ((gl_FragCoord.z-texture2D(sc_OITFrontDepthTexture,l9_268).x)<=getFrontLayerZTestEpsilon())
{
discard;
}
}
#endif
int l9_269[8];
int l9_270[8];
int l9_271=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_271<8)
{
l9_269[l9_271]=0;
l9_270[l9_271]=0;
l9_271++;
continue;
}
else
{
break;
}
}
int l9_272;
#if (sc_OITMaxLayers8)
{
l9_272=2;
}
#else
{
l9_272=1;
}
#endif
int l9_273=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_273<l9_272)
{
vec4 l9_274;
vec4 l9_275;
vec4 l9_276;
if (l9_273==0)
{
l9_276=texture2D(sc_OITAlpha0,l9_268);
l9_275=texture2D(sc_OITDepthLow0,l9_268);
l9_274=texture2D(sc_OITDepthHigh0,l9_268);
}
else
{
l9_276=vec4(0.0);
l9_275=vec4(0.0);
l9_274=vec4(0.0);
}
vec4 l9_277;
vec4 l9_278;
vec4 l9_279;
if (l9_273==1)
{
l9_279=texture2D(sc_OITAlpha1,l9_268);
l9_278=texture2D(sc_OITDepthLow1,l9_268);
l9_277=texture2D(sc_OITDepthHigh1,l9_268);
}
else
{
l9_279=l9_276;
l9_278=l9_275;
l9_277=l9_274;
}
if (any(notEqual(l9_277,vec4(0.0)))||any(notEqual(l9_278,vec4(0.0))))
{
int l9_280[8]=l9_269;
unpackValues(l9_277.w,l9_273,l9_280);
unpackValues(l9_277.z,l9_273,l9_280);
unpackValues(l9_277.y,l9_273,l9_280);
unpackValues(l9_277.x,l9_273,l9_280);
unpackValues(l9_278.w,l9_273,l9_280);
unpackValues(l9_278.z,l9_273,l9_280);
unpackValues(l9_278.y,l9_273,l9_280);
unpackValues(l9_278.x,l9_273,l9_280);
int l9_289[8]=l9_270;
unpackValues(l9_279.w,l9_273,l9_289);
unpackValues(l9_279.z,l9_273,l9_289);
unpackValues(l9_279.y,l9_273,l9_289);
unpackValues(l9_279.x,l9_273,l9_289);
}
l9_273++;
continue;
}
else
{
break;
}
}
vec4 l9_294=texture2D(sc_OITFilteredDepthBoundsTexture,l9_268);
vec2 l9_295=l9_294.xy;
int l9_296;
#if (sc_SkinBonesCount>0)
{
l9_296=encodeDepth(((1.0-l9_294.x)*1000.0)+getDepthOrderingEpsilon(),l9_295);
}
#else
{
l9_296=0;
}
#endif
int l9_297=encodeDepth(viewSpaceDepth(),l9_295);
vec4 l9_298;
l9_298=l9_253*l9_253.w;
vec4 l9_299;
int l9_300=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_300<8)
{
int l9_301=l9_269[l9_300];
int l9_302=l9_297-l9_296;
bool l9_303=l9_301<l9_302;
bool l9_304;
if (l9_303)
{
l9_304=l9_269[l9_300]>0;
}
else
{
l9_304=l9_303;
}
if (l9_304)
{
vec3 l9_305=l9_298.xyz*(1.0-(float(l9_270[l9_300])/255.0));
l9_299=vec4(l9_305.x,l9_305.y,l9_305.z,l9_298.w);
}
else
{
l9_299=l9_298;
}
l9_298=l9_299;
l9_300++;
continue;
}
else
{
break;
}
}
sc_writeFragData0Internal(l9_298,sc_UniformConstants.x,sc_ShaderCacheConstant);
#if (sc_OITMaxLayersVisualizeLayerCount)
{
discard;
}
#endif
}
#endif
}
#else
{
#if (sc_OITFrontLayerPass)
{
#if (sc_OITFrontLayerPass)
{
if (abs(gl_FragCoord.z-texture2D(sc_OITFrontDepthTexture,sc_ScreenCoordsGlobalToView(gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw)).x)>getFrontLayerZTestEpsilon())
{
discard;
}
sc_writeFragData0Internal(l9_253,sc_UniformConstants.x,sc_ShaderCacheConstant);
}
#endif
}
#else
{
sc_writeFragData0Internal(l9_252,sc_UniformConstants.x,sc_ShaderCacheConstant);
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif // #elif defined FRAGMENT_SHADER // #if defined VERTEX_SHADER
