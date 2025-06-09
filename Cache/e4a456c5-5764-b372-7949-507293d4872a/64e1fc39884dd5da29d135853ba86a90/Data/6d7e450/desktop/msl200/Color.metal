#include <metal_stdlib>
#include <simd/simd.h>
using namespace metal;
#if 0
NGS_BACKEND_SHADER_FLAGS_BEGIN__
NGS_BACKEND_SHADER_FLAGS_END__
#endif
//efine SC_DISABLE_FRUSTUM_CULLING 1
#define SC_ENABLE_INSTANCED_RENDERING
namespace SNAP_VS {
int sc_GetStereoViewIndex()
{
    return 0;
}
}
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
    #ifndef sc_SampleTexture
        #define sc_SampleTexture sc_SampleTextureBiasOrLevel
    #endif
    #ifndef sc_texture2DLod
        #define sc_texture2DLod sc_InternalTextureLevel
        #define sc_textureLod sc_InternalTextureLevel
        #define sc_textureBias sc_InternalTextureBiasOrLevel
        #define sc_texture sc_InternalTexture
    #endif
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
//output vec4 FragColor0 0
//output vec4 FragColor1 1
//output vec4 FragColor2 2
//output vec4 FragColor3 3
//output uvec4 position_and_mask 0
//output uvec4 normal_and_more 1
//sampler sampler Tweak_N167SmpSC 0:25
//sampler sampler Tweak_N168SmpSC 0:26
//sampler sampler Tweak_N169SmpSC 0:27
//sampler sampler intensityTextureSmpSC 0:28
//sampler sampler sc_EnvmapDiffuseSmpSC 0:29
//sampler sampler sc_EnvmapSpecularSmpSC 0:30
//sampler sampler sc_RayTracedAoTextureSmpSC 0:32
//sampler sampler sc_RayTracedDiffIndTextureSmpSC 0:33
//sampler sampler sc_RayTracedReflectionTextureSmpSC 0:34
//sampler sampler sc_RayTracedShadowTextureSmpSC 0:35
//sampler sampler sc_SSAOTextureSmpSC 0:36
//sampler sampler sc_ScreenTextureSmpSC 0:37
//sampler sampler sc_ShadowTextureSmpSC 0:38
//sampler sampler transformPosRotTexSmpSC 0:40
//sampler sampler transformScaleTexSmpSC 0:41
//texture texture2D Tweak_N167 0:1:0:25
//texture texture2D Tweak_N168 0:2:0:26
//texture texture2D Tweak_N169 0:3:0:27
//texture texture2D intensityTexture 0:4:0:28
//texture texture2D sc_EnvmapDiffuse 0:5:0:29
//texture texture2D sc_EnvmapSpecular 0:6:0:30
//texture texture2D sc_RayTracedAoTexture 0:15:0:32
//texture texture2D sc_RayTracedDiffIndTexture 0:16:0:33
//texture texture2D sc_RayTracedReflectionTexture 0:17:0:34
//texture texture2D sc_RayTracedShadowTexture 0:18:0:35
//texture texture2D sc_SSAOTexture 0:19:0:36
//texture texture2D sc_ScreenTexture 0:20:0:37
//texture texture2D sc_ShadowTexture 0:21:0:38
//texture texture2D transformPosRotTex 0:23:0:40
//texture texture2D transformScaleTex 0:24:0:41
//ubo float sc_BonesUBO 0:0:96 {
//sc_Bone_t sc_Bones 0:[]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:42:5600 {
//sc_PointLight_t sc_PointLights 0:[3]:80
//bool sc_PointLights.falloffEnabled 0
//float sc_PointLights.falloffEndDistance 4
//float sc_PointLights.negRcpFalloffEndDistance4 8
//float sc_PointLights.angleScale 12
//float sc_PointLights.angleOffset 16
//float3 sc_PointLights.direction 32
//float3 sc_PointLights.position 48
//float4 sc_PointLights.color 64
//sc_DirectionalLight_t sc_DirectionalLights 240:[5]:32
//float3 sc_DirectionalLights.direction 0
//float4 sc_DirectionalLights.color 16
//sc_AmbientLight_t sc_AmbientLights 400:[3]:32
//float3 sc_AmbientLights.color 0
//float sc_AmbientLights.intensity 16
//sc_LightEstimationData_t sc_LightEstimationData 496
//sc_SphericalGaussianLight_t sc_LightEstimationData.sg 0:[12]:48
//float3 sc_LightEstimationData.sg.color 0
//float sc_LightEstimationData.sg.sharpness 16
//float3 sc_LightEstimationData.sg.axis 32
//float3 sc_LightEstimationData.ambientLight 576
//float4 sc_EnvmapDiffuseSize 1088
//float4 sc_EnvmapSpecularSize 1136
//float3 sc_EnvmapRotation 1184
//float sc_EnvmapExposure 1200
//float3 sc_Sh 1216:[9]:16
//float sc_ShIntensity 1360
//float4 sc_Time 1376
//float4 sc_UniformConstants 1392
//float4x4 sc_ViewProjectionMatrixArray 1680:[2]:64
//float4x4 sc_ModelViewMatrixArray 1936:[2]:64
//float4x4 sc_ProjectionMatrixArray 2384:[2]:64
//float4x4 sc_ProjectionMatrixInverseArray 2512:[2]:64
//float4x4 sc_ViewMatrixArray 2640:[2]:64
//float4x4 sc_PrevFrameViewProjectionMatrixArray 2896:[2]:64
//float4x4 sc_ModelMatrix 3024
//float4x4 sc_ModelMatrixInverse 3088
//float3x3 sc_NormalMatrix 3152
//float4x4 sc_PrevFrameModelMatrix 3248
//float4 sc_CurrentRenderTargetDims 3456
//sc_Camera_t sc_Camera 3472
//float3 sc_Camera.position 0
//float sc_Camera.aspect 16
//float2 sc_Camera.clipPlanes 24
//float sc_ShadowDensity 3504
//float4 sc_ShadowColor 3520
//float4x4 sc_ProjectorMatrix 3536
//float shaderComplexityValue 3604
//float4 weights0 3616
//float4 weights1 3632
//float4 sc_StereoClipPlanes 3664:[2]:16
//float _sc_framebufferFetchMarker 3700
//float2 sc_TAAJitterOffset 3704
//bool receivesRayTracedReflections 3824
//bool receivesRayTracedShadows 3828
//bool receivesRayTracedDiffuseIndirect 3832
//bool receivesRayTracedAo 3836
//float receiver_mask 4032
//float3 OriginNormalizationScale 4048
//float3 OriginNormalizationOffset 4080
//int receiverId 4096
//float correctedIntensity 4100
//float3x3 intensityTextureTransform 4160
//float4 intensityTextureUvMinMax 4208
//float4 intensityTextureBorderColor 4224
//int PreviewEnabled 4388
//float alphaTestThreshold 4396
//float3x3 transformPosRotTexTransform 4448
//float4 transformPosRotTexUvMinMax 4496
//float4 transformPosRotTexBorderColor 4512
//float maxInstanceCount 4528
//float minPos 4532
//float maxPos 4536
//float3x3 transformScaleTexTransform 4592
//float4 transformScaleTexUvMinMax 4640
//float4 transformScaleTexBorderColor 4656
//float minSca 4672
//float maxSca 4676
//float Tweak_N112 4680
//float Tweak_N110 4684
//float Tweak_N111 4688
//float minRot 4692
//float maxRot 4696
//float Tweak_N144 4700
//float Tweak_N142 4704
//float Tweak_N143 4708
//float3x3 Tweak_N167Transform 4768
//float4 Tweak_N167UvMinMax 4816
//float4 Tweak_N167BorderColor 4832
//float4 Tweak_N175 4848
//float Tweak_N17 4864
//float3x3 Tweak_N168Transform 4928
//float4 Tweak_N168UvMinMax 4976
//float4 Tweak_N168BorderColor 4992
//float3x3 Tweak_N169Transform 5056
//float4 Tweak_N169UvMinMax 5104
//float4 Tweak_N169BorderColor 5120
//float Port_Input1_N018 5136
//float Port_Value2_N051 5148
//float Port_Value2_N052 5168
//float Port_Value2_N014 5172
//float Port_Value4_N003 5176
//float Port_Value2_N028 5184
//float Port_RangeMinA_N040 5188
//float Port_RangeMaxA_N040 5192
//float Port_Input1_N011 5212
//float Port_Value1_N061 5216
//float Port_Input0_N179 5220
//float Port_Multiplier_N089 5232
//float Port_Value2_N019 5300
//float Port_Value2_N026 5320
//float Port_Input1_N037 5344
//float3 Port_Input0_N178 5376
//float Port_Value1_N162 5392
//float Port_Value3_N162 5416
//float Port_Input1_N083 5488
//float Port_Input1_N071 5536
//float4 Port_Default_N176 5552
//float3 Port_Emissive_N174 5568
//float3 Port_SpecularAO_N174 5584
//}
//spec_const bool BLEND_MODE_AVERAGE 0 0
//spec_const bool BLEND_MODE_BRIGHT 1 0
//spec_const bool BLEND_MODE_COLOR_BURN 2 0
//spec_const bool BLEND_MODE_COLOR_DODGE 3 0
//spec_const bool BLEND_MODE_COLOR 4 0
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
//spec_const bool SC_USE_CLAMP_TO_BORDER_Tweak_N167 31 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_Tweak_N168 32 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_Tweak_N169 33 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 34 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_transformPosRotTex 35 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_transformScaleTex 36 0
//spec_const bool SC_USE_UV_MIN_MAX_Tweak_N167 37 0
//spec_const bool SC_USE_UV_MIN_MAX_Tweak_N168 38 0
//spec_const bool SC_USE_UV_MIN_MAX_Tweak_N169 39 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 40 0
//spec_const bool SC_USE_UV_MIN_MAX_transformPosRotTex 41 0
//spec_const bool SC_USE_UV_MIN_MAX_transformScaleTex 42 0
//spec_const bool SC_USE_UV_TRANSFORM_Tweak_N167 43 0
//spec_const bool SC_USE_UV_TRANSFORM_Tweak_N168 44 0
//spec_const bool SC_USE_UV_TRANSFORM_Tweak_N169 45 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 46 0
//spec_const bool SC_USE_UV_TRANSFORM_transformPosRotTex 47 0
//spec_const bool SC_USE_UV_TRANSFORM_transformScaleTex 48 0
//spec_const bool Tweak_N163 49 0
//spec_const bool Tweak_N166 50 0
//spec_const bool Tweak_N167HasSwappedViews 51 0
//spec_const bool Tweak_N168HasSwappedViews 52 0
//spec_const bool Tweak_N169HasSwappedViews 53 0
//spec_const bool Tweak_N177 54 0
//spec_const bool Tweak_N45 55 0
//spec_const bool UseViewSpaceDepthVariant 56 1
//spec_const bool intensityTextureHasSwappedViews 57 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 58 0
//spec_const bool sc_BlendMode_Add 59 0
//spec_const bool sc_BlendMode_AlphaTest 60 0
//spec_const bool sc_BlendMode_AlphaToCoverage 61 0
//spec_const bool sc_BlendMode_ColoredGlass 62 0
//spec_const bool sc_BlendMode_Custom 63 0
//spec_const bool sc_BlendMode_Max 64 0
//spec_const bool sc_BlendMode_Min 65 0
//spec_const bool sc_BlendMode_MultiplyOriginal 66 0
//spec_const bool sc_BlendMode_Multiply 67 0
//spec_const bool sc_BlendMode_Normal 68 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 69 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 70 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 71 0
//spec_const bool sc_BlendMode_Screen 72 0
//spec_const bool sc_DepthOnly 73 0
//spec_const bool sc_EnvmapDiffuseHasSwappedViews 74 0
//spec_const bool sc_EnvmapSpecularHasSwappedViews 75 0
//spec_const bool sc_FramebufferFetch 76 0
//spec_const bool sc_HasDiffuseEnvmap 77 0
//spec_const bool sc_LightEstimation 78 0
//spec_const bool sc_MotionVectorsPass 79 0
//spec_const bool sc_OITCompositingPass 80 0
//spec_const bool sc_OITDepthBoundsPass 81 0
//spec_const bool sc_OITDepthGatherPass 82 0
//spec_const bool sc_ProjectiveShadowsCaster 83 0
//spec_const bool sc_ProjectiveShadowsReceiver 84 0
//spec_const bool sc_RayTracedAoTextureHasSwappedViews 85 0
//spec_const bool sc_RayTracedDiffIndTextureHasSwappedViews 86 0
//spec_const bool sc_RayTracedReflectionTextureHasSwappedViews 87 0
//spec_const bool sc_RayTracedShadowTextureHasSwappedViews 88 0
//spec_const bool sc_RenderAlphaToColor 89 0
//spec_const bool sc_SSAOEnabled 90 0
//spec_const bool sc_ScreenTextureHasSwappedViews 91 0
//spec_const bool sc_ShaderComplexityAnalyzer 92 0
//spec_const bool sc_TAAEnabled 93 0
//spec_const bool sc_UseFramebufferFetchMarker 94 0
//spec_const bool sc_VertexBlendingUseNormals 95 0
//spec_const bool sc_VertexBlending 96 0
//spec_const bool transformPosRotTexHasSwappedViews 97 0
//spec_const bool transformScaleTexHasSwappedViews 98 0
//spec_const int SC_DEVICE_CLASS 99 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_Tweak_N167 100 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_Tweak_N168 101 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_Tweak_N169 102 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 103 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex 104 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_transformScaleTex 105 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_Tweak_N167 106 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_Tweak_N168 107 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_Tweak_N169 108 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 109 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex 110 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_transformScaleTex 111 -1
//spec_const int Tweak_N167Layout 112 0
//spec_const int Tweak_N168Layout 113 0
//spec_const int Tweak_N169Layout 114 0
//spec_const int intensityTextureLayout 115 0
//spec_const int sc_AmbientLightMode0 116 0
//spec_const int sc_AmbientLightMode1 117 0
//spec_const int sc_AmbientLightMode2 118 0
//spec_const int sc_AmbientLightMode_Constant 119 0
//spec_const int sc_AmbientLightMode_EnvironmentMap 120 0
//spec_const int sc_AmbientLightMode_FromCamera 121 0
//spec_const int sc_AmbientLightMode_SphericalHarmonics 122 0
//spec_const int sc_AmbientLightsCount 123 0
//spec_const int sc_DepthBufferMode 124 0
//spec_const int sc_DirectionalLightsCount 125 0
//spec_const int sc_EnvLightMode 126 0
//spec_const int sc_EnvmapDiffuseLayout 127 0
//spec_const int sc_EnvmapSpecularLayout 128 0
//spec_const int sc_LightEstimationSGCount 129 0
//spec_const int sc_MaxTextureImageUnits 130 0
//spec_const int sc_PointLightsCount 131 0
//spec_const int sc_RayTracedAoTextureLayout 132 0
//spec_const int sc_RayTracedDiffIndTextureLayout 133 0
//spec_const int sc_RayTracedReflectionTextureLayout 134 0
//spec_const int sc_RayTracedShadowTextureLayout 135 0
//spec_const int sc_RenderingSpace 136 -1
//spec_const int sc_ScreenTextureLayout 137 0
//spec_const int sc_ShaderCacheConstant 138 0
//spec_const int sc_SkinBonesCount 139 0
//spec_const int sc_StereoRenderingMode 140 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 141 0
//spec_const int transformPosRotTexLayout 142 0
//spec_const int transformScaleTexLayout 143 0
//SG_REFLECTION_END
constant bool BLEND_MODE_AVERAGE [[function_constant(0)]];
constant bool BLEND_MODE_AVERAGE_tmp = is_function_constant_defined(BLEND_MODE_AVERAGE) ? BLEND_MODE_AVERAGE : false;
constant bool BLEND_MODE_BRIGHT [[function_constant(1)]];
constant bool BLEND_MODE_BRIGHT_tmp = is_function_constant_defined(BLEND_MODE_BRIGHT) ? BLEND_MODE_BRIGHT : false;
constant bool BLEND_MODE_COLOR_BURN [[function_constant(2)]];
constant bool BLEND_MODE_COLOR_BURN_tmp = is_function_constant_defined(BLEND_MODE_COLOR_BURN) ? BLEND_MODE_COLOR_BURN : false;
constant bool BLEND_MODE_COLOR_DODGE [[function_constant(3)]];
constant bool BLEND_MODE_COLOR_DODGE_tmp = is_function_constant_defined(BLEND_MODE_COLOR_DODGE) ? BLEND_MODE_COLOR_DODGE : false;
constant bool BLEND_MODE_COLOR [[function_constant(4)]];
constant bool BLEND_MODE_COLOR_tmp = is_function_constant_defined(BLEND_MODE_COLOR) ? BLEND_MODE_COLOR : false;
constant bool BLEND_MODE_DARKEN [[function_constant(5)]];
constant bool BLEND_MODE_DARKEN_tmp = is_function_constant_defined(BLEND_MODE_DARKEN) ? BLEND_MODE_DARKEN : false;
constant bool BLEND_MODE_DIFFERENCE [[function_constant(6)]];
constant bool BLEND_MODE_DIFFERENCE_tmp = is_function_constant_defined(BLEND_MODE_DIFFERENCE) ? BLEND_MODE_DIFFERENCE : false;
constant bool BLEND_MODE_DIVIDE [[function_constant(7)]];
constant bool BLEND_MODE_DIVIDE_tmp = is_function_constant_defined(BLEND_MODE_DIVIDE) ? BLEND_MODE_DIVIDE : false;
constant bool BLEND_MODE_DIVISION [[function_constant(8)]];
constant bool BLEND_MODE_DIVISION_tmp = is_function_constant_defined(BLEND_MODE_DIVISION) ? BLEND_MODE_DIVISION : false;
constant bool BLEND_MODE_EXCLUSION [[function_constant(9)]];
constant bool BLEND_MODE_EXCLUSION_tmp = is_function_constant_defined(BLEND_MODE_EXCLUSION) ? BLEND_MODE_EXCLUSION : false;
constant bool BLEND_MODE_FORGRAY [[function_constant(10)]];
constant bool BLEND_MODE_FORGRAY_tmp = is_function_constant_defined(BLEND_MODE_FORGRAY) ? BLEND_MODE_FORGRAY : false;
constant bool BLEND_MODE_HARD_GLOW [[function_constant(11)]];
constant bool BLEND_MODE_HARD_GLOW_tmp = is_function_constant_defined(BLEND_MODE_HARD_GLOW) ? BLEND_MODE_HARD_GLOW : false;
constant bool BLEND_MODE_HARD_LIGHT [[function_constant(12)]];
constant bool BLEND_MODE_HARD_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_HARD_LIGHT) ? BLEND_MODE_HARD_LIGHT : false;
constant bool BLEND_MODE_HARD_MIX [[function_constant(13)]];
constant bool BLEND_MODE_HARD_MIX_tmp = is_function_constant_defined(BLEND_MODE_HARD_MIX) ? BLEND_MODE_HARD_MIX : false;
constant bool BLEND_MODE_HARD_PHOENIX [[function_constant(14)]];
constant bool BLEND_MODE_HARD_PHOENIX_tmp = is_function_constant_defined(BLEND_MODE_HARD_PHOENIX) ? BLEND_MODE_HARD_PHOENIX : false;
constant bool BLEND_MODE_HARD_REFLECT [[function_constant(15)]];
constant bool BLEND_MODE_HARD_REFLECT_tmp = is_function_constant_defined(BLEND_MODE_HARD_REFLECT) ? BLEND_MODE_HARD_REFLECT : false;
constant bool BLEND_MODE_HUE [[function_constant(16)]];
constant bool BLEND_MODE_HUE_tmp = is_function_constant_defined(BLEND_MODE_HUE) ? BLEND_MODE_HUE : false;
constant bool BLEND_MODE_INTENSE [[function_constant(17)]];
constant bool BLEND_MODE_INTENSE_tmp = is_function_constant_defined(BLEND_MODE_INTENSE) ? BLEND_MODE_INTENSE : false;
constant bool BLEND_MODE_LIGHTEN [[function_constant(18)]];
constant bool BLEND_MODE_LIGHTEN_tmp = is_function_constant_defined(BLEND_MODE_LIGHTEN) ? BLEND_MODE_LIGHTEN : false;
constant bool BLEND_MODE_LINEAR_LIGHT [[function_constant(19)]];
constant bool BLEND_MODE_LINEAR_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_LINEAR_LIGHT) ? BLEND_MODE_LINEAR_LIGHT : false;
constant bool BLEND_MODE_LUMINOSITY [[function_constant(20)]];
constant bool BLEND_MODE_LUMINOSITY_tmp = is_function_constant_defined(BLEND_MODE_LUMINOSITY) ? BLEND_MODE_LUMINOSITY : false;
constant bool BLEND_MODE_NEGATION [[function_constant(21)]];
constant bool BLEND_MODE_NEGATION_tmp = is_function_constant_defined(BLEND_MODE_NEGATION) ? BLEND_MODE_NEGATION : false;
constant bool BLEND_MODE_NOTBRIGHT [[function_constant(22)]];
constant bool BLEND_MODE_NOTBRIGHT_tmp = is_function_constant_defined(BLEND_MODE_NOTBRIGHT) ? BLEND_MODE_NOTBRIGHT : false;
constant bool BLEND_MODE_OVERLAY [[function_constant(23)]];
constant bool BLEND_MODE_OVERLAY_tmp = is_function_constant_defined(BLEND_MODE_OVERLAY) ? BLEND_MODE_OVERLAY : false;
constant bool BLEND_MODE_PIN_LIGHT [[function_constant(24)]];
constant bool BLEND_MODE_PIN_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_PIN_LIGHT) ? BLEND_MODE_PIN_LIGHT : false;
constant bool BLEND_MODE_REALISTIC [[function_constant(25)]];
constant bool BLEND_MODE_REALISTIC_tmp = is_function_constant_defined(BLEND_MODE_REALISTIC) ? BLEND_MODE_REALISTIC : false;
constant bool BLEND_MODE_SATURATION [[function_constant(26)]];
constant bool BLEND_MODE_SATURATION_tmp = is_function_constant_defined(BLEND_MODE_SATURATION) ? BLEND_MODE_SATURATION : false;
constant bool BLEND_MODE_SOFT_LIGHT [[function_constant(27)]];
constant bool BLEND_MODE_SOFT_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_SOFT_LIGHT) ? BLEND_MODE_SOFT_LIGHT : false;
constant bool BLEND_MODE_SUBTRACT [[function_constant(28)]];
constant bool BLEND_MODE_SUBTRACT_tmp = is_function_constant_defined(BLEND_MODE_SUBTRACT) ? BLEND_MODE_SUBTRACT : false;
constant bool BLEND_MODE_VIVID_LIGHT [[function_constant(29)]];
constant bool BLEND_MODE_VIVID_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_VIVID_LIGHT) ? BLEND_MODE_VIVID_LIGHT : false;
constant bool ENABLE_STIPPLE_PATTERN_TEST [[function_constant(30)]];
constant bool ENABLE_STIPPLE_PATTERN_TEST_tmp = is_function_constant_defined(ENABLE_STIPPLE_PATTERN_TEST) ? ENABLE_STIPPLE_PATTERN_TEST : false;
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N167 [[function_constant(31)]];
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N167_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_Tweak_N167) ? SC_USE_CLAMP_TO_BORDER_Tweak_N167 : false;
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N168 [[function_constant(32)]];
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N168_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_Tweak_N168) ? SC_USE_CLAMP_TO_BORDER_Tweak_N168 : false;
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N169 [[function_constant(33)]];
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N169_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_Tweak_N169) ? SC_USE_CLAMP_TO_BORDER_Tweak_N169 : false;
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(34)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_transformPosRotTex [[function_constant(35)]];
constant bool SC_USE_CLAMP_TO_BORDER_transformPosRotTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_transformPosRotTex) ? SC_USE_CLAMP_TO_BORDER_transformPosRotTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_transformScaleTex [[function_constant(36)]];
constant bool SC_USE_CLAMP_TO_BORDER_transformScaleTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_transformScaleTex) ? SC_USE_CLAMP_TO_BORDER_transformScaleTex : false;
constant bool SC_USE_UV_MIN_MAX_Tweak_N167 [[function_constant(37)]];
constant bool SC_USE_UV_MIN_MAX_Tweak_N167_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_Tweak_N167) ? SC_USE_UV_MIN_MAX_Tweak_N167 : false;
constant bool SC_USE_UV_MIN_MAX_Tweak_N168 [[function_constant(38)]];
constant bool SC_USE_UV_MIN_MAX_Tweak_N168_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_Tweak_N168) ? SC_USE_UV_MIN_MAX_Tweak_N168 : false;
constant bool SC_USE_UV_MIN_MAX_Tweak_N169 [[function_constant(39)]];
constant bool SC_USE_UV_MIN_MAX_Tweak_N169_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_Tweak_N169) ? SC_USE_UV_MIN_MAX_Tweak_N169 : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(40)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_transformPosRotTex [[function_constant(41)]];
constant bool SC_USE_UV_MIN_MAX_transformPosRotTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_transformPosRotTex) ? SC_USE_UV_MIN_MAX_transformPosRotTex : false;
constant bool SC_USE_UV_MIN_MAX_transformScaleTex [[function_constant(42)]];
constant bool SC_USE_UV_MIN_MAX_transformScaleTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_transformScaleTex) ? SC_USE_UV_MIN_MAX_transformScaleTex : false;
constant bool SC_USE_UV_TRANSFORM_Tweak_N167 [[function_constant(43)]];
constant bool SC_USE_UV_TRANSFORM_Tweak_N167_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_Tweak_N167) ? SC_USE_UV_TRANSFORM_Tweak_N167 : false;
constant bool SC_USE_UV_TRANSFORM_Tweak_N168 [[function_constant(44)]];
constant bool SC_USE_UV_TRANSFORM_Tweak_N168_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_Tweak_N168) ? SC_USE_UV_TRANSFORM_Tweak_N168 : false;
constant bool SC_USE_UV_TRANSFORM_Tweak_N169 [[function_constant(45)]];
constant bool SC_USE_UV_TRANSFORM_Tweak_N169_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_Tweak_N169) ? SC_USE_UV_TRANSFORM_Tweak_N169 : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(46)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_transformPosRotTex [[function_constant(47)]];
constant bool SC_USE_UV_TRANSFORM_transformPosRotTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_transformPosRotTex) ? SC_USE_UV_TRANSFORM_transformPosRotTex : false;
constant bool SC_USE_UV_TRANSFORM_transformScaleTex [[function_constant(48)]];
constant bool SC_USE_UV_TRANSFORM_transformScaleTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_transformScaleTex) ? SC_USE_UV_TRANSFORM_transformScaleTex : false;
constant bool Tweak_N163 [[function_constant(49)]];
constant bool Tweak_N163_tmp = is_function_constant_defined(Tweak_N163) ? Tweak_N163 : false;
constant bool Tweak_N166 [[function_constant(50)]];
constant bool Tweak_N166_tmp = is_function_constant_defined(Tweak_N166) ? Tweak_N166 : false;
constant bool Tweak_N167HasSwappedViews [[function_constant(51)]];
constant bool Tweak_N167HasSwappedViews_tmp = is_function_constant_defined(Tweak_N167HasSwappedViews) ? Tweak_N167HasSwappedViews : false;
constant bool Tweak_N168HasSwappedViews [[function_constant(52)]];
constant bool Tweak_N168HasSwappedViews_tmp = is_function_constant_defined(Tweak_N168HasSwappedViews) ? Tweak_N168HasSwappedViews : false;
constant bool Tweak_N169HasSwappedViews [[function_constant(53)]];
constant bool Tweak_N169HasSwappedViews_tmp = is_function_constant_defined(Tweak_N169HasSwappedViews) ? Tweak_N169HasSwappedViews : false;
constant bool Tweak_N177 [[function_constant(54)]];
constant bool Tweak_N177_tmp = is_function_constant_defined(Tweak_N177) ? Tweak_N177 : false;
constant bool Tweak_N45 [[function_constant(55)]];
constant bool Tweak_N45_tmp = is_function_constant_defined(Tweak_N45) ? Tweak_N45 : false;
constant bool UseViewSpaceDepthVariant [[function_constant(56)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool intensityTextureHasSwappedViews [[function_constant(57)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(58)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(59)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(60)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(61)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(62)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(63)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(64)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(65)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(66)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(67)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(68)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(69)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(70)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(71)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(72)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(73)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_EnvmapDiffuseHasSwappedViews [[function_constant(74)]];
constant bool sc_EnvmapDiffuseHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapDiffuseHasSwappedViews) ? sc_EnvmapDiffuseHasSwappedViews : false;
constant bool sc_EnvmapSpecularHasSwappedViews [[function_constant(75)]];
constant bool sc_EnvmapSpecularHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapSpecularHasSwappedViews) ? sc_EnvmapSpecularHasSwappedViews : false;
constant bool sc_FramebufferFetch [[function_constant(76)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_HasDiffuseEnvmap [[function_constant(77)]];
constant bool sc_HasDiffuseEnvmap_tmp = is_function_constant_defined(sc_HasDiffuseEnvmap) ? sc_HasDiffuseEnvmap : false;
constant bool sc_LightEstimation [[function_constant(78)]];
constant bool sc_LightEstimation_tmp = is_function_constant_defined(sc_LightEstimation) ? sc_LightEstimation : false;
constant bool sc_MotionVectorsPass [[function_constant(79)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(80)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(81)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(82)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(83)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(84)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_RayTracedAoTextureHasSwappedViews [[function_constant(85)]];
constant bool sc_RayTracedAoTextureHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracedAoTextureHasSwappedViews) ? sc_RayTracedAoTextureHasSwappedViews : false;
constant bool sc_RayTracedDiffIndTextureHasSwappedViews [[function_constant(86)]];
constant bool sc_RayTracedDiffIndTextureHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracedDiffIndTextureHasSwappedViews) ? sc_RayTracedDiffIndTextureHasSwappedViews : false;
constant bool sc_RayTracedReflectionTextureHasSwappedViews [[function_constant(87)]];
constant bool sc_RayTracedReflectionTextureHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracedReflectionTextureHasSwappedViews) ? sc_RayTracedReflectionTextureHasSwappedViews : false;
constant bool sc_RayTracedShadowTextureHasSwappedViews [[function_constant(88)]];
constant bool sc_RayTracedShadowTextureHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracedShadowTextureHasSwappedViews) ? sc_RayTracedShadowTextureHasSwappedViews : false;
constant bool sc_RenderAlphaToColor [[function_constant(89)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_SSAOEnabled [[function_constant(90)]];
constant bool sc_SSAOEnabled_tmp = is_function_constant_defined(sc_SSAOEnabled) ? sc_SSAOEnabled : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(91)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_ShaderComplexityAnalyzer [[function_constant(92)]];
constant bool sc_ShaderComplexityAnalyzer_tmp = is_function_constant_defined(sc_ShaderComplexityAnalyzer) ? sc_ShaderComplexityAnalyzer : false;
constant bool sc_TAAEnabled [[function_constant(93)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_UseFramebufferFetchMarker [[function_constant(94)]];
constant bool sc_UseFramebufferFetchMarker_tmp = is_function_constant_defined(sc_UseFramebufferFetchMarker) ? sc_UseFramebufferFetchMarker : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(95)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(96)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant bool transformPosRotTexHasSwappedViews [[function_constant(97)]];
constant bool transformPosRotTexHasSwappedViews_tmp = is_function_constant_defined(transformPosRotTexHasSwappedViews) ? transformPosRotTexHasSwappedViews : false;
constant bool transformScaleTexHasSwappedViews [[function_constant(98)]];
constant bool transformScaleTexHasSwappedViews_tmp = is_function_constant_defined(transformScaleTexHasSwappedViews) ? transformScaleTexHasSwappedViews : false;
constant int SC_DEVICE_CLASS [[function_constant(99)]];
constant int SC_DEVICE_CLASS_tmp = is_function_constant_defined(SC_DEVICE_CLASS) ? SC_DEVICE_CLASS : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N167 [[function_constant(100)]];
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N167_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_Tweak_N167) ? SC_SOFTWARE_WRAP_MODE_U_Tweak_N167 : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N168 [[function_constant(101)]];
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N168_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_Tweak_N168) ? SC_SOFTWARE_WRAP_MODE_U_Tweak_N168 : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N169 [[function_constant(102)]];
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N169_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_Tweak_N169) ? SC_SOFTWARE_WRAP_MODE_U_Tweak_N169 : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(103)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex [[function_constant(104)]];
constant int SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex) ? SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_transformScaleTex [[function_constant(105)]];
constant int SC_SOFTWARE_WRAP_MODE_U_transformScaleTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_transformScaleTex) ? SC_SOFTWARE_WRAP_MODE_U_transformScaleTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N167 [[function_constant(106)]];
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N167_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_Tweak_N167) ? SC_SOFTWARE_WRAP_MODE_V_Tweak_N167 : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N168 [[function_constant(107)]];
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N168_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_Tweak_N168) ? SC_SOFTWARE_WRAP_MODE_V_Tweak_N168 : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N169 [[function_constant(108)]];
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N169_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_Tweak_N169) ? SC_SOFTWARE_WRAP_MODE_V_Tweak_N169 : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(109)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex [[function_constant(110)]];
constant int SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex) ? SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_transformScaleTex [[function_constant(111)]];
constant int SC_SOFTWARE_WRAP_MODE_V_transformScaleTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_transformScaleTex) ? SC_SOFTWARE_WRAP_MODE_V_transformScaleTex : -1;
constant int Tweak_N167Layout [[function_constant(112)]];
constant int Tweak_N167Layout_tmp = is_function_constant_defined(Tweak_N167Layout) ? Tweak_N167Layout : 0;
constant int Tweak_N168Layout [[function_constant(113)]];
constant int Tweak_N168Layout_tmp = is_function_constant_defined(Tweak_N168Layout) ? Tweak_N168Layout : 0;
constant int Tweak_N169Layout [[function_constant(114)]];
constant int Tweak_N169Layout_tmp = is_function_constant_defined(Tweak_N169Layout) ? Tweak_N169Layout : 0;
constant int intensityTextureLayout [[function_constant(115)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int sc_AmbientLightMode0 [[function_constant(116)]];
constant int sc_AmbientLightMode0_tmp = is_function_constant_defined(sc_AmbientLightMode0) ? sc_AmbientLightMode0 : 0;
constant int sc_AmbientLightMode1 [[function_constant(117)]];
constant int sc_AmbientLightMode1_tmp = is_function_constant_defined(sc_AmbientLightMode1) ? sc_AmbientLightMode1 : 0;
constant int sc_AmbientLightMode2 [[function_constant(118)]];
constant int sc_AmbientLightMode2_tmp = is_function_constant_defined(sc_AmbientLightMode2) ? sc_AmbientLightMode2 : 0;
constant int sc_AmbientLightMode_Constant [[function_constant(119)]];
constant int sc_AmbientLightMode_Constant_tmp = is_function_constant_defined(sc_AmbientLightMode_Constant) ? sc_AmbientLightMode_Constant : 0;
constant int sc_AmbientLightMode_EnvironmentMap [[function_constant(120)]];
constant int sc_AmbientLightMode_EnvironmentMap_tmp = is_function_constant_defined(sc_AmbientLightMode_EnvironmentMap) ? sc_AmbientLightMode_EnvironmentMap : 0;
constant int sc_AmbientLightMode_FromCamera [[function_constant(121)]];
constant int sc_AmbientLightMode_FromCamera_tmp = is_function_constant_defined(sc_AmbientLightMode_FromCamera) ? sc_AmbientLightMode_FromCamera : 0;
constant int sc_AmbientLightMode_SphericalHarmonics [[function_constant(122)]];
constant int sc_AmbientLightMode_SphericalHarmonics_tmp = is_function_constant_defined(sc_AmbientLightMode_SphericalHarmonics) ? sc_AmbientLightMode_SphericalHarmonics : 0;
constant int sc_AmbientLightsCount [[function_constant(123)]];
constant int sc_AmbientLightsCount_tmp = is_function_constant_defined(sc_AmbientLightsCount) ? sc_AmbientLightsCount : 0;
constant int sc_DepthBufferMode [[function_constant(124)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_DirectionalLightsCount [[function_constant(125)]];
constant int sc_DirectionalLightsCount_tmp = is_function_constant_defined(sc_DirectionalLightsCount) ? sc_DirectionalLightsCount : 0;
constant int sc_EnvLightMode [[function_constant(126)]];
constant int sc_EnvLightMode_tmp = is_function_constant_defined(sc_EnvLightMode) ? sc_EnvLightMode : 0;
constant int sc_EnvmapDiffuseLayout [[function_constant(127)]];
constant int sc_EnvmapDiffuseLayout_tmp = is_function_constant_defined(sc_EnvmapDiffuseLayout) ? sc_EnvmapDiffuseLayout : 0;
constant int sc_EnvmapSpecularLayout [[function_constant(128)]];
constant int sc_EnvmapSpecularLayout_tmp = is_function_constant_defined(sc_EnvmapSpecularLayout) ? sc_EnvmapSpecularLayout : 0;
constant int sc_LightEstimationSGCount [[function_constant(129)]];
constant int sc_LightEstimationSGCount_tmp = is_function_constant_defined(sc_LightEstimationSGCount) ? sc_LightEstimationSGCount : 0;
constant int sc_MaxTextureImageUnits [[function_constant(130)]];
constant int sc_MaxTextureImageUnits_tmp = is_function_constant_defined(sc_MaxTextureImageUnits) ? sc_MaxTextureImageUnits : 0;
constant int sc_PointLightsCount [[function_constant(131)]];
constant int sc_PointLightsCount_tmp = is_function_constant_defined(sc_PointLightsCount) ? sc_PointLightsCount : 0;
constant int sc_RayTracedAoTextureLayout [[function_constant(132)]];
constant int sc_RayTracedAoTextureLayout_tmp = is_function_constant_defined(sc_RayTracedAoTextureLayout) ? sc_RayTracedAoTextureLayout : 0;
constant int sc_RayTracedDiffIndTextureLayout [[function_constant(133)]];
constant int sc_RayTracedDiffIndTextureLayout_tmp = is_function_constant_defined(sc_RayTracedDiffIndTextureLayout) ? sc_RayTracedDiffIndTextureLayout : 0;
constant int sc_RayTracedReflectionTextureLayout [[function_constant(134)]];
constant int sc_RayTracedReflectionTextureLayout_tmp = is_function_constant_defined(sc_RayTracedReflectionTextureLayout) ? sc_RayTracedReflectionTextureLayout : 0;
constant int sc_RayTracedShadowTextureLayout [[function_constant(135)]];
constant int sc_RayTracedShadowTextureLayout_tmp = is_function_constant_defined(sc_RayTracedShadowTextureLayout) ? sc_RayTracedShadowTextureLayout : 0;
constant int sc_RenderingSpace [[function_constant(136)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(137)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(138)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(139)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(140)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(141)]];
constant int sc_StereoRendering_IsClipDistanceEnabled_tmp = is_function_constant_defined(sc_StereoRendering_IsClipDistanceEnabled) ? sc_StereoRendering_IsClipDistanceEnabled : 0;
constant int transformPosRotTexLayout [[function_constant(142)]];
constant int transformPosRotTexLayout_tmp = is_function_constant_defined(transformPosRotTexLayout) ? transformPosRotTexLayout : 0;
constant int transformScaleTexLayout [[function_constant(143)]];
constant int transformScaleTexLayout_tmp = is_function_constant_defined(transformScaleTexLayout) ? transformScaleTexLayout : 0;

namespace SNAP_VS {
struct sc_Vertex_t
{
float4 position;
float3 normal;
float3 tangent;
float2 texture0;
float2 texture1;
};
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float3 SurfacePosition_ObjectSpace;
float3 VertexNormal_WorldSpace;
float3 VertexTangent_WorldSpace;
float3 VertexTangent_ObjectSpace;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
float4 sc_CurrentRenderTargetDims;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float _sc_GetFramebufferColorInvalidUsageMarker;
float shaderComplexityValue;
float sc_DisableFrustumCullingMarker;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float _sc_framebufferFetchMarker;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
int receivesRayTracedReflections;
int receivesRayTracedShadows;
int receivesRayTracedDiffuseIndirect;
int receivesRayTracedAo;
float4 sc_RayTracedReflectionTextureSize;
float4 sc_RayTracedReflectionTextureDims;
float4 sc_RayTracedReflectionTextureView;
float4 sc_RayTracedShadowTextureSize;
float4 sc_RayTracedShadowTextureDims;
float4 sc_RayTracedShadowTextureView;
float4 sc_RayTracedDiffIndTextureSize;
float4 sc_RayTracedDiffIndTextureDims;
float4 sc_RayTracedDiffIndTextureView;
float4 sc_RayTracedAoTextureSize;
float4 sc_RayTracedAoTextureDims;
float4 sc_RayTracedAoTextureView;
float receiver_mask;
float3 OriginNormalizationScale;
float3 OriginNormalizationScaleInv;
float3 OriginNormalizationOffset;
int receiverId;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed[32];
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float4 transformPosRotTexSize;
float4 transformPosRotTexDims;
float4 transformPosRotTexView;
float3x3 transformPosRotTexTransform;
float4 transformPosRotTexUvMinMax;
float4 transformPosRotTexBorderColor;
float maxInstanceCount;
float minPos;
float maxPos;
float4 transformScaleTexSize;
float4 transformScaleTexDims;
float4 transformScaleTexView;
float3x3 transformScaleTexTransform;
float4 transformScaleTexUvMinMax;
float4 transformScaleTexBorderColor;
float minSca;
float maxSca;
float Tweak_N112;
float Tweak_N110;
float Tweak_N111;
float minRot;
float maxRot;
float Tweak_N144;
float Tweak_N142;
float Tweak_N143;
float4 Tweak_N167Size;
float4 Tweak_N167Dims;
float4 Tweak_N167View;
float3x3 Tweak_N167Transform;
float4 Tweak_N167UvMinMax;
float4 Tweak_N167BorderColor;
float4 Tweak_N175;
float Tweak_N17;
float4 Tweak_N168Size;
float4 Tweak_N168Dims;
float4 Tweak_N168View;
float3x3 Tweak_N168Transform;
float4 Tweak_N168UvMinMax;
float4 Tweak_N168BorderColor;
float4 Tweak_N169Size;
float4 Tweak_N169Dims;
float4 Tweak_N169View;
float3x3 Tweak_N169Transform;
float4 Tweak_N169UvMinMax;
float4 Tweak_N169BorderColor;
float Port_Input1_N018;
float Port_Import_N125;
float Port_Import_N094;
float Port_Value2_N051;
float Port_Import_N115;
float Port_Import_N091;
float Port_Import_N116;
float Port_Import_N092;
float Port_Value2_N052;
float Port_Value2_N014;
float Port_Value4_N003;
float Port_Import_N109;
float Port_Value2_N028;
float Port_RangeMinA_N040;
float Port_RangeMaxA_N040;
float Port_Import_N119;
float Port_Import_N106;
float Port_Import_N120;
float Port_Import_N107;
float Port_Input1_N011;
float Port_Value1_N061;
float Port_Input0_N179;
float Port_Import_N127;
float Port_Import_N128;
float Port_Multiplier_N089;
float Port_Import_N130;
float Port_Import_N131;
float Port_Import_N135;
float Port_Import_N158;
float Port_Import_N140;
float3 Port_Import_N096;
float3 Port_Import_N039;
float Port_Import_N100;
float Port_Value2_N019;
float Port_Import_N121;
float Port_Import_N101;
float Port_Import_N122;
float Port_Import_N102;
float Port_Value2_N026;
float4 Port_Import_N041;
float Port_Input1_N037;
float3 Port_Import_N090;
float3 Port_Input0_N178;
float Port_Value1_N162;
float Port_Import_N146;
float Port_Import_N147;
float Port_Import_N149;
float Port_Import_N150;
float Port_Import_N154;
float Port_Value3_N162;
float3 Port_Import_N161;
float3 Port_Import_N160;
float3 Port_Import_N075;
float4 Port_Import_N076;
float Port_Input1_N083;
float3 Port_Import_N063;
float4 Port_Import_N064;
float Port_Input1_N071;
float4 Port_Default_N176;
float3 Port_Emissive_N174;
float3 Port_SpecularAO_N174;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct ssPreviewInfo
{
float4 Color;
bool Saved;
};
struct sc_Set0
{
constant sc_Bones_obj* sc_BonesUBO [[id(0)]];
texture2d<float> Tweak_N167 [[id(1)]];
texture2d<float> Tweak_N168 [[id(2)]];
texture2d<float> Tweak_N169 [[id(3)]];
texture2d<float> intensityTexture [[id(4)]];
texture2d<float> sc_EnvmapDiffuse [[id(5)]];
texture2d<float> sc_EnvmapSpecular [[id(6)]];
texture2d<float> sc_RayTracedAoTexture [[id(15)]];
texture2d<float> sc_RayTracedDiffIndTexture [[id(16)]];
texture2d<float> sc_RayTracedReflectionTexture [[id(17)]];
texture2d<float> sc_RayTracedShadowTexture [[id(18)]];
texture2d<float> sc_SSAOTexture [[id(19)]];
texture2d<float> sc_ScreenTexture [[id(20)]];
texture2d<float> sc_ShadowTexture [[id(21)]];
texture2d<float> transformPosRotTex [[id(23)]];
texture2d<float> transformScaleTex [[id(24)]];
sampler Tweak_N167SmpSC [[id(25)]];
sampler Tweak_N168SmpSC [[id(26)]];
sampler Tweak_N169SmpSC [[id(27)]];
sampler intensityTextureSmpSC [[id(28)]];
sampler sc_EnvmapDiffuseSmpSC [[id(29)]];
sampler sc_EnvmapSpecularSmpSC [[id(30)]];
sampler sc_RayTracedAoTextureSmpSC [[id(32)]];
sampler sc_RayTracedDiffIndTextureSmpSC [[id(33)]];
sampler sc_RayTracedReflectionTextureSmpSC [[id(34)]];
sampler sc_RayTracedShadowTextureSmpSC [[id(35)]];
sampler sc_SSAOTextureSmpSC [[id(36)]];
sampler sc_ScreenTextureSmpSC [[id(37)]];
sampler sc_ShadowTextureSmpSC [[id(38)]];
sampler transformPosRotTexSmpSC [[id(40)]];
sampler transformScaleTexSmpSC [[id(41)]];
constant userUniformsObj* UserUniforms [[id(42)]];
};
struct main_vert_out
{
float3 varPos [[user(locn0)]];
float3 varNormal [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varPackedTex [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
float4 gl_Position [[position]];
};
struct main_vert_in
{
float4 position [[attribute(0)]];
float3 normal [[attribute(1)]];
float4 tangent [[attribute(2)]];
float2 texture0 [[attribute(3)]];
float2 texture1 [[attribute(4)]];
float4 boneData [[attribute(5)]];
float3 blendShape0Pos [[attribute(6)]];
float3 blendShape1Pos [[attribute(7)]];
float3 blendShape2Pos [[attribute(8)]];
float3 blendShape3Pos [[attribute(9)]];
float3 blendShape4Pos [[attribute(10)]];
float3 blendShape5Pos [[attribute(11)]];
float3 blendShape0Normal [[attribute(12)]];
float3 blendShape1Normal [[attribute(13)]];
float3 blendShape2Normal [[attribute(14)]];
float3 positionNext [[attribute(15)]];
float3 positionPrevious [[attribute(16)]];
float4 strandProperties [[attribute(17)]];
float4 color [[attribute(18)]];
};
vertex main_vert_out main_vert(main_vert_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],uint gl_InstanceIndex [[instance_id]])
{
main_vert_out out={};
out.PreviewVertexColor=float4(0.5);
ssPreviewInfo PreviewInfo;
PreviewInfo.Color=float4(0.5);
PreviewInfo.Saved=false;
out.PreviewVertexSaved=0.0;
sc_Vertex_t l9_0;
l9_0.position=in.position;
l9_0.normal=in.normal;
l9_0.tangent=in.tangent.xyz;
l9_0.texture0=in.texture0;
l9_0.texture1=in.texture1;
sc_Vertex_t l9_1=l9_0;
sc_Vertex_t param=l9_1;
sc_Vertex_t l9_2=param;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_3=l9_2;
float3 l9_4=in.blendShape0Pos;
float3 l9_5=in.blendShape0Normal;
float l9_6=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_7=l9_3;
float3 l9_8=l9_4;
float l9_9=l9_6;
float3 l9_10=l9_7.position.xyz+(l9_8*l9_9);
l9_7.position=float4(l9_10.x,l9_10.y,l9_10.z,l9_7.position.w);
l9_3=l9_7;
l9_3.normal+=(l9_5*l9_6);
l9_2=l9_3;
sc_Vertex_t l9_11=l9_2;
float3 l9_12=in.blendShape1Pos;
float3 l9_13=in.blendShape1Normal;
float l9_14=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_15=l9_11;
float3 l9_16=l9_12;
float l9_17=l9_14;
float3 l9_18=l9_15.position.xyz+(l9_16*l9_17);
l9_15.position=float4(l9_18.x,l9_18.y,l9_18.z,l9_15.position.w);
l9_11=l9_15;
l9_11.normal+=(l9_13*l9_14);
l9_2=l9_11;
sc_Vertex_t l9_19=l9_2;
float3 l9_20=in.blendShape2Pos;
float3 l9_21=in.blendShape2Normal;
float l9_22=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_23=l9_19;
float3 l9_24=l9_20;
float l9_25=l9_22;
float3 l9_26=l9_23.position.xyz+(l9_24*l9_25);
l9_23.position=float4(l9_26.x,l9_26.y,l9_26.z,l9_23.position.w);
l9_19=l9_23;
l9_19.normal+=(l9_21*l9_22);
l9_2=l9_19;
}
else
{
sc_Vertex_t l9_27=l9_2;
float3 l9_28=in.blendShape0Pos;
float l9_29=(*sc_set0.UserUniforms).weights0.x;
float3 l9_30=l9_27.position.xyz+(l9_28*l9_29);
l9_27.position=float4(l9_30.x,l9_30.y,l9_30.z,l9_27.position.w);
l9_2=l9_27;
sc_Vertex_t l9_31=l9_2;
float3 l9_32=in.blendShape1Pos;
float l9_33=(*sc_set0.UserUniforms).weights0.y;
float3 l9_34=l9_31.position.xyz+(l9_32*l9_33);
l9_31.position=float4(l9_34.x,l9_34.y,l9_34.z,l9_31.position.w);
l9_2=l9_31;
sc_Vertex_t l9_35=l9_2;
float3 l9_36=in.blendShape2Pos;
float l9_37=(*sc_set0.UserUniforms).weights0.z;
float3 l9_38=l9_35.position.xyz+(l9_36*l9_37);
l9_35.position=float4(l9_38.x,l9_38.y,l9_38.z,l9_35.position.w);
l9_2=l9_35;
sc_Vertex_t l9_39=l9_2;
float3 l9_40=in.blendShape3Pos;
float l9_41=(*sc_set0.UserUniforms).weights0.w;
float3 l9_42=l9_39.position.xyz+(l9_40*l9_41);
l9_39.position=float4(l9_42.x,l9_42.y,l9_42.z,l9_39.position.w);
l9_2=l9_39;
sc_Vertex_t l9_43=l9_2;
float3 l9_44=in.blendShape4Pos;
float l9_45=(*sc_set0.UserUniforms).weights1.x;
float3 l9_46=l9_43.position.xyz+(l9_44*l9_45);
l9_43.position=float4(l9_46.x,l9_46.y,l9_46.z,l9_43.position.w);
l9_2=l9_43;
sc_Vertex_t l9_47=l9_2;
float3 l9_48=in.blendShape5Pos;
float l9_49=(*sc_set0.UserUniforms).weights1.y;
float3 l9_50=l9_47.position.xyz+(l9_48*l9_49);
l9_47.position=float4(l9_50.x,l9_50.y,l9_50.z,l9_47.position.w);
l9_2=l9_47;
}
}
param=l9_2;
sc_Vertex_t l9_51=param;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_52=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_52=float4(1.0,fract(in.boneData.yzw));
l9_52.x-=dot(l9_52.yzw,float3(1.0));
}
float4 l9_53=l9_52;
float4 l9_54=l9_53;
int l9_55=int(in.boneData.x);
int l9_56=int(in.boneData.y);
int l9_57=int(in.boneData.z);
int l9_58=int(in.boneData.w);
int l9_59=l9_55;
float4 l9_60=l9_51.position;
float3 l9_61=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_62=l9_59;
float4 l9_63=(*sc_set0.sc_BonesUBO).sc_Bones[l9_62].boneMatrix[0];
float4 l9_64=(*sc_set0.sc_BonesUBO).sc_Bones[l9_62].boneMatrix[1];
float4 l9_65=(*sc_set0.sc_BonesUBO).sc_Bones[l9_62].boneMatrix[2];
float4 l9_66[3];
l9_66[0]=l9_63;
l9_66[1]=l9_64;
l9_66[2]=l9_65;
l9_61=float3(dot(l9_60,l9_66[0]),dot(l9_60,l9_66[1]),dot(l9_60,l9_66[2]));
}
else
{
l9_61=l9_60.xyz;
}
float3 l9_67=l9_61;
float3 l9_68=l9_67;
float l9_69=l9_54.x;
int l9_70=l9_56;
float4 l9_71=l9_51.position;
float3 l9_72=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_73=l9_70;
float4 l9_74=(*sc_set0.sc_BonesUBO).sc_Bones[l9_73].boneMatrix[0];
float4 l9_75=(*sc_set0.sc_BonesUBO).sc_Bones[l9_73].boneMatrix[1];
float4 l9_76=(*sc_set0.sc_BonesUBO).sc_Bones[l9_73].boneMatrix[2];
float4 l9_77[3];
l9_77[0]=l9_74;
l9_77[1]=l9_75;
l9_77[2]=l9_76;
l9_72=float3(dot(l9_71,l9_77[0]),dot(l9_71,l9_77[1]),dot(l9_71,l9_77[2]));
}
else
{
l9_72=l9_71.xyz;
}
float3 l9_78=l9_72;
float3 l9_79=l9_78;
float l9_80=l9_54.y;
int l9_81=l9_57;
float4 l9_82=l9_51.position;
float3 l9_83=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_84=l9_81;
float4 l9_85=(*sc_set0.sc_BonesUBO).sc_Bones[l9_84].boneMatrix[0];
float4 l9_86=(*sc_set0.sc_BonesUBO).sc_Bones[l9_84].boneMatrix[1];
float4 l9_87=(*sc_set0.sc_BonesUBO).sc_Bones[l9_84].boneMatrix[2];
float4 l9_88[3];
l9_88[0]=l9_85;
l9_88[1]=l9_86;
l9_88[2]=l9_87;
l9_83=float3(dot(l9_82,l9_88[0]),dot(l9_82,l9_88[1]),dot(l9_82,l9_88[2]));
}
else
{
l9_83=l9_82.xyz;
}
float3 l9_89=l9_83;
float3 l9_90=l9_89;
float l9_91=l9_54.z;
int l9_92=l9_58;
float4 l9_93=l9_51.position;
float3 l9_94=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_95=l9_92;
float4 l9_96=(*sc_set0.sc_BonesUBO).sc_Bones[l9_95].boneMatrix[0];
float4 l9_97=(*sc_set0.sc_BonesUBO).sc_Bones[l9_95].boneMatrix[1];
float4 l9_98=(*sc_set0.sc_BonesUBO).sc_Bones[l9_95].boneMatrix[2];
float4 l9_99[3];
l9_99[0]=l9_96;
l9_99[1]=l9_97;
l9_99[2]=l9_98;
l9_94=float3(dot(l9_93,l9_99[0]),dot(l9_93,l9_99[1]),dot(l9_93,l9_99[2]));
}
else
{
l9_94=l9_93.xyz;
}
float3 l9_100=l9_94;
float3 l9_101=(((l9_68*l9_69)+(l9_79*l9_80))+(l9_90*l9_91))+(l9_100*l9_54.w);
l9_51.position=float4(l9_101.x,l9_101.y,l9_101.z,l9_51.position.w);
int l9_102=l9_55;
float3x3 l9_103=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_102].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_102].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_102].normalMatrix[2].xyz));
float3x3 l9_104=l9_103;
float3x3 l9_105=l9_104;
int l9_106=l9_56;
float3x3 l9_107=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_106].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_106].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_106].normalMatrix[2].xyz));
float3x3 l9_108=l9_107;
float3x3 l9_109=l9_108;
int l9_110=l9_57;
float3x3 l9_111=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_110].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_110].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_110].normalMatrix[2].xyz));
float3x3 l9_112=l9_111;
float3x3 l9_113=l9_112;
int l9_114=l9_58;
float3x3 l9_115=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_114].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_114].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_114].normalMatrix[2].xyz));
float3x3 l9_116=l9_115;
float3x3 l9_117=l9_116;
l9_51.normal=((((l9_105*l9_51.normal)*l9_54.x)+((l9_109*l9_51.normal)*l9_54.y))+((l9_113*l9_51.normal)*l9_54.z))+((l9_117*l9_51.normal)*l9_54.w);
l9_51.tangent=((((l9_105*l9_51.tangent)*l9_54.x)+((l9_109*l9_51.tangent)*l9_54.y))+((l9_113*l9_51.tangent)*l9_54.z))+((l9_117*l9_51.tangent)*l9_54.w);
}
param=l9_51;
if (sc_RenderingSpace_tmp==3)
{
out.varPos=float3(0.0);
out.varNormal=param.normal;
out.varTangent=float4(param.tangent.x,param.tangent.y,param.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==4)
{
out.varPos=float3(0.0);
out.varNormal=param.normal;
out.varTangent=float4(param.tangent.x,param.tangent.y,param.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
out.varPos=param.position.xyz;
out.varNormal=param.normal;
out.varTangent=float4(param.tangent.x,param.tangent.y,param.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
out.varPos=((*sc_set0.UserUniforms).sc_ModelMatrix*param.position).xyz;
out.varNormal=(*sc_set0.UserUniforms).sc_NormalMatrix*param.normal;
float3 l9_118=(*sc_set0.UserUniforms).sc_NormalMatrix*param.tangent;
out.varTangent=float4(l9_118.x,l9_118.y,l9_118.z,out.varTangent.w);
}
}
}
}
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
param.texture0.x=1.0-param.texture0.x;
}
out.varColor=in.color;
sc_Vertex_t v=param;
ssGlobals Globals;
Globals.gTimeElapsed=(*sc_set0.UserUniforms).sc_Time.x;
Globals.gTimeDelta=(*sc_set0.UserUniforms).sc_Time.y;
Globals.SurfacePosition_ObjectSpace=((*sc_set0.UserUniforms).sc_ModelMatrixInverse*float4(out.varPos,1.0)).xyz;
Globals.VertexNormal_WorldSpace=out.varNormal;
Globals.VertexTangent_WorldSpace=out.varTangent.xyz;
Globals.VertexTangent_ObjectSpace=((*sc_set0.UserUniforms).sc_ModelMatrixInverse*float4(Globals.VertexTangent_WorldSpace,0.0)).xyz;
float3 WorldPosition=out.varPos;
float3 WorldNormal=out.varNormal;
float3 WorldTangent=out.varTangent.xyz;
float InstanceID_N13=0.0;
int l9_119=gl_InstanceIndex;
InstanceID_N13=float(l9_119);
float Output_N18=0.0;
Output_N18=InstanceID_N13+(*sc_set0.UserUniforms).Port_Input1_N018;
float Output_N15=0.0;
float param_1=(*sc_set0.UserUniforms).maxInstanceCount;
Output_N15=param_1;
float Value_N125=0.0;
Value_N125=Output_N15;
float Output_N16=0.0;
Output_N16=Output_N18/(Value_N125+1.234e-06);
float Value_N94=0.0;
Value_N94=Output_N16;
float2 Value_N51=float2(0.0);
Value_N51.x=Value_N94;
Value_N51.y=(*sc_set0.UserUniforms).Port_Value2_N051;
float4 Color_N55=float4(0.0);
int l9_120=0;
if ((int(transformPosRotTexHasSwappedViews_tmp)!=0))
{
int l9_121=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_121=0;
}
else
{
l9_121=gl_InstanceIndex%2;
}
int l9_122=l9_121;
l9_120=1-l9_122;
}
else
{
int l9_123=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_123=0;
}
else
{
l9_123=gl_InstanceIndex%2;
}
int l9_124=l9_123;
l9_120=l9_124;
}
int l9_125=l9_120;
int param_2=transformPosRotTexLayout_tmp;
int param_3=l9_125;
float2 param_4=Value_N51;
bool param_5=(int(SC_USE_UV_TRANSFORM_transformPosRotTex_tmp)!=0);
float3x3 param_6=(*sc_set0.UserUniforms).transformPosRotTexTransform;
int2 param_7=int2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex_tmp,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex_tmp);
bool param_8=(int(SC_USE_UV_MIN_MAX_transformPosRotTex_tmp)!=0);
float4 param_9=(*sc_set0.UserUniforms).transformPosRotTexUvMinMax;
bool param_10=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex_tmp)!=0);
float4 param_11=(*sc_set0.UserUniforms).transformPosRotTexBorderColor;
float param_12=0.0;
bool l9_126=param_10&&(!param_8);
float l9_127=1.0;
float l9_128=param_4.x;
int l9_129=param_7.x;
if (l9_129==1)
{
l9_128=fract(l9_128);
}
else
{
if (l9_129==2)
{
float l9_130=fract(l9_128);
float l9_131=l9_128-l9_130;
float l9_132=step(0.25,fract(l9_131*0.5));
l9_128=mix(l9_130,1.0-l9_130,fast::clamp(l9_132,0.0,1.0));
}
}
param_4.x=l9_128;
float l9_133=param_4.y;
int l9_134=param_7.y;
if (l9_134==1)
{
l9_133=fract(l9_133);
}
else
{
if (l9_134==2)
{
float l9_135=fract(l9_133);
float l9_136=l9_133-l9_135;
float l9_137=step(0.25,fract(l9_136*0.5));
l9_133=mix(l9_135,1.0-l9_135,fast::clamp(l9_137,0.0,1.0));
}
}
param_4.y=l9_133;
if (param_8)
{
bool l9_138=param_10;
bool l9_139;
if (l9_138)
{
l9_139=param_7.x==3;
}
else
{
l9_139=l9_138;
}
float l9_140=param_4.x;
float l9_141=param_9.x;
float l9_142=param_9.z;
bool l9_143=l9_139;
float l9_144=l9_127;
float l9_145=fast::clamp(l9_140,l9_141,l9_142);
float l9_146=step(abs(l9_140-l9_145),9.9999997e-06);
l9_144*=(l9_146+((1.0-float(l9_143))*(1.0-l9_146)));
l9_140=l9_145;
param_4.x=l9_140;
l9_127=l9_144;
bool l9_147=param_10;
bool l9_148;
if (l9_147)
{
l9_148=param_7.y==3;
}
else
{
l9_148=l9_147;
}
float l9_149=param_4.y;
float l9_150=param_9.y;
float l9_151=param_9.w;
bool l9_152=l9_148;
float l9_153=l9_127;
float l9_154=fast::clamp(l9_149,l9_150,l9_151);
float l9_155=step(abs(l9_149-l9_154),9.9999997e-06);
l9_153*=(l9_155+((1.0-float(l9_152))*(1.0-l9_155)));
l9_149=l9_154;
param_4.y=l9_149;
l9_127=l9_153;
}
float2 l9_156=param_4;
bool l9_157=param_5;
float3x3 l9_158=param_6;
if (l9_157)
{
l9_156=float2((l9_158*float3(l9_156,1.0)).xy);
}
float2 l9_159=l9_156;
float2 l9_160=l9_159;
float2 l9_161=l9_160;
param_4=l9_161;
float l9_162=param_4.x;
int l9_163=param_7.x;
bool l9_164=l9_126;
float l9_165=l9_127;
if ((l9_163==0)||(l9_163==3))
{
float l9_166=l9_162;
float l9_167=0.0;
float l9_168=1.0;
bool l9_169=l9_164;
float l9_170=l9_165;
float l9_171=fast::clamp(l9_166,l9_167,l9_168);
float l9_172=step(abs(l9_166-l9_171),9.9999997e-06);
l9_170*=(l9_172+((1.0-float(l9_169))*(1.0-l9_172)));
l9_166=l9_171;
l9_162=l9_166;
l9_165=l9_170;
}
param_4.x=l9_162;
l9_127=l9_165;
float l9_173=param_4.y;
int l9_174=param_7.y;
bool l9_175=l9_126;
float l9_176=l9_127;
if ((l9_174==0)||(l9_174==3))
{
float l9_177=l9_173;
float l9_178=0.0;
float l9_179=1.0;
bool l9_180=l9_175;
float l9_181=l9_176;
float l9_182=fast::clamp(l9_177,l9_178,l9_179);
float l9_183=step(abs(l9_177-l9_182),9.9999997e-06);
l9_181*=(l9_183+((1.0-float(l9_180))*(1.0-l9_183)));
l9_177=l9_182;
l9_173=l9_177;
l9_176=l9_181;
}
param_4.y=l9_173;
l9_127=l9_176;
float2 l9_184=param_4;
int l9_185=param_2;
int l9_186=param_3;
float l9_187=param_12;
float2 l9_188=l9_184;
int l9_189=l9_185;
int l9_190=l9_186;
float3 l9_191=float3(0.0);
if (l9_189==0)
{
l9_191=float3(l9_188,0.0);
}
else
{
if (l9_189==1)
{
l9_191=float3(l9_188.x,(l9_188.y*0.5)+(0.5-(float(l9_190)*0.5)),0.0);
}
else
{
l9_191=float3(l9_188,float(l9_190));
}
}
float3 l9_192=l9_191;
float3 l9_193=l9_192;
float2 l9_194=l9_193.xy;
float l9_195=l9_187;
float4 l9_196=sc_set0.transformPosRotTex.sample(sc_set0.transformPosRotTexSmpSC,l9_194,level(l9_195));
float4 l9_197=l9_196;
float4 l9_198=l9_197;
if (param_10)
{
l9_198=mix(param_11,l9_198,float4(l9_127));
}
float4 l9_199=l9_198;
Color_N55=l9_199;
float Output_N56=0.0;
float param_13=(*sc_set0.UserUniforms).minPos;
Output_N56=param_13;
float Value_N115=0.0;
Value_N115=Output_N56;
float Value_N91=0.0;
Value_N91=Value_N115;
float Output_N57=0.0;
float param_14=(*sc_set0.UserUniforms).maxPos;
Output_N57=param_14;
float Value_N116=0.0;
Value_N116=Output_N57;
float Value_N92=0.0;
Value_N92=Value_N116;
float Value1_N50=0.0;
float4 param_15=Color_N55;
float param_16=Value_N91;
float param_17=Value_N92;
float param_18=0.99998999;
float4 l9_200=param_15;
#if (1)
{
l9_200=floor((l9_200*255.0)+float4(0.5))/float4(255.0);
}
#endif
float l9_201=dot(l9_200,float4(1.0,0.0039215689,1.53787e-05,6.0308629e-08));
float l9_202=l9_201;
float l9_203=0.0;
float l9_204=param_18;
float l9_205=param_16;
float l9_206=param_17;
float l9_207=l9_205+(((l9_202-l9_203)*(l9_206-l9_205))/(l9_204-l9_203));
float l9_208=l9_207;
Value1_N50=l9_208;
float2 Value_N52=float2(0.0);
Value_N52.x=Value_N94;
Value_N52.y=(*sc_set0.UserUniforms).Port_Value2_N052;
float4 Color_N54=float4(0.0);
int l9_209=0;
if ((int(transformPosRotTexHasSwappedViews_tmp)!=0))
{
int l9_210=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_210=0;
}
else
{
l9_210=gl_InstanceIndex%2;
}
int l9_211=l9_210;
l9_209=1-l9_211;
}
else
{
int l9_212=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_212=0;
}
else
{
l9_212=gl_InstanceIndex%2;
}
int l9_213=l9_212;
l9_209=l9_213;
}
int l9_214=l9_209;
int param_19=transformPosRotTexLayout_tmp;
int param_20=l9_214;
float2 param_21=Value_N52;
bool param_22=(int(SC_USE_UV_TRANSFORM_transformPosRotTex_tmp)!=0);
float3x3 param_23=(*sc_set0.UserUniforms).transformPosRotTexTransform;
int2 param_24=int2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex_tmp,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex_tmp);
bool param_25=(int(SC_USE_UV_MIN_MAX_transformPosRotTex_tmp)!=0);
float4 param_26=(*sc_set0.UserUniforms).transformPosRotTexUvMinMax;
bool param_27=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex_tmp)!=0);
float4 param_28=(*sc_set0.UserUniforms).transformPosRotTexBorderColor;
float param_29=0.0;
bool l9_215=param_27&&(!param_25);
float l9_216=1.0;
float l9_217=param_21.x;
int l9_218=param_24.x;
if (l9_218==1)
{
l9_217=fract(l9_217);
}
else
{
if (l9_218==2)
{
float l9_219=fract(l9_217);
float l9_220=l9_217-l9_219;
float l9_221=step(0.25,fract(l9_220*0.5));
l9_217=mix(l9_219,1.0-l9_219,fast::clamp(l9_221,0.0,1.0));
}
}
param_21.x=l9_217;
float l9_222=param_21.y;
int l9_223=param_24.y;
if (l9_223==1)
{
l9_222=fract(l9_222);
}
else
{
if (l9_223==2)
{
float l9_224=fract(l9_222);
float l9_225=l9_222-l9_224;
float l9_226=step(0.25,fract(l9_225*0.5));
l9_222=mix(l9_224,1.0-l9_224,fast::clamp(l9_226,0.0,1.0));
}
}
param_21.y=l9_222;
if (param_25)
{
bool l9_227=param_27;
bool l9_228;
if (l9_227)
{
l9_228=param_24.x==3;
}
else
{
l9_228=l9_227;
}
float l9_229=param_21.x;
float l9_230=param_26.x;
float l9_231=param_26.z;
bool l9_232=l9_228;
float l9_233=l9_216;
float l9_234=fast::clamp(l9_229,l9_230,l9_231);
float l9_235=step(abs(l9_229-l9_234),9.9999997e-06);
l9_233*=(l9_235+((1.0-float(l9_232))*(1.0-l9_235)));
l9_229=l9_234;
param_21.x=l9_229;
l9_216=l9_233;
bool l9_236=param_27;
bool l9_237;
if (l9_236)
{
l9_237=param_24.y==3;
}
else
{
l9_237=l9_236;
}
float l9_238=param_21.y;
float l9_239=param_26.y;
float l9_240=param_26.w;
bool l9_241=l9_237;
float l9_242=l9_216;
float l9_243=fast::clamp(l9_238,l9_239,l9_240);
float l9_244=step(abs(l9_238-l9_243),9.9999997e-06);
l9_242*=(l9_244+((1.0-float(l9_241))*(1.0-l9_244)));
l9_238=l9_243;
param_21.y=l9_238;
l9_216=l9_242;
}
float2 l9_245=param_21;
bool l9_246=param_22;
float3x3 l9_247=param_23;
if (l9_246)
{
l9_245=float2((l9_247*float3(l9_245,1.0)).xy);
}
float2 l9_248=l9_245;
float2 l9_249=l9_248;
float2 l9_250=l9_249;
param_21=l9_250;
float l9_251=param_21.x;
int l9_252=param_24.x;
bool l9_253=l9_215;
float l9_254=l9_216;
if ((l9_252==0)||(l9_252==3))
{
float l9_255=l9_251;
float l9_256=0.0;
float l9_257=1.0;
bool l9_258=l9_253;
float l9_259=l9_254;
float l9_260=fast::clamp(l9_255,l9_256,l9_257);
float l9_261=step(abs(l9_255-l9_260),9.9999997e-06);
l9_259*=(l9_261+((1.0-float(l9_258))*(1.0-l9_261)));
l9_255=l9_260;
l9_251=l9_255;
l9_254=l9_259;
}
param_21.x=l9_251;
l9_216=l9_254;
float l9_262=param_21.y;
int l9_263=param_24.y;
bool l9_264=l9_215;
float l9_265=l9_216;
if ((l9_263==0)||(l9_263==3))
{
float l9_266=l9_262;
float l9_267=0.0;
float l9_268=1.0;
bool l9_269=l9_264;
float l9_270=l9_265;
float l9_271=fast::clamp(l9_266,l9_267,l9_268);
float l9_272=step(abs(l9_266-l9_271),9.9999997e-06);
l9_270*=(l9_272+((1.0-float(l9_269))*(1.0-l9_272)));
l9_266=l9_271;
l9_262=l9_266;
l9_265=l9_270;
}
param_21.y=l9_262;
l9_216=l9_265;
float2 l9_273=param_21;
int l9_274=param_19;
int l9_275=param_20;
float l9_276=param_29;
float2 l9_277=l9_273;
int l9_278=l9_274;
int l9_279=l9_275;
float3 l9_280=float3(0.0);
if (l9_278==0)
{
l9_280=float3(l9_277,0.0);
}
else
{
if (l9_278==1)
{
l9_280=float3(l9_277.x,(l9_277.y*0.5)+(0.5-(float(l9_279)*0.5)),0.0);
}
else
{
l9_280=float3(l9_277,float(l9_279));
}
}
float3 l9_281=l9_280;
float3 l9_282=l9_281;
float2 l9_283=l9_282.xy;
float l9_284=l9_276;
float4 l9_285=sc_set0.transformPosRotTex.sample(sc_set0.transformPosRotTexSmpSC,l9_283,level(l9_284));
float4 l9_286=l9_285;
float4 l9_287=l9_286;
if (param_27)
{
l9_287=mix(param_28,l9_287,float4(l9_216));
}
float4 l9_288=l9_287;
Color_N54=l9_288;
float Value1_N2=0.0;
float4 param_30=Color_N54;
float param_31=Value_N91;
float param_32=Value_N92;
float param_33=0.99998999;
float4 l9_289=param_30;
#if (1)
{
l9_289=floor((l9_289*255.0)+float4(0.5))/float4(255.0);
}
#endif
float l9_290=dot(l9_289,float4(1.0,0.0039215689,1.53787e-05,6.0308629e-08));
float l9_291=l9_290;
float l9_292=0.0;
float l9_293=param_33;
float l9_294=param_31;
float l9_295=param_32;
float l9_296=l9_294+(((l9_291-l9_292)*(l9_295-l9_294))/(l9_293-l9_292));
float l9_297=l9_296;
Value1_N2=l9_297;
float2 Value_N14=float2(0.0);
Value_N14.x=Value_N94;
Value_N14.y=(*sc_set0.UserUniforms).Port_Value2_N014;
float4 Color_N1=float4(0.0);
int l9_298=0;
if ((int(transformPosRotTexHasSwappedViews_tmp)!=0))
{
int l9_299=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_299=0;
}
else
{
l9_299=gl_InstanceIndex%2;
}
int l9_300=l9_299;
l9_298=1-l9_300;
}
else
{
int l9_301=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_301=0;
}
else
{
l9_301=gl_InstanceIndex%2;
}
int l9_302=l9_301;
l9_298=l9_302;
}
int l9_303=l9_298;
int param_34=transformPosRotTexLayout_tmp;
int param_35=l9_303;
float2 param_36=Value_N14;
bool param_37=(int(SC_USE_UV_TRANSFORM_transformPosRotTex_tmp)!=0);
float3x3 param_38=(*sc_set0.UserUniforms).transformPosRotTexTransform;
int2 param_39=int2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex_tmp,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex_tmp);
bool param_40=(int(SC_USE_UV_MIN_MAX_transformPosRotTex_tmp)!=0);
float4 param_41=(*sc_set0.UserUniforms).transformPosRotTexUvMinMax;
bool param_42=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex_tmp)!=0);
float4 param_43=(*sc_set0.UserUniforms).transformPosRotTexBorderColor;
float param_44=0.0;
bool l9_304=param_42&&(!param_40);
float l9_305=1.0;
float l9_306=param_36.x;
int l9_307=param_39.x;
if (l9_307==1)
{
l9_306=fract(l9_306);
}
else
{
if (l9_307==2)
{
float l9_308=fract(l9_306);
float l9_309=l9_306-l9_308;
float l9_310=step(0.25,fract(l9_309*0.5));
l9_306=mix(l9_308,1.0-l9_308,fast::clamp(l9_310,0.0,1.0));
}
}
param_36.x=l9_306;
float l9_311=param_36.y;
int l9_312=param_39.y;
if (l9_312==1)
{
l9_311=fract(l9_311);
}
else
{
if (l9_312==2)
{
float l9_313=fract(l9_311);
float l9_314=l9_311-l9_313;
float l9_315=step(0.25,fract(l9_314*0.5));
l9_311=mix(l9_313,1.0-l9_313,fast::clamp(l9_315,0.0,1.0));
}
}
param_36.y=l9_311;
if (param_40)
{
bool l9_316=param_42;
bool l9_317;
if (l9_316)
{
l9_317=param_39.x==3;
}
else
{
l9_317=l9_316;
}
float l9_318=param_36.x;
float l9_319=param_41.x;
float l9_320=param_41.z;
bool l9_321=l9_317;
float l9_322=l9_305;
float l9_323=fast::clamp(l9_318,l9_319,l9_320);
float l9_324=step(abs(l9_318-l9_323),9.9999997e-06);
l9_322*=(l9_324+((1.0-float(l9_321))*(1.0-l9_324)));
l9_318=l9_323;
param_36.x=l9_318;
l9_305=l9_322;
bool l9_325=param_42;
bool l9_326;
if (l9_325)
{
l9_326=param_39.y==3;
}
else
{
l9_326=l9_325;
}
float l9_327=param_36.y;
float l9_328=param_41.y;
float l9_329=param_41.w;
bool l9_330=l9_326;
float l9_331=l9_305;
float l9_332=fast::clamp(l9_327,l9_328,l9_329);
float l9_333=step(abs(l9_327-l9_332),9.9999997e-06);
l9_331*=(l9_333+((1.0-float(l9_330))*(1.0-l9_333)));
l9_327=l9_332;
param_36.y=l9_327;
l9_305=l9_331;
}
float2 l9_334=param_36;
bool l9_335=param_37;
float3x3 l9_336=param_38;
if (l9_335)
{
l9_334=float2((l9_336*float3(l9_334,1.0)).xy);
}
float2 l9_337=l9_334;
float2 l9_338=l9_337;
float2 l9_339=l9_338;
param_36=l9_339;
float l9_340=param_36.x;
int l9_341=param_39.x;
bool l9_342=l9_304;
float l9_343=l9_305;
if ((l9_341==0)||(l9_341==3))
{
float l9_344=l9_340;
float l9_345=0.0;
float l9_346=1.0;
bool l9_347=l9_342;
float l9_348=l9_343;
float l9_349=fast::clamp(l9_344,l9_345,l9_346);
float l9_350=step(abs(l9_344-l9_349),9.9999997e-06);
l9_348*=(l9_350+((1.0-float(l9_347))*(1.0-l9_350)));
l9_344=l9_349;
l9_340=l9_344;
l9_343=l9_348;
}
param_36.x=l9_340;
l9_305=l9_343;
float l9_351=param_36.y;
int l9_352=param_39.y;
bool l9_353=l9_304;
float l9_354=l9_305;
if ((l9_352==0)||(l9_352==3))
{
float l9_355=l9_351;
float l9_356=0.0;
float l9_357=1.0;
bool l9_358=l9_353;
float l9_359=l9_354;
float l9_360=fast::clamp(l9_355,l9_356,l9_357);
float l9_361=step(abs(l9_355-l9_360),9.9999997e-06);
l9_359*=(l9_361+((1.0-float(l9_358))*(1.0-l9_361)));
l9_355=l9_360;
l9_351=l9_355;
l9_354=l9_359;
}
param_36.y=l9_351;
l9_305=l9_354;
float2 l9_362=param_36;
int l9_363=param_34;
int l9_364=param_35;
float l9_365=param_44;
float2 l9_366=l9_362;
int l9_367=l9_363;
int l9_368=l9_364;
float3 l9_369=float3(0.0);
if (l9_367==0)
{
l9_369=float3(l9_366,0.0);
}
else
{
if (l9_367==1)
{
l9_369=float3(l9_366.x,(l9_366.y*0.5)+(0.5-(float(l9_368)*0.5)),0.0);
}
else
{
l9_369=float3(l9_366,float(l9_368));
}
}
float3 l9_370=l9_369;
float3 l9_371=l9_370;
float2 l9_372=l9_371.xy;
float l9_373=l9_365;
float4 l9_374=sc_set0.transformPosRotTex.sample(sc_set0.transformPosRotTexSmpSC,l9_372,level(l9_373));
float4 l9_375=l9_374;
float4 l9_376=l9_375;
if (param_42)
{
l9_376=mix(param_43,l9_376,float4(l9_305));
}
float4 l9_377=l9_376;
Color_N1=l9_377;
float Value1_N53=0.0;
float4 param_45=Color_N1;
float param_46=Value_N91;
float param_47=Value_N92;
float param_48=0.99998999;
float4 l9_378=param_45;
#if (1)
{
l9_378=floor((l9_378*255.0)+float4(0.5))/float4(255.0);
}
#endif
float l9_379=dot(l9_378,float4(1.0,0.0039215689,1.53787e-05,6.0308629e-08));
float l9_380=l9_379;
float l9_381=0.0;
float l9_382=param_48;
float l9_383=param_46;
float l9_384=param_47;
float l9_385=l9_383+(((l9_380-l9_381)*(l9_384-l9_383))/(l9_382-l9_381));
float l9_386=l9_385;
Value1_N53=l9_386;
float4 Value_N3=float4(0.0);
Value_N3.x=Value1_N50;
Value_N3.y=Value1_N2;
Value_N3.z=Value1_N53;
Value_N3.w=(*sc_set0.UserUniforms).Port_Value4_N003;
float3 Position_N5=float3(0.0);
Position_N5=Globals.SurfacePosition_ObjectSpace;
float Result_N61=0.0;
float param_49=0.0;
float param_50=(*sc_set0.UserUniforms).Port_Value1_N061;
float param_51=0.0;
ssGlobals param_53=Globals;
float l9_387=0.0;
int l9_388=gl_InstanceIndex;
l9_387=float(l9_388);
float l9_389=0.0;
l9_389=l9_387+(*sc_set0.UserUniforms).Port_Input1_N018;
float l9_390=0.0;
float l9_391=(*sc_set0.UserUniforms).maxInstanceCount;
l9_390=l9_391;
float l9_392=0.0;
l9_392=l9_390;
float l9_393=0.0;
l9_393=l9_389/(l9_392+1.234e-06);
float l9_394=0.0;
l9_394=l9_393;
float2 l9_395=float2(0.0);
l9_395.x=l9_394;
l9_395.y=(*sc_set0.UserUniforms).Port_Value2_N028;
float4 l9_396=float4(0.0);
int l9_397=0;
if ((int(transformScaleTexHasSwappedViews_tmp)!=0))
{
int l9_398=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_398=0;
}
else
{
l9_398=gl_InstanceIndex%2;
}
int l9_399=l9_398;
l9_397=1-l9_399;
}
else
{
int l9_400=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_400=0;
}
else
{
l9_400=gl_InstanceIndex%2;
}
int l9_401=l9_400;
l9_397=l9_401;
}
int l9_402=l9_397;
int l9_403=transformScaleTexLayout_tmp;
int l9_404=l9_402;
float2 l9_405=l9_395;
bool l9_406=(int(SC_USE_UV_TRANSFORM_transformScaleTex_tmp)!=0);
float3x3 l9_407=(*sc_set0.UserUniforms).transformScaleTexTransform;
int2 l9_408=int2(SC_SOFTWARE_WRAP_MODE_U_transformScaleTex_tmp,SC_SOFTWARE_WRAP_MODE_V_transformScaleTex_tmp);
bool l9_409=(int(SC_USE_UV_MIN_MAX_transformScaleTex_tmp)!=0);
float4 l9_410=(*sc_set0.UserUniforms).transformScaleTexUvMinMax;
bool l9_411=(int(SC_USE_CLAMP_TO_BORDER_transformScaleTex_tmp)!=0);
float4 l9_412=(*sc_set0.UserUniforms).transformScaleTexBorderColor;
float l9_413=0.0;
bool l9_414=l9_411&&(!l9_409);
float l9_415=1.0;
float l9_416=l9_405.x;
int l9_417=l9_408.x;
if (l9_417==1)
{
l9_416=fract(l9_416);
}
else
{
if (l9_417==2)
{
float l9_418=fract(l9_416);
float l9_419=l9_416-l9_418;
float l9_420=step(0.25,fract(l9_419*0.5));
l9_416=mix(l9_418,1.0-l9_418,fast::clamp(l9_420,0.0,1.0));
}
}
l9_405.x=l9_416;
float l9_421=l9_405.y;
int l9_422=l9_408.y;
if (l9_422==1)
{
l9_421=fract(l9_421);
}
else
{
if (l9_422==2)
{
float l9_423=fract(l9_421);
float l9_424=l9_421-l9_423;
float l9_425=step(0.25,fract(l9_424*0.5));
l9_421=mix(l9_423,1.0-l9_423,fast::clamp(l9_425,0.0,1.0));
}
}
l9_405.y=l9_421;
if (l9_409)
{
bool l9_426=l9_411;
bool l9_427;
if (l9_426)
{
l9_427=l9_408.x==3;
}
else
{
l9_427=l9_426;
}
float l9_428=l9_405.x;
float l9_429=l9_410.x;
float l9_430=l9_410.z;
bool l9_431=l9_427;
float l9_432=l9_415;
float l9_433=fast::clamp(l9_428,l9_429,l9_430);
float l9_434=step(abs(l9_428-l9_433),9.9999997e-06);
l9_432*=(l9_434+((1.0-float(l9_431))*(1.0-l9_434)));
l9_428=l9_433;
l9_405.x=l9_428;
l9_415=l9_432;
bool l9_435=l9_411;
bool l9_436;
if (l9_435)
{
l9_436=l9_408.y==3;
}
else
{
l9_436=l9_435;
}
float l9_437=l9_405.y;
float l9_438=l9_410.y;
float l9_439=l9_410.w;
bool l9_440=l9_436;
float l9_441=l9_415;
float l9_442=fast::clamp(l9_437,l9_438,l9_439);
float l9_443=step(abs(l9_437-l9_442),9.9999997e-06);
l9_441*=(l9_443+((1.0-float(l9_440))*(1.0-l9_443)));
l9_437=l9_442;
l9_405.y=l9_437;
l9_415=l9_441;
}
float2 l9_444=l9_405;
bool l9_445=l9_406;
float3x3 l9_446=l9_407;
if (l9_445)
{
l9_444=float2((l9_446*float3(l9_444,1.0)).xy);
}
float2 l9_447=l9_444;
float2 l9_448=l9_447;
float2 l9_449=l9_448;
l9_405=l9_449;
float l9_450=l9_405.x;
int l9_451=l9_408.x;
bool l9_452=l9_414;
float l9_453=l9_415;
if ((l9_451==0)||(l9_451==3))
{
float l9_454=l9_450;
float l9_455=0.0;
float l9_456=1.0;
bool l9_457=l9_452;
float l9_458=l9_453;
float l9_459=fast::clamp(l9_454,l9_455,l9_456);
float l9_460=step(abs(l9_454-l9_459),9.9999997e-06);
l9_458*=(l9_460+((1.0-float(l9_457))*(1.0-l9_460)));
l9_454=l9_459;
l9_450=l9_454;
l9_453=l9_458;
}
l9_405.x=l9_450;
l9_415=l9_453;
float l9_461=l9_405.y;
int l9_462=l9_408.y;
bool l9_463=l9_414;
float l9_464=l9_415;
if ((l9_462==0)||(l9_462==3))
{
float l9_465=l9_461;
float l9_466=0.0;
float l9_467=1.0;
bool l9_468=l9_463;
float l9_469=l9_464;
float l9_470=fast::clamp(l9_465,l9_466,l9_467);
float l9_471=step(abs(l9_465-l9_470),9.9999997e-06);
l9_469*=(l9_471+((1.0-float(l9_468))*(1.0-l9_471)));
l9_465=l9_470;
l9_461=l9_465;
l9_464=l9_469;
}
l9_405.y=l9_461;
l9_415=l9_464;
float2 l9_472=l9_405;
int l9_473=l9_403;
int l9_474=l9_404;
float l9_475=l9_413;
float2 l9_476=l9_472;
int l9_477=l9_473;
int l9_478=l9_474;
float3 l9_479=float3(0.0);
if (l9_477==0)
{
l9_479=float3(l9_476,0.0);
}
else
{
if (l9_477==1)
{
l9_479=float3(l9_476.x,(l9_476.y*0.5)+(0.5-(float(l9_478)*0.5)),0.0);
}
else
{
l9_479=float3(l9_476,float(l9_478));
}
}
float3 l9_480=l9_479;
float3 l9_481=l9_480;
float2 l9_482=l9_481.xy;
float l9_483=l9_475;
float4 l9_484=sc_set0.transformScaleTex.sample(sc_set0.transformScaleTexSmpSC,l9_482,level(l9_483));
float4 l9_485=l9_484;
float4 l9_486=l9_485;
if (l9_411)
{
l9_486=mix(l9_412,l9_486,float4(l9_415));
}
float4 l9_487=l9_486;
l9_396=l9_487;
float l9_488=0.0;
float l9_489=(*sc_set0.UserUniforms).minSca;
l9_488=l9_489;
float l9_490=0.0;
l9_490=l9_488;
float l9_491=0.0;
l9_491=l9_490;
float l9_492=0.0;
float l9_493=(*sc_set0.UserUniforms).maxSca;
l9_492=l9_493;
float l9_494=0.0;
l9_494=l9_492;
float l9_495=0.0;
l9_495=l9_494;
float l9_496=0.0;
l9_496=(((l9_396.x-(*sc_set0.UserUniforms).Port_RangeMinA_N040)/(((*sc_set0.UserUniforms).Port_RangeMaxA_N040-(*sc_set0.UserUniforms).Port_RangeMinA_N040)+1e-06))*(l9_495-l9_491))+l9_491;
float l9_497=0.0;
l9_497=float(l9_496<(*sc_set0.UserUniforms).Port_Input1_N011);
param_49=l9_497;
float param_52;
if ((param_49*1.0)!=0.0)
{
param_52=param_50;
}
else
{
float l9_498=0.0;
int l9_499=gl_InstanceIndex;
l9_498=float(l9_499);
float l9_500=0.0;
l9_500=l9_498+(*sc_set0.UserUniforms).Port_Input1_N018;
float l9_501=0.0;
float l9_502=(*sc_set0.UserUniforms).maxInstanceCount;
l9_501=l9_502;
float l9_503=0.0;
l9_503=l9_501;
float l9_504=0.0;
l9_504=l9_500/(l9_503+1.234e-06);
float l9_505=0.0;
l9_505=l9_504;
float2 l9_506=float2(0.0);
l9_506.x=l9_505;
l9_506.y=(*sc_set0.UserUniforms).Port_Value2_N028;
float4 l9_507=float4(0.0);
int l9_508=0;
if ((int(transformScaleTexHasSwappedViews_tmp)!=0))
{
int l9_509=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_509=0;
}
else
{
l9_509=gl_InstanceIndex%2;
}
int l9_510=l9_509;
l9_508=1-l9_510;
}
else
{
int l9_511=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_511=0;
}
else
{
l9_511=gl_InstanceIndex%2;
}
int l9_512=l9_511;
l9_508=l9_512;
}
int l9_513=l9_508;
int l9_514=transformScaleTexLayout_tmp;
int l9_515=l9_513;
float2 l9_516=l9_506;
bool l9_517=(int(SC_USE_UV_TRANSFORM_transformScaleTex_tmp)!=0);
float3x3 l9_518=(*sc_set0.UserUniforms).transformScaleTexTransform;
int2 l9_519=int2(SC_SOFTWARE_WRAP_MODE_U_transformScaleTex_tmp,SC_SOFTWARE_WRAP_MODE_V_transformScaleTex_tmp);
bool l9_520=(int(SC_USE_UV_MIN_MAX_transformScaleTex_tmp)!=0);
float4 l9_521=(*sc_set0.UserUniforms).transformScaleTexUvMinMax;
bool l9_522=(int(SC_USE_CLAMP_TO_BORDER_transformScaleTex_tmp)!=0);
float4 l9_523=(*sc_set0.UserUniforms).transformScaleTexBorderColor;
float l9_524=0.0;
bool l9_525=l9_522&&(!l9_520);
float l9_526=1.0;
float l9_527=l9_516.x;
int l9_528=l9_519.x;
if (l9_528==1)
{
l9_527=fract(l9_527);
}
else
{
if (l9_528==2)
{
float l9_529=fract(l9_527);
float l9_530=l9_527-l9_529;
float l9_531=step(0.25,fract(l9_530*0.5));
l9_527=mix(l9_529,1.0-l9_529,fast::clamp(l9_531,0.0,1.0));
}
}
l9_516.x=l9_527;
float l9_532=l9_516.y;
int l9_533=l9_519.y;
if (l9_533==1)
{
l9_532=fract(l9_532);
}
else
{
if (l9_533==2)
{
float l9_534=fract(l9_532);
float l9_535=l9_532-l9_534;
float l9_536=step(0.25,fract(l9_535*0.5));
l9_532=mix(l9_534,1.0-l9_534,fast::clamp(l9_536,0.0,1.0));
}
}
l9_516.y=l9_532;
if (l9_520)
{
bool l9_537=l9_522;
bool l9_538;
if (l9_537)
{
l9_538=l9_519.x==3;
}
else
{
l9_538=l9_537;
}
float l9_539=l9_516.x;
float l9_540=l9_521.x;
float l9_541=l9_521.z;
bool l9_542=l9_538;
float l9_543=l9_526;
float l9_544=fast::clamp(l9_539,l9_540,l9_541);
float l9_545=step(abs(l9_539-l9_544),9.9999997e-06);
l9_543*=(l9_545+((1.0-float(l9_542))*(1.0-l9_545)));
l9_539=l9_544;
l9_516.x=l9_539;
l9_526=l9_543;
bool l9_546=l9_522;
bool l9_547;
if (l9_546)
{
l9_547=l9_519.y==3;
}
else
{
l9_547=l9_546;
}
float l9_548=l9_516.y;
float l9_549=l9_521.y;
float l9_550=l9_521.w;
bool l9_551=l9_547;
float l9_552=l9_526;
float l9_553=fast::clamp(l9_548,l9_549,l9_550);
float l9_554=step(abs(l9_548-l9_553),9.9999997e-06);
l9_552*=(l9_554+((1.0-float(l9_551))*(1.0-l9_554)));
l9_548=l9_553;
l9_516.y=l9_548;
l9_526=l9_552;
}
float2 l9_555=l9_516;
bool l9_556=l9_517;
float3x3 l9_557=l9_518;
if (l9_556)
{
l9_555=float2((l9_557*float3(l9_555,1.0)).xy);
}
float2 l9_558=l9_555;
float2 l9_559=l9_558;
float2 l9_560=l9_559;
l9_516=l9_560;
float l9_561=l9_516.x;
int l9_562=l9_519.x;
bool l9_563=l9_525;
float l9_564=l9_526;
if ((l9_562==0)||(l9_562==3))
{
float l9_565=l9_561;
float l9_566=0.0;
float l9_567=1.0;
bool l9_568=l9_563;
float l9_569=l9_564;
float l9_570=fast::clamp(l9_565,l9_566,l9_567);
float l9_571=step(abs(l9_565-l9_570),9.9999997e-06);
l9_569*=(l9_571+((1.0-float(l9_568))*(1.0-l9_571)));
l9_565=l9_570;
l9_561=l9_565;
l9_564=l9_569;
}
l9_516.x=l9_561;
l9_526=l9_564;
float l9_572=l9_516.y;
int l9_573=l9_519.y;
bool l9_574=l9_525;
float l9_575=l9_526;
if ((l9_573==0)||(l9_573==3))
{
float l9_576=l9_572;
float l9_577=0.0;
float l9_578=1.0;
bool l9_579=l9_574;
float l9_580=l9_575;
float l9_581=fast::clamp(l9_576,l9_577,l9_578);
float l9_582=step(abs(l9_576-l9_581),9.9999997e-06);
l9_580*=(l9_582+((1.0-float(l9_579))*(1.0-l9_582)));
l9_576=l9_581;
l9_572=l9_576;
l9_575=l9_580;
}
l9_516.y=l9_572;
l9_526=l9_575;
float2 l9_583=l9_516;
int l9_584=l9_514;
int l9_585=l9_515;
float l9_586=l9_524;
float2 l9_587=l9_583;
int l9_588=l9_584;
int l9_589=l9_585;
float3 l9_590=float3(0.0);
if (l9_588==0)
{
l9_590=float3(l9_587,0.0);
}
else
{
if (l9_588==1)
{
l9_590=float3(l9_587.x,(l9_587.y*0.5)+(0.5-(float(l9_589)*0.5)),0.0);
}
else
{
l9_590=float3(l9_587,float(l9_589));
}
}
float3 l9_591=l9_590;
float3 l9_592=l9_591;
float2 l9_593=l9_592.xy;
float l9_594=l9_586;
float4 l9_595=sc_set0.transformScaleTex.sample(sc_set0.transformScaleTexSmpSC,l9_593,level(l9_594));
float4 l9_596=l9_595;
float4 l9_597=l9_596;
if (l9_522)
{
l9_597=mix(l9_523,l9_597,float4(l9_526));
}
float4 l9_598=l9_597;
l9_507=l9_598;
float l9_599=0.0;
float l9_600=(*sc_set0.UserUniforms).minSca;
l9_599=l9_600;
float l9_601=0.0;
l9_601=l9_599;
float l9_602=0.0;
l9_602=l9_601;
float l9_603=0.0;
float l9_604=(*sc_set0.UserUniforms).maxSca;
l9_603=l9_604;
float l9_605=0.0;
l9_605=l9_603;
float l9_606=0.0;
l9_606=l9_605;
float l9_607=0.0;
l9_607=(((l9_507.x-(*sc_set0.UserUniforms).Port_RangeMinA_N040)/(((*sc_set0.UserUniforms).Port_RangeMaxA_N040-(*sc_set0.UserUniforms).Port_RangeMinA_N040)+1e-06))*(l9_606-l9_602))+l9_602;
float l9_608=0.0;
int l9_609=gl_InstanceIndex;
l9_608=float(l9_609);
float l9_610=0.0;
l9_610=l9_608;
float l9_611=0.0;
float l9_612=(*sc_set0.UserUniforms).Tweak_N112;
l9_611=l9_612;
float l9_613=0.0;
l9_613=l9_611;
float l9_614=0.0;
l9_614=l9_610*l9_613;
float l9_615=0.0;
l9_615=param_53.gTimeElapsed*(*sc_set0.UserUniforms).Port_Multiplier_N089;
float l9_616=0.0;
l9_616=l9_615;
float l9_617=0.0;
float l9_618=(*sc_set0.UserUniforms).Tweak_N110;
l9_617=l9_618;
float l9_619=0.0;
l9_619=l9_617;
float l9_620=0.0;
l9_620=l9_616*l9_619;
float l9_621=0.0;
l9_621=l9_614+l9_620;
float l9_622=0.0;
l9_622=sin(l9_621);
float l9_623=0.0;
float l9_624=(*sc_set0.UserUniforms).Tweak_N111;
l9_623=l9_624;
float l9_625=0.0;
l9_625=l9_623;
float l9_626=0.0;
l9_626=l9_622*l9_625;
float l9_627=0.0;
l9_627=l9_626;
float l9_628=0.0;
float l9_629;
if ((int(Tweak_N166_tmp)!=0))
{
l9_629=1.001;
}
else
{
l9_629=0.001;
}
l9_629-=0.001;
l9_628=l9_629;
float l9_630=0.0;
l9_630=mix((*sc_set0.UserUniforms).Port_Input0_N179,l9_627,l9_628);
float l9_631=0.0;
l9_631=l9_630;
float l9_632=0.0;
l9_632=l9_631;
float l9_633=0.0;
l9_633=l9_607*l9_632;
param_51=l9_633;
param_52=param_51;
}
Result_N61=param_52;
float3 Output_N20=float3(0.0);
Output_N20=Position_N5*float3(Result_N61);
float3 Export_N105=float3(0.0);
Export_N105=Output_N20;
float3 Value_N96=float3(0.0);
Value_N96=Export_N105;
float3 Value_N39=float3(0.0);
Value_N39=Value_N96;
float Value_N100=0.0;
Value_N100=Output_N16;
float2 Value_N19=float2(0.0);
Value_N19.x=Value_N100;
Value_N19.y=(*sc_set0.UserUniforms).Port_Value2_N019;
float4 Color_N25=float4(0.0);
int l9_634=0;
if ((int(transformPosRotTexHasSwappedViews_tmp)!=0))
{
int l9_635=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_635=0;
}
else
{
l9_635=gl_InstanceIndex%2;
}
int l9_636=l9_635;
l9_634=1-l9_636;
}
else
{
int l9_637=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_637=0;
}
else
{
l9_637=gl_InstanceIndex%2;
}
int l9_638=l9_637;
l9_634=l9_638;
}
int l9_639=l9_634;
int param_54=transformPosRotTexLayout_tmp;
int param_55=l9_639;
float2 param_56=Value_N19;
bool param_57=(int(SC_USE_UV_TRANSFORM_transformPosRotTex_tmp)!=0);
float3x3 param_58=(*sc_set0.UserUniforms).transformPosRotTexTransform;
int2 param_59=int2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex_tmp,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex_tmp);
bool param_60=(int(SC_USE_UV_MIN_MAX_transformPosRotTex_tmp)!=0);
float4 param_61=(*sc_set0.UserUniforms).transformPosRotTexUvMinMax;
bool param_62=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex_tmp)!=0);
float4 param_63=(*sc_set0.UserUniforms).transformPosRotTexBorderColor;
float param_64=0.0;
bool l9_640=param_62&&(!param_60);
float l9_641=1.0;
float l9_642=param_56.x;
int l9_643=param_59.x;
if (l9_643==1)
{
l9_642=fract(l9_642);
}
else
{
if (l9_643==2)
{
float l9_644=fract(l9_642);
float l9_645=l9_642-l9_644;
float l9_646=step(0.25,fract(l9_645*0.5));
l9_642=mix(l9_644,1.0-l9_644,fast::clamp(l9_646,0.0,1.0));
}
}
param_56.x=l9_642;
float l9_647=param_56.y;
int l9_648=param_59.y;
if (l9_648==1)
{
l9_647=fract(l9_647);
}
else
{
if (l9_648==2)
{
float l9_649=fract(l9_647);
float l9_650=l9_647-l9_649;
float l9_651=step(0.25,fract(l9_650*0.5));
l9_647=mix(l9_649,1.0-l9_649,fast::clamp(l9_651,0.0,1.0));
}
}
param_56.y=l9_647;
if (param_60)
{
bool l9_652=param_62;
bool l9_653;
if (l9_652)
{
l9_653=param_59.x==3;
}
else
{
l9_653=l9_652;
}
float l9_654=param_56.x;
float l9_655=param_61.x;
float l9_656=param_61.z;
bool l9_657=l9_653;
float l9_658=l9_641;
float l9_659=fast::clamp(l9_654,l9_655,l9_656);
float l9_660=step(abs(l9_654-l9_659),9.9999997e-06);
l9_658*=(l9_660+((1.0-float(l9_657))*(1.0-l9_660)));
l9_654=l9_659;
param_56.x=l9_654;
l9_641=l9_658;
bool l9_661=param_62;
bool l9_662;
if (l9_661)
{
l9_662=param_59.y==3;
}
else
{
l9_662=l9_661;
}
float l9_663=param_56.y;
float l9_664=param_61.y;
float l9_665=param_61.w;
bool l9_666=l9_662;
float l9_667=l9_641;
float l9_668=fast::clamp(l9_663,l9_664,l9_665);
float l9_669=step(abs(l9_663-l9_668),9.9999997e-06);
l9_667*=(l9_669+((1.0-float(l9_666))*(1.0-l9_669)));
l9_663=l9_668;
param_56.y=l9_663;
l9_641=l9_667;
}
float2 l9_670=param_56;
bool l9_671=param_57;
float3x3 l9_672=param_58;
if (l9_671)
{
l9_670=float2((l9_672*float3(l9_670,1.0)).xy);
}
float2 l9_673=l9_670;
float2 l9_674=l9_673;
float2 l9_675=l9_674;
param_56=l9_675;
float l9_676=param_56.x;
int l9_677=param_59.x;
bool l9_678=l9_640;
float l9_679=l9_641;
if ((l9_677==0)||(l9_677==3))
{
float l9_680=l9_676;
float l9_681=0.0;
float l9_682=1.0;
bool l9_683=l9_678;
float l9_684=l9_679;
float l9_685=fast::clamp(l9_680,l9_681,l9_682);
float l9_686=step(abs(l9_680-l9_685),9.9999997e-06);
l9_684*=(l9_686+((1.0-float(l9_683))*(1.0-l9_686)));
l9_680=l9_685;
l9_676=l9_680;
l9_679=l9_684;
}
param_56.x=l9_676;
l9_641=l9_679;
float l9_687=param_56.y;
int l9_688=param_59.y;
bool l9_689=l9_640;
float l9_690=l9_641;
if ((l9_688==0)||(l9_688==3))
{
float l9_691=l9_687;
float l9_692=0.0;
float l9_693=1.0;
bool l9_694=l9_689;
float l9_695=l9_690;
float l9_696=fast::clamp(l9_691,l9_692,l9_693);
float l9_697=step(abs(l9_691-l9_696),9.9999997e-06);
l9_695*=(l9_697+((1.0-float(l9_694))*(1.0-l9_697)));
l9_691=l9_696;
l9_687=l9_691;
l9_690=l9_695;
}
param_56.y=l9_687;
l9_641=l9_690;
float2 l9_698=param_56;
int l9_699=param_54;
int l9_700=param_55;
float l9_701=param_64;
float2 l9_702=l9_698;
int l9_703=l9_699;
int l9_704=l9_700;
float3 l9_705=float3(0.0);
if (l9_703==0)
{
l9_705=float3(l9_702,0.0);
}
else
{
if (l9_703==1)
{
l9_705=float3(l9_702.x,(l9_702.y*0.5)+(0.5-(float(l9_704)*0.5)),0.0);
}
else
{
l9_705=float3(l9_702,float(l9_704));
}
}
float3 l9_706=l9_705;
float3 l9_707=l9_706;
float2 l9_708=l9_707.xy;
float l9_709=l9_701;
float4 l9_710=sc_set0.transformPosRotTex.sample(sc_set0.transformPosRotTexSmpSC,l9_708,level(l9_709));
float4 l9_711=l9_710;
float4 l9_712=l9_711;
if (param_62)
{
l9_712=mix(param_63,l9_712,float4(l9_641));
}
float4 l9_713=l9_712;
Color_N25=l9_713;
float Output_N0=0.0;
float param_65=(*sc_set0.UserUniforms).minRot;
Output_N0=param_65;
float Value_N121=0.0;
Value_N121=Output_N0;
float Value_N101=0.0;
Value_N101=Value_N121;
float Output_N9=0.0;
float param_66=(*sc_set0.UserUniforms).maxRot;
Output_N9=param_66;
float Value_N122=0.0;
Value_N122=Output_N9;
float Value_N102=0.0;
Value_N102=Value_N122;
float Value1_N24=0.0;
float Value2_N24=0.0;
float4 param_67=Color_N25;
float param_69=Value_N101;
float param_70=Value_N102;
float param_72=Value_N101;
float param_73=Value_N102;
float2 l9_714=param_67.xy;
float l9_715=param_69;
float l9_716=param_70;
float l9_717=0.99998999;
float2 l9_718=l9_714;
#if (1)
{
l9_718=floor((l9_718*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_719=dot(l9_718,float2(1.0,0.0039215689));
float l9_720=l9_719;
float l9_721=0.0;
float l9_722=l9_717;
float l9_723=l9_715;
float l9_724=l9_716;
float l9_725=l9_723+(((l9_720-l9_721)*(l9_724-l9_723))/(l9_722-l9_721));
float l9_726=l9_725;
float param_68=l9_726;
float2 l9_727=param_67.zw;
float l9_728=param_72;
float l9_729=param_73;
float l9_730=0.99998999;
float2 l9_731=l9_727;
#if (1)
{
l9_731=floor((l9_731*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_732=dot(l9_731,float2(1.0,0.0039215689));
float l9_733=l9_732;
float l9_734=0.0;
float l9_735=l9_730;
float l9_736=l9_728;
float l9_737=l9_729;
float l9_738=l9_736+(((l9_733-l9_734)*(l9_737-l9_736))/(l9_735-l9_734));
float l9_739=l9_738;
float param_71=l9_739;
Value1_N24=param_68;
Value2_N24=param_71;
float2 Value_N26=float2(0.0);
Value_N26.x=Value_N100;
Value_N26.y=(*sc_set0.UserUniforms).Port_Value2_N026;
float4 Color_N29=float4(0.0);
int l9_740=0;
if ((int(transformPosRotTexHasSwappedViews_tmp)!=0))
{
int l9_741=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_741=0;
}
else
{
l9_741=gl_InstanceIndex%2;
}
int l9_742=l9_741;
l9_740=1-l9_742;
}
else
{
int l9_743=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_743=0;
}
else
{
l9_743=gl_InstanceIndex%2;
}
int l9_744=l9_743;
l9_740=l9_744;
}
int l9_745=l9_740;
int param_74=transformPosRotTexLayout_tmp;
int param_75=l9_745;
float2 param_76=Value_N26;
bool param_77=(int(SC_USE_UV_TRANSFORM_transformPosRotTex_tmp)!=0);
float3x3 param_78=(*sc_set0.UserUniforms).transformPosRotTexTransform;
int2 param_79=int2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex_tmp,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex_tmp);
bool param_80=(int(SC_USE_UV_MIN_MAX_transformPosRotTex_tmp)!=0);
float4 param_81=(*sc_set0.UserUniforms).transformPosRotTexUvMinMax;
bool param_82=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex_tmp)!=0);
float4 param_83=(*sc_set0.UserUniforms).transformPosRotTexBorderColor;
float param_84=0.0;
bool l9_746=param_82&&(!param_80);
float l9_747=1.0;
float l9_748=param_76.x;
int l9_749=param_79.x;
if (l9_749==1)
{
l9_748=fract(l9_748);
}
else
{
if (l9_749==2)
{
float l9_750=fract(l9_748);
float l9_751=l9_748-l9_750;
float l9_752=step(0.25,fract(l9_751*0.5));
l9_748=mix(l9_750,1.0-l9_750,fast::clamp(l9_752,0.0,1.0));
}
}
param_76.x=l9_748;
float l9_753=param_76.y;
int l9_754=param_79.y;
if (l9_754==1)
{
l9_753=fract(l9_753);
}
else
{
if (l9_754==2)
{
float l9_755=fract(l9_753);
float l9_756=l9_753-l9_755;
float l9_757=step(0.25,fract(l9_756*0.5));
l9_753=mix(l9_755,1.0-l9_755,fast::clamp(l9_757,0.0,1.0));
}
}
param_76.y=l9_753;
if (param_80)
{
bool l9_758=param_82;
bool l9_759;
if (l9_758)
{
l9_759=param_79.x==3;
}
else
{
l9_759=l9_758;
}
float l9_760=param_76.x;
float l9_761=param_81.x;
float l9_762=param_81.z;
bool l9_763=l9_759;
float l9_764=l9_747;
float l9_765=fast::clamp(l9_760,l9_761,l9_762);
float l9_766=step(abs(l9_760-l9_765),9.9999997e-06);
l9_764*=(l9_766+((1.0-float(l9_763))*(1.0-l9_766)));
l9_760=l9_765;
param_76.x=l9_760;
l9_747=l9_764;
bool l9_767=param_82;
bool l9_768;
if (l9_767)
{
l9_768=param_79.y==3;
}
else
{
l9_768=l9_767;
}
float l9_769=param_76.y;
float l9_770=param_81.y;
float l9_771=param_81.w;
bool l9_772=l9_768;
float l9_773=l9_747;
float l9_774=fast::clamp(l9_769,l9_770,l9_771);
float l9_775=step(abs(l9_769-l9_774),9.9999997e-06);
l9_773*=(l9_775+((1.0-float(l9_772))*(1.0-l9_775)));
l9_769=l9_774;
param_76.y=l9_769;
l9_747=l9_773;
}
float2 l9_776=param_76;
bool l9_777=param_77;
float3x3 l9_778=param_78;
if (l9_777)
{
l9_776=float2((l9_778*float3(l9_776,1.0)).xy);
}
float2 l9_779=l9_776;
float2 l9_780=l9_779;
float2 l9_781=l9_780;
param_76=l9_781;
float l9_782=param_76.x;
int l9_783=param_79.x;
bool l9_784=l9_746;
float l9_785=l9_747;
if ((l9_783==0)||(l9_783==3))
{
float l9_786=l9_782;
float l9_787=0.0;
float l9_788=1.0;
bool l9_789=l9_784;
float l9_790=l9_785;
float l9_791=fast::clamp(l9_786,l9_787,l9_788);
float l9_792=step(abs(l9_786-l9_791),9.9999997e-06);
l9_790*=(l9_792+((1.0-float(l9_789))*(1.0-l9_792)));
l9_786=l9_791;
l9_782=l9_786;
l9_785=l9_790;
}
param_76.x=l9_782;
l9_747=l9_785;
float l9_793=param_76.y;
int l9_794=param_79.y;
bool l9_795=l9_746;
float l9_796=l9_747;
if ((l9_794==0)||(l9_794==3))
{
float l9_797=l9_793;
float l9_798=0.0;
float l9_799=1.0;
bool l9_800=l9_795;
float l9_801=l9_796;
float l9_802=fast::clamp(l9_797,l9_798,l9_799);
float l9_803=step(abs(l9_797-l9_802),9.9999997e-06);
l9_801*=(l9_803+((1.0-float(l9_800))*(1.0-l9_803)));
l9_797=l9_802;
l9_793=l9_797;
l9_796=l9_801;
}
param_76.y=l9_793;
l9_747=l9_796;
float2 l9_804=param_76;
int l9_805=param_74;
int l9_806=param_75;
float l9_807=param_84;
float2 l9_808=l9_804;
int l9_809=l9_805;
int l9_810=l9_806;
float3 l9_811=float3(0.0);
if (l9_809==0)
{
l9_811=float3(l9_808,0.0);
}
else
{
if (l9_809==1)
{
l9_811=float3(l9_808.x,(l9_808.y*0.5)+(0.5-(float(l9_810)*0.5)),0.0);
}
else
{
l9_811=float3(l9_808,float(l9_810));
}
}
float3 l9_812=l9_811;
float3 l9_813=l9_812;
float2 l9_814=l9_813.xy;
float l9_815=l9_807;
float4 l9_816=sc_set0.transformPosRotTex.sample(sc_set0.transformPosRotTexSmpSC,l9_814,level(l9_815));
float4 l9_817=l9_816;
float4 l9_818=l9_817;
if (param_82)
{
l9_818=mix(param_83,l9_818,float4(l9_747));
}
float4 l9_819=l9_818;
Color_N29=l9_819;
float Value1_N27=0.0;
float Value2_N27=0.0;
float4 param_85=Color_N29;
float param_87=Value_N101;
float param_88=Value_N102;
float param_90=Value_N101;
float param_91=Value_N102;
float2 l9_820=param_85.xy;
float l9_821=param_87;
float l9_822=param_88;
float l9_823=0.99998999;
float2 l9_824=l9_820;
#if (1)
{
l9_824=floor((l9_824*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_825=dot(l9_824,float2(1.0,0.0039215689));
float l9_826=l9_825;
float l9_827=0.0;
float l9_828=l9_823;
float l9_829=l9_821;
float l9_830=l9_822;
float l9_831=l9_829+(((l9_826-l9_827)*(l9_830-l9_829))/(l9_828-l9_827));
float l9_832=l9_831;
float param_86=l9_832;
float2 l9_833=param_85.zw;
float l9_834=param_90;
float l9_835=param_91;
float l9_836=0.99998999;
float2 l9_837=l9_833;
#if (1)
{
l9_837=floor((l9_837*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_838=dot(l9_837,float2(1.0,0.0039215689));
float l9_839=l9_838;
float l9_840=0.0;
float l9_841=l9_836;
float l9_842=l9_834;
float l9_843=l9_835;
float l9_844=l9_842+(((l9_839-l9_840)*(l9_843-l9_842))/(l9_841-l9_840));
float l9_845=l9_844;
float param_89=l9_845;
Value1_N27=param_86;
Value2_N27=param_89;
float4 Value_N34=float4(0.0);
Value_N34.x=Value1_N24;
Value_N34.y=Value2_N24;
Value_N34.z=Value1_N27;
Value_N34.w=Value2_N27;
float4 Value_N41=float4(0.0);
Value_N41=Value_N34;
float Value1_N42=0.0;
float Value2_N42=0.0;
float Value3_N42=0.0;
float Value4_N42=0.0;
float4 param_92=Value_N41;
float param_93=param_92.x;
float param_94=param_92.y;
float param_95=param_92.z;
float param_96=param_92.w;
Value1_N42=param_93;
Value2_N42=param_94;
Value3_N42=param_95;
Value4_N42=param_96;
float3 Value_N43=float3(0.0);
Value_N43.x=Value1_N42;
Value_N43.y=Value2_N42;
Value_N43.z=Value3_N42;
float3 Result_N32=float3(0.0);
Result_N32=cross(Value_N39,Value_N43);
float3 Output_N35=float3(0.0);
Output_N35=Value_N39*float3(Value4_N42);
float3 Output_N31=float3(0.0);
Output_N31=Result_N32-Output_N35;
float3 Result_N36=float3(0.0);
Result_N36=cross(Output_N31,Value_N43);
float3 Output_N37=float3(0.0);
Output_N37=Result_N36*float3((*sc_set0.UserUniforms).Port_Input1_N037);
float3 Output_N33=float3(0.0);
Output_N33=Output_N37+Value_N39;
float3 Export_N38=float3(0.0);
Export_N38=Output_N33;
float3 Export_N97=float3(0.0);
Export_N97=Export_N38;
float3 Value_N90=float3(0.0);
Value_N90=Export_N97;
float3 Output_N6=float3(0.0);
Output_N6=Value_N3.xyz+Value_N90;
float InstanceID_N141=0.0;
int l9_846=gl_InstanceIndex;
InstanceID_N141=float(l9_846);
float Value_N146=0.0;
Value_N146=InstanceID_N141;
float Output_N144=0.0;
float param_97=(*sc_set0.UserUniforms).Tweak_N144;
Output_N144=param_97;
float Value_N147=0.0;
Value_N147=Output_N144;
float Output_N148=0.0;
Output_N148=Value_N146*Value_N147;
float Time_N89=0.0;
Time_N89=Globals.gTimeElapsed*(*sc_set0.UserUniforms).Port_Multiplier_N089;
float Value_N149=0.0;
Value_N149=Time_N89;
float Output_N142=0.0;
float param_98=(*sc_set0.UserUniforms).Tweak_N142;
Output_N142=param_98;
float Value_N150=0.0;
Value_N150=Output_N142;
float Output_N151=0.0;
Output_N151=Value_N149*Value_N150;
float Output_N152=0.0;
Output_N152=Output_N148+Output_N151;
float Output_N153=0.0;
Output_N153=sin(Output_N152);
float Output_N143=0.0;
float param_99=(*sc_set0.UserUniforms).Tweak_N143;
Output_N143=param_99;
float Value_N154=0.0;
Value_N154=Output_N143;
float Output_N155=0.0;
Output_N155=Output_N153*Value_N154;
float Export_N156=0.0;
Export_N156=Output_N155;
float3 Value_N162=float3(0.0);
Value_N162.x=(*sc_set0.UserUniforms).Port_Value1_N162;
Value_N162.y=Export_N156;
Value_N162.z=(*sc_set0.UserUniforms).Port_Value3_N162;
float Output_N163=0.0;
float param_100;
if ((int(Tweak_N163_tmp)!=0))
{
param_100=1.001;
}
else
{
param_100=0.001;
}
param_100-=0.001;
Output_N163=param_100;
float3 Output_N178=float3(0.0);
Output_N178=mix((*sc_set0.UserUniforms).Port_Input0_N178,Value_N162,float3(Output_N163));
float3 Value_N161=float3(0.0);
Value_N161=Output_N178;
float3 Value_N160=float3(0.0);
Value_N160=Value_N161;
float3 Output_N159=float3(0.0);
Output_N159=Output_N6+Value_N160;
float3 VectorOut_N7=float3(0.0);
VectorOut_N7=((*sc_set0.UserUniforms).sc_ModelMatrix*float4(Output_N159,1.0)).xyz;
float3 Export_N59=float3(0.0);
Export_N59=VectorOut_N7;
float3 Export_N117=float3(0.0);
Export_N117=Export_N59;
WorldPosition=Export_N117;
float3 Normal_N73=float3(0.0);
Normal_N73=Globals.VertexNormal_WorldSpace;
float3 Value_N75=float3(0.0);
Value_N75=Normal_N73;
float InstanceID_N13_1=0.0;
int l9_847=gl_InstanceIndex;
InstanceID_N13_1=float(l9_847);
float Output_N18_1=0.0;
Output_N18_1=InstanceID_N13_1+(*sc_set0.UserUniforms).Port_Input1_N018;
float Output_N15_1=0.0;
float param_101=(*sc_set0.UserUniforms).maxInstanceCount;
Output_N15_1=param_101;
float Value_N125_1=0.0;
Value_N125_1=Output_N15_1;
float Output_N16_1=0.0;
Output_N16_1=Output_N18_1/(Value_N125_1+1.234e-06);
float Value_N100_1=0.0;
Value_N100_1=Output_N16_1;
float2 Value_N19_1=float2(0.0);
Value_N19_1.x=Value_N100_1;
Value_N19_1.y=(*sc_set0.UserUniforms).Port_Value2_N019;
float4 Color_N25_1=float4(0.0);
int l9_848=0;
if ((int(transformPosRotTexHasSwappedViews_tmp)!=0))
{
int l9_849=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_849=0;
}
else
{
l9_849=gl_InstanceIndex%2;
}
int l9_850=l9_849;
l9_848=1-l9_850;
}
else
{
int l9_851=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_851=0;
}
else
{
l9_851=gl_InstanceIndex%2;
}
int l9_852=l9_851;
l9_848=l9_852;
}
int l9_853=l9_848;
int param_102=transformPosRotTexLayout_tmp;
int param_103=l9_853;
float2 param_104=Value_N19_1;
bool param_105=(int(SC_USE_UV_TRANSFORM_transformPosRotTex_tmp)!=0);
float3x3 param_106=(*sc_set0.UserUniforms).transformPosRotTexTransform;
int2 param_107=int2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex_tmp,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex_tmp);
bool param_108=(int(SC_USE_UV_MIN_MAX_transformPosRotTex_tmp)!=0);
float4 param_109=(*sc_set0.UserUniforms).transformPosRotTexUvMinMax;
bool param_110=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex_tmp)!=0);
float4 param_111=(*sc_set0.UserUniforms).transformPosRotTexBorderColor;
float param_112=0.0;
bool l9_854=param_110&&(!param_108);
float l9_855=1.0;
float l9_856=param_104.x;
int l9_857=param_107.x;
if (l9_857==1)
{
l9_856=fract(l9_856);
}
else
{
if (l9_857==2)
{
float l9_858=fract(l9_856);
float l9_859=l9_856-l9_858;
float l9_860=step(0.25,fract(l9_859*0.5));
l9_856=mix(l9_858,1.0-l9_858,fast::clamp(l9_860,0.0,1.0));
}
}
param_104.x=l9_856;
float l9_861=param_104.y;
int l9_862=param_107.y;
if (l9_862==1)
{
l9_861=fract(l9_861);
}
else
{
if (l9_862==2)
{
float l9_863=fract(l9_861);
float l9_864=l9_861-l9_863;
float l9_865=step(0.25,fract(l9_864*0.5));
l9_861=mix(l9_863,1.0-l9_863,fast::clamp(l9_865,0.0,1.0));
}
}
param_104.y=l9_861;
if (param_108)
{
bool l9_866=param_110;
bool l9_867;
if (l9_866)
{
l9_867=param_107.x==3;
}
else
{
l9_867=l9_866;
}
float l9_868=param_104.x;
float l9_869=param_109.x;
float l9_870=param_109.z;
bool l9_871=l9_867;
float l9_872=l9_855;
float l9_873=fast::clamp(l9_868,l9_869,l9_870);
float l9_874=step(abs(l9_868-l9_873),9.9999997e-06);
l9_872*=(l9_874+((1.0-float(l9_871))*(1.0-l9_874)));
l9_868=l9_873;
param_104.x=l9_868;
l9_855=l9_872;
bool l9_875=param_110;
bool l9_876;
if (l9_875)
{
l9_876=param_107.y==3;
}
else
{
l9_876=l9_875;
}
float l9_877=param_104.y;
float l9_878=param_109.y;
float l9_879=param_109.w;
bool l9_880=l9_876;
float l9_881=l9_855;
float l9_882=fast::clamp(l9_877,l9_878,l9_879);
float l9_883=step(abs(l9_877-l9_882),9.9999997e-06);
l9_881*=(l9_883+((1.0-float(l9_880))*(1.0-l9_883)));
l9_877=l9_882;
param_104.y=l9_877;
l9_855=l9_881;
}
float2 l9_884=param_104;
bool l9_885=param_105;
float3x3 l9_886=param_106;
if (l9_885)
{
l9_884=float2((l9_886*float3(l9_884,1.0)).xy);
}
float2 l9_887=l9_884;
float2 l9_888=l9_887;
float2 l9_889=l9_888;
param_104=l9_889;
float l9_890=param_104.x;
int l9_891=param_107.x;
bool l9_892=l9_854;
float l9_893=l9_855;
if ((l9_891==0)||(l9_891==3))
{
float l9_894=l9_890;
float l9_895=0.0;
float l9_896=1.0;
bool l9_897=l9_892;
float l9_898=l9_893;
float l9_899=fast::clamp(l9_894,l9_895,l9_896);
float l9_900=step(abs(l9_894-l9_899),9.9999997e-06);
l9_898*=(l9_900+((1.0-float(l9_897))*(1.0-l9_900)));
l9_894=l9_899;
l9_890=l9_894;
l9_893=l9_898;
}
param_104.x=l9_890;
l9_855=l9_893;
float l9_901=param_104.y;
int l9_902=param_107.y;
bool l9_903=l9_854;
float l9_904=l9_855;
if ((l9_902==0)||(l9_902==3))
{
float l9_905=l9_901;
float l9_906=0.0;
float l9_907=1.0;
bool l9_908=l9_903;
float l9_909=l9_904;
float l9_910=fast::clamp(l9_905,l9_906,l9_907);
float l9_911=step(abs(l9_905-l9_910),9.9999997e-06);
l9_909*=(l9_911+((1.0-float(l9_908))*(1.0-l9_911)));
l9_905=l9_910;
l9_901=l9_905;
l9_904=l9_909;
}
param_104.y=l9_901;
l9_855=l9_904;
float2 l9_912=param_104;
int l9_913=param_102;
int l9_914=param_103;
float l9_915=param_112;
float2 l9_916=l9_912;
int l9_917=l9_913;
int l9_918=l9_914;
float3 l9_919=float3(0.0);
if (l9_917==0)
{
l9_919=float3(l9_916,0.0);
}
else
{
if (l9_917==1)
{
l9_919=float3(l9_916.x,(l9_916.y*0.5)+(0.5-(float(l9_918)*0.5)),0.0);
}
else
{
l9_919=float3(l9_916,float(l9_918));
}
}
float3 l9_920=l9_919;
float3 l9_921=l9_920;
float2 l9_922=l9_921.xy;
float l9_923=l9_915;
float4 l9_924=sc_set0.transformPosRotTex.sample(sc_set0.transformPosRotTexSmpSC,l9_922,level(l9_923));
float4 l9_925=l9_924;
float4 l9_926=l9_925;
if (param_110)
{
l9_926=mix(param_111,l9_926,float4(l9_855));
}
float4 l9_927=l9_926;
Color_N25_1=l9_927;
float Output_N0_1=0.0;
float param_113=(*sc_set0.UserUniforms).minRot;
Output_N0_1=param_113;
float Value_N121_1=0.0;
Value_N121_1=Output_N0_1;
float Value_N101_1=0.0;
Value_N101_1=Value_N121_1;
float Output_N9_1=0.0;
float param_114=(*sc_set0.UserUniforms).maxRot;
Output_N9_1=param_114;
float Value_N122_1=0.0;
Value_N122_1=Output_N9_1;
float Value_N102_1=0.0;
Value_N102_1=Value_N122_1;
float Value1_N24_1=0.0;
float Value2_N24_1=0.0;
float4 param_115=Color_N25_1;
float param_117=Value_N101_1;
float param_118=Value_N102_1;
float param_120=Value_N101_1;
float param_121=Value_N102_1;
float2 l9_928=param_115.xy;
float l9_929=param_117;
float l9_930=param_118;
float l9_931=0.99998999;
float2 l9_932=l9_928;
#if (1)
{
l9_932=floor((l9_932*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_933=dot(l9_932,float2(1.0,0.0039215689));
float l9_934=l9_933;
float l9_935=0.0;
float l9_936=l9_931;
float l9_937=l9_929;
float l9_938=l9_930;
float l9_939=l9_937+(((l9_934-l9_935)*(l9_938-l9_937))/(l9_936-l9_935));
float l9_940=l9_939;
float param_116=l9_940;
float2 l9_941=param_115.zw;
float l9_942=param_120;
float l9_943=param_121;
float l9_944=0.99998999;
float2 l9_945=l9_941;
#if (1)
{
l9_945=floor((l9_945*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_946=dot(l9_945,float2(1.0,0.0039215689));
float l9_947=l9_946;
float l9_948=0.0;
float l9_949=l9_944;
float l9_950=l9_942;
float l9_951=l9_943;
float l9_952=l9_950+(((l9_947-l9_948)*(l9_951-l9_950))/(l9_949-l9_948));
float l9_953=l9_952;
float param_119=l9_953;
Value1_N24_1=param_116;
Value2_N24_1=param_119;
float2 Value_N26_1=float2(0.0);
Value_N26_1.x=Value_N100_1;
Value_N26_1.y=(*sc_set0.UserUniforms).Port_Value2_N026;
float4 Color_N29_1=float4(0.0);
int l9_954=0;
if ((int(transformPosRotTexHasSwappedViews_tmp)!=0))
{
int l9_955=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_955=0;
}
else
{
l9_955=gl_InstanceIndex%2;
}
int l9_956=l9_955;
l9_954=1-l9_956;
}
else
{
int l9_957=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_957=0;
}
else
{
l9_957=gl_InstanceIndex%2;
}
int l9_958=l9_957;
l9_954=l9_958;
}
int l9_959=l9_954;
int param_122=transformPosRotTexLayout_tmp;
int param_123=l9_959;
float2 param_124=Value_N26_1;
bool param_125=(int(SC_USE_UV_TRANSFORM_transformPosRotTex_tmp)!=0);
float3x3 param_126=(*sc_set0.UserUniforms).transformPosRotTexTransform;
int2 param_127=int2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex_tmp,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex_tmp);
bool param_128=(int(SC_USE_UV_MIN_MAX_transformPosRotTex_tmp)!=0);
float4 param_129=(*sc_set0.UserUniforms).transformPosRotTexUvMinMax;
bool param_130=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex_tmp)!=0);
float4 param_131=(*sc_set0.UserUniforms).transformPosRotTexBorderColor;
float param_132=0.0;
bool l9_960=param_130&&(!param_128);
float l9_961=1.0;
float l9_962=param_124.x;
int l9_963=param_127.x;
if (l9_963==1)
{
l9_962=fract(l9_962);
}
else
{
if (l9_963==2)
{
float l9_964=fract(l9_962);
float l9_965=l9_962-l9_964;
float l9_966=step(0.25,fract(l9_965*0.5));
l9_962=mix(l9_964,1.0-l9_964,fast::clamp(l9_966,0.0,1.0));
}
}
param_124.x=l9_962;
float l9_967=param_124.y;
int l9_968=param_127.y;
if (l9_968==1)
{
l9_967=fract(l9_967);
}
else
{
if (l9_968==2)
{
float l9_969=fract(l9_967);
float l9_970=l9_967-l9_969;
float l9_971=step(0.25,fract(l9_970*0.5));
l9_967=mix(l9_969,1.0-l9_969,fast::clamp(l9_971,0.0,1.0));
}
}
param_124.y=l9_967;
if (param_128)
{
bool l9_972=param_130;
bool l9_973;
if (l9_972)
{
l9_973=param_127.x==3;
}
else
{
l9_973=l9_972;
}
float l9_974=param_124.x;
float l9_975=param_129.x;
float l9_976=param_129.z;
bool l9_977=l9_973;
float l9_978=l9_961;
float l9_979=fast::clamp(l9_974,l9_975,l9_976);
float l9_980=step(abs(l9_974-l9_979),9.9999997e-06);
l9_978*=(l9_980+((1.0-float(l9_977))*(1.0-l9_980)));
l9_974=l9_979;
param_124.x=l9_974;
l9_961=l9_978;
bool l9_981=param_130;
bool l9_982;
if (l9_981)
{
l9_982=param_127.y==3;
}
else
{
l9_982=l9_981;
}
float l9_983=param_124.y;
float l9_984=param_129.y;
float l9_985=param_129.w;
bool l9_986=l9_982;
float l9_987=l9_961;
float l9_988=fast::clamp(l9_983,l9_984,l9_985);
float l9_989=step(abs(l9_983-l9_988),9.9999997e-06);
l9_987*=(l9_989+((1.0-float(l9_986))*(1.0-l9_989)));
l9_983=l9_988;
param_124.y=l9_983;
l9_961=l9_987;
}
float2 l9_990=param_124;
bool l9_991=param_125;
float3x3 l9_992=param_126;
if (l9_991)
{
l9_990=float2((l9_992*float3(l9_990,1.0)).xy);
}
float2 l9_993=l9_990;
float2 l9_994=l9_993;
float2 l9_995=l9_994;
param_124=l9_995;
float l9_996=param_124.x;
int l9_997=param_127.x;
bool l9_998=l9_960;
float l9_999=l9_961;
if ((l9_997==0)||(l9_997==3))
{
float l9_1000=l9_996;
float l9_1001=0.0;
float l9_1002=1.0;
bool l9_1003=l9_998;
float l9_1004=l9_999;
float l9_1005=fast::clamp(l9_1000,l9_1001,l9_1002);
float l9_1006=step(abs(l9_1000-l9_1005),9.9999997e-06);
l9_1004*=(l9_1006+((1.0-float(l9_1003))*(1.0-l9_1006)));
l9_1000=l9_1005;
l9_996=l9_1000;
l9_999=l9_1004;
}
param_124.x=l9_996;
l9_961=l9_999;
float l9_1007=param_124.y;
int l9_1008=param_127.y;
bool l9_1009=l9_960;
float l9_1010=l9_961;
if ((l9_1008==0)||(l9_1008==3))
{
float l9_1011=l9_1007;
float l9_1012=0.0;
float l9_1013=1.0;
bool l9_1014=l9_1009;
float l9_1015=l9_1010;
float l9_1016=fast::clamp(l9_1011,l9_1012,l9_1013);
float l9_1017=step(abs(l9_1011-l9_1016),9.9999997e-06);
l9_1015*=(l9_1017+((1.0-float(l9_1014))*(1.0-l9_1017)));
l9_1011=l9_1016;
l9_1007=l9_1011;
l9_1010=l9_1015;
}
param_124.y=l9_1007;
l9_961=l9_1010;
float2 l9_1018=param_124;
int l9_1019=param_122;
int l9_1020=param_123;
float l9_1021=param_132;
float2 l9_1022=l9_1018;
int l9_1023=l9_1019;
int l9_1024=l9_1020;
float3 l9_1025=float3(0.0);
if (l9_1023==0)
{
l9_1025=float3(l9_1022,0.0);
}
else
{
if (l9_1023==1)
{
l9_1025=float3(l9_1022.x,(l9_1022.y*0.5)+(0.5-(float(l9_1024)*0.5)),0.0);
}
else
{
l9_1025=float3(l9_1022,float(l9_1024));
}
}
float3 l9_1026=l9_1025;
float3 l9_1027=l9_1026;
float2 l9_1028=l9_1027.xy;
float l9_1029=l9_1021;
float4 l9_1030=sc_set0.transformPosRotTex.sample(sc_set0.transformPosRotTexSmpSC,l9_1028,level(l9_1029));
float4 l9_1031=l9_1030;
float4 l9_1032=l9_1031;
if (param_130)
{
l9_1032=mix(param_131,l9_1032,float4(l9_961));
}
float4 l9_1033=l9_1032;
Color_N29_1=l9_1033;
float Value1_N27_1=0.0;
float Value2_N27_1=0.0;
float4 param_133=Color_N29_1;
float param_135=Value_N101_1;
float param_136=Value_N102_1;
float param_138=Value_N101_1;
float param_139=Value_N102_1;
float2 l9_1034=param_133.xy;
float l9_1035=param_135;
float l9_1036=param_136;
float l9_1037=0.99998999;
float2 l9_1038=l9_1034;
#if (1)
{
l9_1038=floor((l9_1038*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_1039=dot(l9_1038,float2(1.0,0.0039215689));
float l9_1040=l9_1039;
float l9_1041=0.0;
float l9_1042=l9_1037;
float l9_1043=l9_1035;
float l9_1044=l9_1036;
float l9_1045=l9_1043+(((l9_1040-l9_1041)*(l9_1044-l9_1043))/(l9_1042-l9_1041));
float l9_1046=l9_1045;
float param_134=l9_1046;
float2 l9_1047=param_133.zw;
float l9_1048=param_138;
float l9_1049=param_139;
float l9_1050=0.99998999;
float2 l9_1051=l9_1047;
#if (1)
{
l9_1051=floor((l9_1051*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_1052=dot(l9_1051,float2(1.0,0.0039215689));
float l9_1053=l9_1052;
float l9_1054=0.0;
float l9_1055=l9_1050;
float l9_1056=l9_1048;
float l9_1057=l9_1049;
float l9_1058=l9_1056+(((l9_1053-l9_1054)*(l9_1057-l9_1056))/(l9_1055-l9_1054));
float l9_1059=l9_1058;
float param_137=l9_1059;
Value1_N27_1=param_134;
Value2_N27_1=param_137;
float4 Value_N34_1=float4(0.0);
Value_N34_1.x=Value1_N24_1;
Value_N34_1.y=Value2_N24_1;
Value_N34_1.z=Value1_N27_1;
Value_N34_1.w=Value2_N27_1;
float4 Value_N76=float4(0.0);
Value_N76=Value_N34_1;
float Value1_N77=0.0;
float Value2_N77=0.0;
float Value3_N77=0.0;
float Value4_N77=0.0;
float4 param_140=Value_N76;
float param_141=param_140.x;
float param_142=param_140.y;
float param_143=param_140.z;
float param_144=param_140.w;
Value1_N77=param_141;
Value2_N77=param_142;
Value3_N77=param_143;
Value4_N77=param_144;
float3 Value_N78=float3(0.0);
Value_N78.x=Value1_N77;
Value_N78.y=Value2_N77;
Value_N78.z=Value3_N77;
float3 Result_N79=float3(0.0);
Result_N79=cross(Value_N75,Value_N78);
float3 Output_N80=float3(0.0);
Output_N80=Value_N75*float3(Value4_N77);
float3 Output_N81=float3(0.0);
Output_N81=Result_N79-Output_N80;
float3 Result_N82=float3(0.0);
Result_N82=cross(Output_N81,Value_N78);
float3 Output_N83=float3(0.0);
Output_N83=Result_N82*float3((*sc_set0.UserUniforms).Port_Input1_N083);
float3 Output_N84=float3(0.0);
Output_N84=Output_N83+Value_N75;
float3 Export_N85=float3(0.0);
Export_N85=Output_N84;
float3 Export_N99=float3(0.0);
Export_N99=Export_N85;
float3 Export_N124=float3(0.0);
Export_N124=Export_N99;
WorldNormal=Export_N124;
float3 Tangent_N72=float3(0.0);
Tangent_N72=Globals.VertexTangent_ObjectSpace;
float3 Value_N63=float3(0.0);
Value_N63=Tangent_N72;
float InstanceID_N13_2=0.0;
int l9_1060=gl_InstanceIndex;
InstanceID_N13_2=float(l9_1060);
float Output_N18_2=0.0;
Output_N18_2=InstanceID_N13_2+(*sc_set0.UserUniforms).Port_Input1_N018;
float Output_N15_2=0.0;
float param_145=(*sc_set0.UserUniforms).maxInstanceCount;
Output_N15_2=param_145;
float Value_N125_2=0.0;
Value_N125_2=Output_N15_2;
float Output_N16_2=0.0;
Output_N16_2=Output_N18_2/(Value_N125_2+1.234e-06);
float Value_N100_2=0.0;
Value_N100_2=Output_N16_2;
float2 Value_N19_2=float2(0.0);
Value_N19_2.x=Value_N100_2;
Value_N19_2.y=(*sc_set0.UserUniforms).Port_Value2_N019;
float4 Color_N25_2=float4(0.0);
int l9_1061=0;
if ((int(transformPosRotTexHasSwappedViews_tmp)!=0))
{
int l9_1062=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1062=0;
}
else
{
l9_1062=gl_InstanceIndex%2;
}
int l9_1063=l9_1062;
l9_1061=1-l9_1063;
}
else
{
int l9_1064=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1064=0;
}
else
{
l9_1064=gl_InstanceIndex%2;
}
int l9_1065=l9_1064;
l9_1061=l9_1065;
}
int l9_1066=l9_1061;
int param_146=transformPosRotTexLayout_tmp;
int param_147=l9_1066;
float2 param_148=Value_N19_2;
bool param_149=(int(SC_USE_UV_TRANSFORM_transformPosRotTex_tmp)!=0);
float3x3 param_150=(*sc_set0.UserUniforms).transformPosRotTexTransform;
int2 param_151=int2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex_tmp,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex_tmp);
bool param_152=(int(SC_USE_UV_MIN_MAX_transformPosRotTex_tmp)!=0);
float4 param_153=(*sc_set0.UserUniforms).transformPosRotTexUvMinMax;
bool param_154=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex_tmp)!=0);
float4 param_155=(*sc_set0.UserUniforms).transformPosRotTexBorderColor;
float param_156=0.0;
bool l9_1067=param_154&&(!param_152);
float l9_1068=1.0;
float l9_1069=param_148.x;
int l9_1070=param_151.x;
if (l9_1070==1)
{
l9_1069=fract(l9_1069);
}
else
{
if (l9_1070==2)
{
float l9_1071=fract(l9_1069);
float l9_1072=l9_1069-l9_1071;
float l9_1073=step(0.25,fract(l9_1072*0.5));
l9_1069=mix(l9_1071,1.0-l9_1071,fast::clamp(l9_1073,0.0,1.0));
}
}
param_148.x=l9_1069;
float l9_1074=param_148.y;
int l9_1075=param_151.y;
if (l9_1075==1)
{
l9_1074=fract(l9_1074);
}
else
{
if (l9_1075==2)
{
float l9_1076=fract(l9_1074);
float l9_1077=l9_1074-l9_1076;
float l9_1078=step(0.25,fract(l9_1077*0.5));
l9_1074=mix(l9_1076,1.0-l9_1076,fast::clamp(l9_1078,0.0,1.0));
}
}
param_148.y=l9_1074;
if (param_152)
{
bool l9_1079=param_154;
bool l9_1080;
if (l9_1079)
{
l9_1080=param_151.x==3;
}
else
{
l9_1080=l9_1079;
}
float l9_1081=param_148.x;
float l9_1082=param_153.x;
float l9_1083=param_153.z;
bool l9_1084=l9_1080;
float l9_1085=l9_1068;
float l9_1086=fast::clamp(l9_1081,l9_1082,l9_1083);
float l9_1087=step(abs(l9_1081-l9_1086),9.9999997e-06);
l9_1085*=(l9_1087+((1.0-float(l9_1084))*(1.0-l9_1087)));
l9_1081=l9_1086;
param_148.x=l9_1081;
l9_1068=l9_1085;
bool l9_1088=param_154;
bool l9_1089;
if (l9_1088)
{
l9_1089=param_151.y==3;
}
else
{
l9_1089=l9_1088;
}
float l9_1090=param_148.y;
float l9_1091=param_153.y;
float l9_1092=param_153.w;
bool l9_1093=l9_1089;
float l9_1094=l9_1068;
float l9_1095=fast::clamp(l9_1090,l9_1091,l9_1092);
float l9_1096=step(abs(l9_1090-l9_1095),9.9999997e-06);
l9_1094*=(l9_1096+((1.0-float(l9_1093))*(1.0-l9_1096)));
l9_1090=l9_1095;
param_148.y=l9_1090;
l9_1068=l9_1094;
}
float2 l9_1097=param_148;
bool l9_1098=param_149;
float3x3 l9_1099=param_150;
if (l9_1098)
{
l9_1097=float2((l9_1099*float3(l9_1097,1.0)).xy);
}
float2 l9_1100=l9_1097;
float2 l9_1101=l9_1100;
float2 l9_1102=l9_1101;
param_148=l9_1102;
float l9_1103=param_148.x;
int l9_1104=param_151.x;
bool l9_1105=l9_1067;
float l9_1106=l9_1068;
if ((l9_1104==0)||(l9_1104==3))
{
float l9_1107=l9_1103;
float l9_1108=0.0;
float l9_1109=1.0;
bool l9_1110=l9_1105;
float l9_1111=l9_1106;
float l9_1112=fast::clamp(l9_1107,l9_1108,l9_1109);
float l9_1113=step(abs(l9_1107-l9_1112),9.9999997e-06);
l9_1111*=(l9_1113+((1.0-float(l9_1110))*(1.0-l9_1113)));
l9_1107=l9_1112;
l9_1103=l9_1107;
l9_1106=l9_1111;
}
param_148.x=l9_1103;
l9_1068=l9_1106;
float l9_1114=param_148.y;
int l9_1115=param_151.y;
bool l9_1116=l9_1067;
float l9_1117=l9_1068;
if ((l9_1115==0)||(l9_1115==3))
{
float l9_1118=l9_1114;
float l9_1119=0.0;
float l9_1120=1.0;
bool l9_1121=l9_1116;
float l9_1122=l9_1117;
float l9_1123=fast::clamp(l9_1118,l9_1119,l9_1120);
float l9_1124=step(abs(l9_1118-l9_1123),9.9999997e-06);
l9_1122*=(l9_1124+((1.0-float(l9_1121))*(1.0-l9_1124)));
l9_1118=l9_1123;
l9_1114=l9_1118;
l9_1117=l9_1122;
}
param_148.y=l9_1114;
l9_1068=l9_1117;
float2 l9_1125=param_148;
int l9_1126=param_146;
int l9_1127=param_147;
float l9_1128=param_156;
float2 l9_1129=l9_1125;
int l9_1130=l9_1126;
int l9_1131=l9_1127;
float3 l9_1132=float3(0.0);
if (l9_1130==0)
{
l9_1132=float3(l9_1129,0.0);
}
else
{
if (l9_1130==1)
{
l9_1132=float3(l9_1129.x,(l9_1129.y*0.5)+(0.5-(float(l9_1131)*0.5)),0.0);
}
else
{
l9_1132=float3(l9_1129,float(l9_1131));
}
}
float3 l9_1133=l9_1132;
float3 l9_1134=l9_1133;
float2 l9_1135=l9_1134.xy;
float l9_1136=l9_1128;
float4 l9_1137=sc_set0.transformPosRotTex.sample(sc_set0.transformPosRotTexSmpSC,l9_1135,level(l9_1136));
float4 l9_1138=l9_1137;
float4 l9_1139=l9_1138;
if (param_154)
{
l9_1139=mix(param_155,l9_1139,float4(l9_1068));
}
float4 l9_1140=l9_1139;
Color_N25_2=l9_1140;
float Output_N0_2=0.0;
float param_157=(*sc_set0.UserUniforms).minRot;
Output_N0_2=param_157;
float Value_N121_2=0.0;
Value_N121_2=Output_N0_2;
float Value_N101_2=0.0;
Value_N101_2=Value_N121_2;
float Output_N9_2=0.0;
float param_158=(*sc_set0.UserUniforms).maxRot;
Output_N9_2=param_158;
float Value_N122_2=0.0;
Value_N122_2=Output_N9_2;
float Value_N102_2=0.0;
Value_N102_2=Value_N122_2;
float Value1_N24_2=0.0;
float Value2_N24_2=0.0;
float4 param_159=Color_N25_2;
float param_161=Value_N101_2;
float param_162=Value_N102_2;
float param_164=Value_N101_2;
float param_165=Value_N102_2;
float2 l9_1141=param_159.xy;
float l9_1142=param_161;
float l9_1143=param_162;
float l9_1144=0.99998999;
float2 l9_1145=l9_1141;
#if (1)
{
l9_1145=floor((l9_1145*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_1146=dot(l9_1145,float2(1.0,0.0039215689));
float l9_1147=l9_1146;
float l9_1148=0.0;
float l9_1149=l9_1144;
float l9_1150=l9_1142;
float l9_1151=l9_1143;
float l9_1152=l9_1150+(((l9_1147-l9_1148)*(l9_1151-l9_1150))/(l9_1149-l9_1148));
float l9_1153=l9_1152;
float param_160=l9_1153;
float2 l9_1154=param_159.zw;
float l9_1155=param_164;
float l9_1156=param_165;
float l9_1157=0.99998999;
float2 l9_1158=l9_1154;
#if (1)
{
l9_1158=floor((l9_1158*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_1159=dot(l9_1158,float2(1.0,0.0039215689));
float l9_1160=l9_1159;
float l9_1161=0.0;
float l9_1162=l9_1157;
float l9_1163=l9_1155;
float l9_1164=l9_1156;
float l9_1165=l9_1163+(((l9_1160-l9_1161)*(l9_1164-l9_1163))/(l9_1162-l9_1161));
float l9_1166=l9_1165;
float param_163=l9_1166;
Value1_N24_2=param_160;
Value2_N24_2=param_163;
float2 Value_N26_2=float2(0.0);
Value_N26_2.x=Value_N100_2;
Value_N26_2.y=(*sc_set0.UserUniforms).Port_Value2_N026;
float4 Color_N29_2=float4(0.0);
int l9_1167=0;
if ((int(transformPosRotTexHasSwappedViews_tmp)!=0))
{
int l9_1168=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1168=0;
}
else
{
l9_1168=gl_InstanceIndex%2;
}
int l9_1169=l9_1168;
l9_1167=1-l9_1169;
}
else
{
int l9_1170=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1170=0;
}
else
{
l9_1170=gl_InstanceIndex%2;
}
int l9_1171=l9_1170;
l9_1167=l9_1171;
}
int l9_1172=l9_1167;
int param_166=transformPosRotTexLayout_tmp;
int param_167=l9_1172;
float2 param_168=Value_N26_2;
bool param_169=(int(SC_USE_UV_TRANSFORM_transformPosRotTex_tmp)!=0);
float3x3 param_170=(*sc_set0.UserUniforms).transformPosRotTexTransform;
int2 param_171=int2(SC_SOFTWARE_WRAP_MODE_U_transformPosRotTex_tmp,SC_SOFTWARE_WRAP_MODE_V_transformPosRotTex_tmp);
bool param_172=(int(SC_USE_UV_MIN_MAX_transformPosRotTex_tmp)!=0);
float4 param_173=(*sc_set0.UserUniforms).transformPosRotTexUvMinMax;
bool param_174=(int(SC_USE_CLAMP_TO_BORDER_transformPosRotTex_tmp)!=0);
float4 param_175=(*sc_set0.UserUniforms).transformPosRotTexBorderColor;
float param_176=0.0;
bool l9_1173=param_174&&(!param_172);
float l9_1174=1.0;
float l9_1175=param_168.x;
int l9_1176=param_171.x;
if (l9_1176==1)
{
l9_1175=fract(l9_1175);
}
else
{
if (l9_1176==2)
{
float l9_1177=fract(l9_1175);
float l9_1178=l9_1175-l9_1177;
float l9_1179=step(0.25,fract(l9_1178*0.5));
l9_1175=mix(l9_1177,1.0-l9_1177,fast::clamp(l9_1179,0.0,1.0));
}
}
param_168.x=l9_1175;
float l9_1180=param_168.y;
int l9_1181=param_171.y;
if (l9_1181==1)
{
l9_1180=fract(l9_1180);
}
else
{
if (l9_1181==2)
{
float l9_1182=fract(l9_1180);
float l9_1183=l9_1180-l9_1182;
float l9_1184=step(0.25,fract(l9_1183*0.5));
l9_1180=mix(l9_1182,1.0-l9_1182,fast::clamp(l9_1184,0.0,1.0));
}
}
param_168.y=l9_1180;
if (param_172)
{
bool l9_1185=param_174;
bool l9_1186;
if (l9_1185)
{
l9_1186=param_171.x==3;
}
else
{
l9_1186=l9_1185;
}
float l9_1187=param_168.x;
float l9_1188=param_173.x;
float l9_1189=param_173.z;
bool l9_1190=l9_1186;
float l9_1191=l9_1174;
float l9_1192=fast::clamp(l9_1187,l9_1188,l9_1189);
float l9_1193=step(abs(l9_1187-l9_1192),9.9999997e-06);
l9_1191*=(l9_1193+((1.0-float(l9_1190))*(1.0-l9_1193)));
l9_1187=l9_1192;
param_168.x=l9_1187;
l9_1174=l9_1191;
bool l9_1194=param_174;
bool l9_1195;
if (l9_1194)
{
l9_1195=param_171.y==3;
}
else
{
l9_1195=l9_1194;
}
float l9_1196=param_168.y;
float l9_1197=param_173.y;
float l9_1198=param_173.w;
bool l9_1199=l9_1195;
float l9_1200=l9_1174;
float l9_1201=fast::clamp(l9_1196,l9_1197,l9_1198);
float l9_1202=step(abs(l9_1196-l9_1201),9.9999997e-06);
l9_1200*=(l9_1202+((1.0-float(l9_1199))*(1.0-l9_1202)));
l9_1196=l9_1201;
param_168.y=l9_1196;
l9_1174=l9_1200;
}
float2 l9_1203=param_168;
bool l9_1204=param_169;
float3x3 l9_1205=param_170;
if (l9_1204)
{
l9_1203=float2((l9_1205*float3(l9_1203,1.0)).xy);
}
float2 l9_1206=l9_1203;
float2 l9_1207=l9_1206;
float2 l9_1208=l9_1207;
param_168=l9_1208;
float l9_1209=param_168.x;
int l9_1210=param_171.x;
bool l9_1211=l9_1173;
float l9_1212=l9_1174;
if ((l9_1210==0)||(l9_1210==3))
{
float l9_1213=l9_1209;
float l9_1214=0.0;
float l9_1215=1.0;
bool l9_1216=l9_1211;
float l9_1217=l9_1212;
float l9_1218=fast::clamp(l9_1213,l9_1214,l9_1215);
float l9_1219=step(abs(l9_1213-l9_1218),9.9999997e-06);
l9_1217*=(l9_1219+((1.0-float(l9_1216))*(1.0-l9_1219)));
l9_1213=l9_1218;
l9_1209=l9_1213;
l9_1212=l9_1217;
}
param_168.x=l9_1209;
l9_1174=l9_1212;
float l9_1220=param_168.y;
int l9_1221=param_171.y;
bool l9_1222=l9_1173;
float l9_1223=l9_1174;
if ((l9_1221==0)||(l9_1221==3))
{
float l9_1224=l9_1220;
float l9_1225=0.0;
float l9_1226=1.0;
bool l9_1227=l9_1222;
float l9_1228=l9_1223;
float l9_1229=fast::clamp(l9_1224,l9_1225,l9_1226);
float l9_1230=step(abs(l9_1224-l9_1229),9.9999997e-06);
l9_1228*=(l9_1230+((1.0-float(l9_1227))*(1.0-l9_1230)));
l9_1224=l9_1229;
l9_1220=l9_1224;
l9_1223=l9_1228;
}
param_168.y=l9_1220;
l9_1174=l9_1223;
float2 l9_1231=param_168;
int l9_1232=param_166;
int l9_1233=param_167;
float l9_1234=param_176;
float2 l9_1235=l9_1231;
int l9_1236=l9_1232;
int l9_1237=l9_1233;
float3 l9_1238=float3(0.0);
if (l9_1236==0)
{
l9_1238=float3(l9_1235,0.0);
}
else
{
if (l9_1236==1)
{
l9_1238=float3(l9_1235.x,(l9_1235.y*0.5)+(0.5-(float(l9_1237)*0.5)),0.0);
}
else
{
l9_1238=float3(l9_1235,float(l9_1237));
}
}
float3 l9_1239=l9_1238;
float3 l9_1240=l9_1239;
float2 l9_1241=l9_1240.xy;
float l9_1242=l9_1234;
float4 l9_1243=sc_set0.transformPosRotTex.sample(sc_set0.transformPosRotTexSmpSC,l9_1241,level(l9_1242));
float4 l9_1244=l9_1243;
float4 l9_1245=l9_1244;
if (param_174)
{
l9_1245=mix(param_175,l9_1245,float4(l9_1174));
}
float4 l9_1246=l9_1245;
Color_N29_2=l9_1246;
float Value1_N27_2=0.0;
float Value2_N27_2=0.0;
float4 param_177=Color_N29_2;
float param_179=Value_N101_2;
float param_180=Value_N102_2;
float param_182=Value_N101_2;
float param_183=Value_N102_2;
float2 l9_1247=param_177.xy;
float l9_1248=param_179;
float l9_1249=param_180;
float l9_1250=0.99998999;
float2 l9_1251=l9_1247;
#if (1)
{
l9_1251=floor((l9_1251*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_1252=dot(l9_1251,float2(1.0,0.0039215689));
float l9_1253=l9_1252;
float l9_1254=0.0;
float l9_1255=l9_1250;
float l9_1256=l9_1248;
float l9_1257=l9_1249;
float l9_1258=l9_1256+(((l9_1253-l9_1254)*(l9_1257-l9_1256))/(l9_1255-l9_1254));
float l9_1259=l9_1258;
float param_178=l9_1259;
float2 l9_1260=param_177.zw;
float l9_1261=param_182;
float l9_1262=param_183;
float l9_1263=0.99998999;
float2 l9_1264=l9_1260;
#if (1)
{
l9_1264=floor((l9_1264*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_1265=dot(l9_1264,float2(1.0,0.0039215689));
float l9_1266=l9_1265;
float l9_1267=0.0;
float l9_1268=l9_1263;
float l9_1269=l9_1261;
float l9_1270=l9_1262;
float l9_1271=l9_1269+(((l9_1266-l9_1267)*(l9_1270-l9_1269))/(l9_1268-l9_1267));
float l9_1272=l9_1271;
float param_181=l9_1272;
Value1_N27_2=param_178;
Value2_N27_2=param_181;
float4 Value_N34_2=float4(0.0);
Value_N34_2.x=Value1_N24_2;
Value_N34_2.y=Value2_N24_2;
Value_N34_2.z=Value1_N27_2;
Value_N34_2.w=Value2_N27_2;
float4 Value_N64=float4(0.0);
Value_N64=Value_N34_2;
float Value1_N65=0.0;
float Value2_N65=0.0;
float Value3_N65=0.0;
float Value4_N65=0.0;
float4 param_184=Value_N64;
float param_185=param_184.x;
float param_186=param_184.y;
float param_187=param_184.z;
float param_188=param_184.w;
Value1_N65=param_185;
Value2_N65=param_186;
Value3_N65=param_187;
Value4_N65=param_188;
float3 Value_N66=float3(0.0);
Value_N66.x=Value1_N65;
Value_N66.y=Value2_N65;
Value_N66.z=Value3_N65;
float3 Result_N67=float3(0.0);
Result_N67=cross(Value_N63,Value_N66);
float3 Output_N68=float3(0.0);
Output_N68=Value_N63*float3(Value4_N65);
float3 Output_N69=float3(0.0);
Output_N69=Result_N67-Output_N68;
float3 Result_N70=float3(0.0);
Result_N70=cross(Output_N69,Value_N66);
float3 Output_N71=float3(0.0);
Output_N71=Result_N70*float3((*sc_set0.UserUniforms).Port_Input1_N071);
float3 Output_N86=float3(0.0);
Output_N86=Output_N71+Value_N63;
float3 Export_N87=float3(0.0);
Export_N87=Output_N86;
float3 Export_N98=float3(0.0);
Export_N98=Export_N87;
float3 Export_N123=float3(0.0);
Export_N123=Export_N98;
WorldTangent=Export_N123;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
WorldPosition=out.varPos;
WorldNormal=out.varNormal;
WorldTangent=out.varTangent.xyz;
}
sc_Vertex_t param_189=v;
float3 param_190=WorldPosition;
float3 param_191=WorldNormal;
float3 param_192=WorldTangent;
float4 param_193=v.position;
out.varPos=param_190;
out.varNormal=normalize(param_191);
float3 l9_1273=normalize(param_192);
out.varTangent=float4(l9_1273.x,l9_1273.y,l9_1273.z,out.varTangent.w);
out.varTangent.w=in.tangent.w;
if ((int(UseViewSpaceDepthVariant_tmp)!=0)&&(((int(sc_OITDepthGatherPass_tmp)!=0)||(int(sc_OITCompositingPass_tmp)!=0))||(int(sc_OITDepthBoundsPass_tmp)!=0)))
{
float4 l9_1274=param_189.position;
float4 l9_1275=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
int l9_1276=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1276=0;
}
else
{
l9_1276=gl_InstanceIndex%2;
}
int l9_1277=l9_1276;
l9_1275=(*sc_set0.UserUniforms).sc_ProjectionMatrixInverseArray[l9_1277]*l9_1274;
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_1278=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1278=0;
}
else
{
l9_1278=gl_InstanceIndex%2;
}
int l9_1279=l9_1278;
l9_1275=(*sc_set0.UserUniforms).sc_ViewMatrixArray[l9_1279]*l9_1274;
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_1280=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1280=0;
}
else
{
l9_1280=gl_InstanceIndex%2;
}
int l9_1281=l9_1280;
l9_1275=(*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_1281]*l9_1274;
}
else
{
l9_1275=l9_1274;
}
}
}
float4 l9_1282=l9_1275;
out.varViewSpaceDepth=-l9_1282.z;
}
float4 l9_1283=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
l9_1283=param_193;
}
else
{
if (sc_RenderingSpace_tmp==4)
{
int l9_1284=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1284=0;
}
else
{
l9_1284=gl_InstanceIndex%2;
}
int l9_1285=l9_1284;
l9_1283=((*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_1285]*param_189.position)*float4(1.0/(*sc_set0.UserUniforms).sc_Camera.aspect,1.0,1.0,1.0);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_1286=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1286=0;
}
else
{
l9_1286=gl_InstanceIndex%2;
}
int l9_1287=l9_1286;
l9_1283=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_1287]*float4(out.varPos,1.0);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_1288=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1288=0;
}
else
{
l9_1288=gl_InstanceIndex%2;
}
int l9_1289=l9_1288;
l9_1283=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_1289]*float4(out.varPos,1.0);
}
}
}
}
out.varPackedTex=float4(param_189.texture0,param_189.texture1);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float4 l9_1290=param_189.position;
float4 l9_1291=l9_1290;
if (sc_RenderingSpace_tmp==1)
{
l9_1291=(*sc_set0.UserUniforms).sc_ModelMatrix*l9_1290;
}
float4 l9_1292=(*sc_set0.UserUniforms).sc_ProjectorMatrix*l9_1291;
float2 l9_1293=((l9_1292.xy/float2(l9_1292.w))*0.5)+float2(0.5);
out.varShadowTex=l9_1293;
}
float4 l9_1294=l9_1283;
if (sc_DepthBufferMode_tmp==1)
{
int l9_1295=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1295=0;
}
else
{
l9_1295=gl_InstanceIndex%2;
}
int l9_1296=l9_1295;
if ((*sc_set0.UserUniforms).sc_ProjectionMatrixArray[l9_1296][2].w!=0.0)
{
float l9_1297=2.0/log2((*sc_set0.UserUniforms).sc_Camera.clipPlanes.y+1.0);
l9_1294.z=((log2(fast::max((*sc_set0.UserUniforms).sc_Camera.clipPlanes.x,1.0+l9_1294.w))*l9_1297)-1.0)*l9_1294.w;
}
}
float4 l9_1298=l9_1294;
l9_1283=l9_1298;
float4 l9_1299=l9_1283;
if ((int(sc_TAAEnabled_tmp)!=0))
{
float2 l9_1300=l9_1299.xy+((*sc_set0.UserUniforms).sc_TAAJitterOffset*l9_1299.w);
l9_1299=float4(l9_1300.x,l9_1300.y,l9_1299.z,l9_1299.w);
}
float4 l9_1301=l9_1299;
l9_1283=l9_1301;
float4 l9_1302=l9_1283;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_1302.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_1303=l9_1302;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_1304=dot(l9_1303,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_1305=l9_1304;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_1305;
}
}
float4 l9_1306=float4(l9_1302.x,-l9_1302.y,(l9_1302.z*0.5)+(l9_1302.w*0.5),l9_1302.w);
out.gl_Position=l9_1306;
v=param_189;
if (PreviewInfo.Saved)
{
out.PreviewVertexColor=float4(PreviewInfo.Color.xyz,1.0);
out.PreviewVertexSaved=1.0;
}
return out;
}
} // VERTEX SHADER


namespace SNAP_FS {
struct SurfaceProperties
{
float3 albedo;
float opacity;
float3 normal;
float3 positionWS;
float3 viewDirWS;
float metallic;
float roughness;
float3 emissive;
float3 ao;
float3 specularAo;
float3 bakedShadows;
float3 specColor;
};
struct LightingComponents
{
float3 directDiffuse;
float3 directSpecular;
float3 indirectDiffuse;
float3 indirectSpecular;
float3 emitted;
float3 transmitted;
};
struct LightProperties
{
float3 direction;
float3 color;
float attenuation;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float2 Surface_UVCoord0;
float3 BumpedNormal;
float3 ViewDirWS;
float3 PositionWS;
float3 VertexTangent_WorldSpace;
float3 VertexNormal_WorldSpace;
float3 VertexBinormal_WorldSpace;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
float4 sc_CurrentRenderTargetDims;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float _sc_GetFramebufferColorInvalidUsageMarker;
float shaderComplexityValue;
float sc_DisableFrustumCullingMarker;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float _sc_framebufferFetchMarker;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
int receivesRayTracedReflections;
int receivesRayTracedShadows;
int receivesRayTracedDiffuseIndirect;
int receivesRayTracedAo;
float4 sc_RayTracedReflectionTextureSize;
float4 sc_RayTracedReflectionTextureDims;
float4 sc_RayTracedReflectionTextureView;
float4 sc_RayTracedShadowTextureSize;
float4 sc_RayTracedShadowTextureDims;
float4 sc_RayTracedShadowTextureView;
float4 sc_RayTracedDiffIndTextureSize;
float4 sc_RayTracedDiffIndTextureDims;
float4 sc_RayTracedDiffIndTextureView;
float4 sc_RayTracedAoTextureSize;
float4 sc_RayTracedAoTextureDims;
float4 sc_RayTracedAoTextureView;
float receiver_mask;
float3 OriginNormalizationScale;
float3 OriginNormalizationScaleInv;
float3 OriginNormalizationOffset;
int receiverId;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed[32];
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float4 transformPosRotTexSize;
float4 transformPosRotTexDims;
float4 transformPosRotTexView;
float3x3 transformPosRotTexTransform;
float4 transformPosRotTexUvMinMax;
float4 transformPosRotTexBorderColor;
float maxInstanceCount;
float minPos;
float maxPos;
float4 transformScaleTexSize;
float4 transformScaleTexDims;
float4 transformScaleTexView;
float3x3 transformScaleTexTransform;
float4 transformScaleTexUvMinMax;
float4 transformScaleTexBorderColor;
float minSca;
float maxSca;
float Tweak_N112;
float Tweak_N110;
float Tweak_N111;
float minRot;
float maxRot;
float Tweak_N144;
float Tweak_N142;
float Tweak_N143;
float4 Tweak_N167Size;
float4 Tweak_N167Dims;
float4 Tweak_N167View;
float3x3 Tweak_N167Transform;
float4 Tweak_N167UvMinMax;
float4 Tweak_N167BorderColor;
float4 Tweak_N175;
float Tweak_N17;
float4 Tweak_N168Size;
float4 Tweak_N168Dims;
float4 Tweak_N168View;
float3x3 Tweak_N168Transform;
float4 Tweak_N168UvMinMax;
float4 Tweak_N168BorderColor;
float4 Tweak_N169Size;
float4 Tweak_N169Dims;
float4 Tweak_N169View;
float3x3 Tweak_N169Transform;
float4 Tweak_N169UvMinMax;
float4 Tweak_N169BorderColor;
float Port_Input1_N018;
float Port_Import_N125;
float Port_Import_N094;
float Port_Value2_N051;
float Port_Import_N115;
float Port_Import_N091;
float Port_Import_N116;
float Port_Import_N092;
float Port_Value2_N052;
float Port_Value2_N014;
float Port_Value4_N003;
float Port_Import_N109;
float Port_Value2_N028;
float Port_RangeMinA_N040;
float Port_RangeMaxA_N040;
float Port_Import_N119;
float Port_Import_N106;
float Port_Import_N120;
float Port_Import_N107;
float Port_Input1_N011;
float Port_Value1_N061;
float Port_Input0_N179;
float Port_Import_N127;
float Port_Import_N128;
float Port_Multiplier_N089;
float Port_Import_N130;
float Port_Import_N131;
float Port_Import_N135;
float Port_Import_N158;
float Port_Import_N140;
float3 Port_Import_N096;
float3 Port_Import_N039;
float Port_Import_N100;
float Port_Value2_N019;
float Port_Import_N121;
float Port_Import_N101;
float Port_Import_N122;
float Port_Import_N102;
float Port_Value2_N026;
float4 Port_Import_N041;
float Port_Input1_N037;
float3 Port_Import_N090;
float3 Port_Input0_N178;
float Port_Value1_N162;
float Port_Import_N146;
float Port_Import_N147;
float Port_Import_N149;
float Port_Import_N150;
float Port_Import_N154;
float Port_Value3_N162;
float3 Port_Import_N161;
float3 Port_Import_N160;
float3 Port_Import_N075;
float4 Port_Import_N076;
float Port_Input1_N083;
float3 Port_Import_N063;
float4 Port_Import_N064;
float Port_Input1_N071;
float4 Port_Default_N176;
float3 Port_Emissive_N174;
float3 Port_SpecularAO_N174;
};
struct sc_PointLight_t_1
{
bool falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct ssPreviewInfo
{
float4 Color;
bool Saved;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct sc_Set0
{
constant sc_Bones_obj* sc_BonesUBO [[id(0)]];
texture2d<float> Tweak_N167 [[id(1)]];
texture2d<float> Tweak_N168 [[id(2)]];
texture2d<float> Tweak_N169 [[id(3)]];
texture2d<float> intensityTexture [[id(4)]];
texture2d<float> sc_EnvmapDiffuse [[id(5)]];
texture2d<float> sc_EnvmapSpecular [[id(6)]];
texture2d<float> sc_RayTracedAoTexture [[id(15)]];
texture2d<float> sc_RayTracedDiffIndTexture [[id(16)]];
texture2d<float> sc_RayTracedReflectionTexture [[id(17)]];
texture2d<float> sc_RayTracedShadowTexture [[id(18)]];
texture2d<float> sc_SSAOTexture [[id(19)]];
texture2d<float> sc_ScreenTexture [[id(20)]];
texture2d<float> sc_ShadowTexture [[id(21)]];
texture2d<float> transformPosRotTex [[id(23)]];
texture2d<float> transformScaleTex [[id(24)]];
sampler Tweak_N167SmpSC [[id(25)]];
sampler Tweak_N168SmpSC [[id(26)]];
sampler Tweak_N169SmpSC [[id(27)]];
sampler intensityTextureSmpSC [[id(28)]];
sampler sc_EnvmapDiffuseSmpSC [[id(29)]];
sampler sc_EnvmapSpecularSmpSC [[id(30)]];
sampler sc_RayTracedAoTextureSmpSC [[id(32)]];
sampler sc_RayTracedDiffIndTextureSmpSC [[id(33)]];
sampler sc_RayTracedReflectionTextureSmpSC [[id(34)]];
sampler sc_RayTracedShadowTextureSmpSC [[id(35)]];
sampler sc_SSAOTextureSmpSC [[id(36)]];
sampler sc_ScreenTextureSmpSC [[id(37)]];
sampler sc_ShadowTextureSmpSC [[id(38)]];
sampler transformPosRotTexSmpSC [[id(40)]];
sampler transformScaleTexSmpSC [[id(41)]];
constant userUniformsObj* UserUniforms [[id(42)]];
};
struct main_frag_out
{
float4 FragColor0 [[color(0)]];
float4 FragColor1 [[color(1)]];
float4 FragColor2 [[color(2)]];
float4 FragColor3 [[color(3)]];
};
struct main_frag_in
{
float3 varPos [[user(locn0)]];
float3 varNormal [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varPackedTex [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
};
// Implementation of the GLSL mod() function,which is slightly different than Metal fmod()
template<typename Tx,typename Ty>
Tx mod(Tx x,Ty y)
{
return x-y*floor(x/y);
}
float3 evaluateSSAO(thread const float3& positionWS,thread int& varStereoViewID,constant userUniformsObj& UserUniforms,thread texture2d<float> sc_SSAOTexture,thread sampler sc_SSAOTextureSmpSC)
{
if ((int(sc_SSAOEnabled_tmp)!=0))
{
int l9_0=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_0=0;
}
else
{
l9_0=varStereoViewID;
}
int l9_1=l9_0;
float4 clipSpaceCoord=UserUniforms.sc_ViewProjectionMatrixArray[l9_1]*float4(positionWS,1.0);
float3 l9_2=clipSpaceCoord.xyz/float3(clipSpaceCoord.w);
clipSpaceCoord=float4(l9_2.x,l9_2.y,l9_2.z,clipSpaceCoord.w);
float4 shadowSample=sc_SSAOTexture.sample(sc_SSAOTextureSmpSC,((clipSpaceCoord.xy*0.5)+float2(0.5)));
return float3(shadowSample.x);
}
else
{
return float3(1.0);
}
}
float3 calculateDirectSpecular(thread const SurfaceProperties& surfaceProperties,thread const float3& L,thread const float3& V)
{
float r=fast::max(surfaceProperties.roughness,0.029999999);
float3 F0=surfaceProperties.specColor;
float3 N=surfaceProperties.normal;
float3 H=normalize(L+V);
float param=dot(N,L);
float l9_0=fast::clamp(param,0.0,1.0);
float NdotL=l9_0;
float param_1=dot(N,V);
float l9_1=fast::clamp(param_1,0.0,1.0);
float NdotV=l9_1;
float param_2=dot(N,H);
float l9_2=fast::clamp(param_2,0.0,1.0);
float NdotH=l9_2;
float param_3=dot(V,H);
float l9_3=fast::clamp(param_3,0.0,1.0);
float VdotH=l9_3;
if (SC_DEVICE_CLASS_tmp>=2)
{
float param_4=NdotH;
float param_5=r;
float l9_4=param_5*param_5;
float l9_5=l9_4*l9_4;
float l9_6=param_4*param_4;
float l9_7=(l9_6*(l9_5-1.0))+1.0;
float l9_8=l9_7*l9_7;
float l9_9=9.9999999e-09;
float l9_10=l9_5/(l9_8+l9_9);
float param_6=NdotL;
float param_7=NdotV;
float param_8=r;
float l9_11=param_6;
float l9_12=param_8;
float l9_13=l9_12+1.0;
l9_13=(l9_13*l9_13)*0.125;
float l9_14=(l9_11*(1.0-l9_13))+l9_13;
float l9_15=param_7;
float l9_16=param_8;
float l9_17=l9_16+1.0;
l9_17=(l9_17*l9_17)*0.125;
float l9_18=(l9_15*(1.0-l9_17))+l9_17;
float l9_19=1.0/(l9_14*l9_18);
float param_9=VdotH;
float3 param_10=F0;
float l9_20=param_9;
float3 l9_21=param_10;
float3 l9_22=float3(1.0);
float l9_23=1.0-l9_20;
float l9_24=l9_23*l9_23;
float l9_25=(l9_24*l9_24)*l9_23;
float3 l9_26=l9_21+((l9_22-l9_21)*l9_25);
float3 l9_27=l9_26;
return l9_27*(((l9_10*l9_19)*0.25)*NdotL);
}
else
{
float specPower=exp2(11.0-(10.0*r));
float param_11=VdotH;
float3 param_12=F0;
float l9_28=param_11;
float3 l9_29=param_12;
float3 l9_30=float3(1.0);
float l9_31=1.0-l9_28;
float l9_32=l9_31*l9_31;
float l9_33=(l9_32*l9_32)*l9_31;
float3 l9_34=l9_29+((l9_30-l9_29)*l9_33);
float3 l9_35=l9_34;
return ((l9_35*((specPower*0.125)+0.25))*pow(NdotH,specPower))*NdotL;
}
}
float computeDistanceAttenuation(thread const float& distanceToLight,thread const float& falloffEndDistance)
{
float distanceToLightSquared=distanceToLight*distanceToLight;
if (falloffEndDistance==0.0)
{
return 1.0/distanceToLightSquared;
}
float distanceToLightToTheFourth=distanceToLightSquared*distanceToLightSquared;
float falloffEndDistanceToTheFourth=pow(falloffEndDistance,4.0);
return fast::max(fast::min(1.0-(distanceToLightToTheFourth/falloffEndDistanceToTheFourth),1.0),0.0)/distanceToLightSquared;
}
float2 calcSeamlessPanoramicUvsForSampling(thread const float2& uv,thread const float2& topMipRes,thread const float& lod)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float2 thisMipRes=fast::max(float2(1.0),topMipRes/float2(exp2(lod)));
return ((uv*(thisMipRes-float2(1.0)))/thisMipRes)+(float2(0.5)/thisMipRes);
}
else
{
return uv;
}
}
float4 sampleRayTracedIndirectDiffuse(thread int& varStereoViewID,constant userUniformsObj& UserUniforms,thread texture2d<float> sc_RayTracedDiffIndTexture,thread sampler sc_RayTracedDiffIndTextureSmpSC,thread float4& gl_FragCoord)
{
bool l9_0=UserUniforms.receivesRayTracedDiffuseIndirect!=0;
if (l9_0)
{
float4 l9_1=gl_FragCoord;
float2 l9_2=l9_1.xy*UserUniforms.sc_CurrentRenderTargetDims.zw;
float2 p=l9_2;
float2 param=p;
int l9_3=0;
if ((int(sc_RayTracedDiffIndTextureHasSwappedViews_tmp)!=0))
{
int l9_4=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4=0;
}
else
{
l9_4=varStereoViewID;
}
int l9_5=l9_4;
l9_3=1-l9_5;
}
else
{
int l9_6=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6=0;
}
else
{
l9_6=varStereoViewID;
}
int l9_7=l9_6;
l9_3=l9_7;
}
int l9_8=l9_3;
float2 l9_9=param;
int l9_10=l9_8;
float2 l9_11=l9_9;
int l9_12=l9_10;
float l9_13=0.0;
float4 l9_14=float4(0.0);
float2 l9_15=l9_11;
int l9_16=sc_RayTracedDiffIndTextureLayout_tmp;
int l9_17=l9_12;
float l9_18=l9_13;
float2 l9_19=l9_15;
int l9_20=l9_16;
int l9_21=l9_17;
float3 l9_22=float3(0.0);
if (l9_20==0)
{
l9_22=float3(l9_19,0.0);
}
else
{
if (l9_20==1)
{
l9_22=float3(l9_19.x,(l9_19.y*0.5)+(0.5-(float(l9_21)*0.5)),0.0);
}
else
{
l9_22=float3(l9_19,float(l9_21));
}
}
float3 l9_23=l9_22;
float3 l9_24=l9_23;
float2 l9_25=l9_24.xy;
float l9_26=l9_18;
float4 l9_27=sc_RayTracedDiffIndTexture.sample(sc_RayTracedDiffIndTextureSmpSC,l9_25,bias(l9_26));
float4 l9_28=l9_27;
l9_14=l9_28;
float4 l9_29=l9_14;
float4 l9_30=l9_29;
float4 l9_31=l9_30;
return l9_31;
}
return float4(0.0);
}
float3 getSpecularDominantDir(thread const float3& N,thread const float3& R,thread const float& roughness)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float lerpFactor=(roughness*roughness)*roughness;
return normalize(mix(R,N,float3(lerpFactor)));
}
else
{
return R;
}
}
float4 sampleRayTracedReflections(thread int& varStereoViewID,constant userUniformsObj& UserUniforms,thread texture2d<float> sc_RayTracedReflectionTexture,thread sampler sc_RayTracedReflectionTextureSmpSC,thread float4& gl_FragCoord)
{
bool l9_0=UserUniforms.receivesRayTracedReflections!=0;
if (!l9_0)
{
return float4(0.0);
}
else
{
float4 l9_1=gl_FragCoord;
float2 l9_2=l9_1.xy*UserUniforms.sc_CurrentRenderTargetDims.zw;
float2 p=l9_2;
float2 param=p;
int l9_3=0;
if ((int(sc_RayTracedReflectionTextureHasSwappedViews_tmp)!=0))
{
int l9_4=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4=0;
}
else
{
l9_4=varStereoViewID;
}
int l9_5=l9_4;
l9_3=1-l9_5;
}
else
{
int l9_6=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6=0;
}
else
{
l9_6=varStereoViewID;
}
int l9_7=l9_6;
l9_3=l9_7;
}
int l9_8=l9_3;
float2 l9_9=param;
int l9_10=l9_8;
float2 l9_11=l9_9;
int l9_12=l9_10;
float l9_13=0.0;
float4 l9_14=float4(0.0);
float2 l9_15=l9_11;
int l9_16=sc_RayTracedReflectionTextureLayout_tmp;
int l9_17=l9_12;
float l9_18=l9_13;
float2 l9_19=l9_15;
int l9_20=l9_16;
int l9_21=l9_17;
float3 l9_22=float3(0.0);
if (l9_20==0)
{
l9_22=float3(l9_19,0.0);
}
else
{
if (l9_20==1)
{
l9_22=float3(l9_19.x,(l9_19.y*0.5)+(0.5-(float(l9_21)*0.5)),0.0);
}
else
{
l9_22=float3(l9_19,float(l9_21));
}
}
float3 l9_23=l9_22;
float3 l9_24=l9_23;
float2 l9_25=l9_24.xy;
float l9_26=l9_18;
float4 l9_27=sc_RayTracedReflectionTexture.sample(sc_RayTracedReflectionTextureSmpSC,l9_25,bias(l9_26));
float4 l9_28=l9_27;
l9_14=l9_28;
float4 l9_29=l9_14;
float4 l9_30=l9_29;
float4 l9_31=l9_30;
return l9_31;
}
}
float3 envBRDFApprox(thread const SurfaceProperties& surfaceProperties,thread const float& NdotV)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float4 r=(float4(-1.0,-0.0275,-0.57200003,0.022)*surfaceProperties.roughness)+float4(1.0,0.0425,1.04,-0.039999999);
float a004=(fast::min(r.x*r.x,exp2((-9.2799997)*NdotV))*r.x)+r.y;
float2 AB=(float2(-1.04,1.04)*a004)+r.zw;
return fast::max((surfaceProperties.specColor*AB.x)+float3(AB.y),float3(0.0));
}
else
{
float3 fresnelMax=fast::max(float3(1.0-surfaceProperties.roughness),surfaceProperties.specColor);
float param=NdotV;
float3 param_1=surfaceProperties.specColor;
float3 param_2=fresnelMax;
float l9_0=1.0-param;
float l9_1=l9_0*l9_0;
float l9_2=(l9_1*l9_1)*l9_0;
float3 l9_3=param_1+((param_2-param_1)*l9_2);
return l9_3;
}
}
float sampleRayTracedAo(thread int& varStereoViewID,constant userUniformsObj& UserUniforms,thread texture2d<float> sc_RayTracedAoTexture,thread sampler sc_RayTracedAoTextureSmpSC,thread float4& gl_FragCoord)
{
bool l9_0=UserUniforms.receivesRayTracedAo!=0;
if (l9_0)
{
float4 l9_1=gl_FragCoord;
float2 l9_2=l9_1.xy*UserUniforms.sc_CurrentRenderTargetDims.zw;
float2 p=l9_2;
float2 param=p;
int l9_3=0;
if ((int(sc_RayTracedAoTextureHasSwappedViews_tmp)!=0))
{
int l9_4=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4=0;
}
else
{
l9_4=varStereoViewID;
}
int l9_5=l9_4;
l9_3=1-l9_5;
}
else
{
int l9_6=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6=0;
}
else
{
l9_6=varStereoViewID;
}
int l9_7=l9_6;
l9_3=l9_7;
}
int l9_8=l9_3;
float2 l9_9=param;
int l9_10=l9_8;
float2 l9_11=l9_9;
int l9_12=l9_10;
float l9_13=0.0;
float4 l9_14=float4(0.0);
float2 l9_15=l9_11;
int l9_16=sc_RayTracedAoTextureLayout_tmp;
int l9_17=l9_12;
float l9_18=l9_13;
float2 l9_19=l9_15;
int l9_20=l9_16;
int l9_21=l9_17;
float3 l9_22=float3(0.0);
if (l9_20==0)
{
l9_22=float3(l9_19,0.0);
}
else
{
if (l9_20==1)
{
l9_22=float3(l9_19.x,(l9_19.y*0.5)+(0.5-(float(l9_21)*0.5)),0.0);
}
else
{
l9_22=float3(l9_19,float(l9_21));
}
}
float3 l9_23=l9_22;
float3 l9_24=l9_23;
float2 l9_25=l9_24.xy;
float l9_26=l9_18;
float4 l9_27=sc_RayTracedAoTexture.sample(sc_RayTracedAoTextureSmpSC,l9_25,bias(l9_26));
float4 l9_28=l9_27;
l9_14=l9_28;
float4 l9_29=l9_14;
float4 l9_30=l9_29;
float4 l9_31=l9_30;
return l9_31.x;
}
return 0.0;
}
float srgbToLinear(thread const float& x)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
return pow(x,2.2);
}
else
{
return x*x;
}
}
float linearToSrgb(thread const float& x)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
return pow(x,0.45454547);
}
else
{
return sqrt(x);
}
}
float transformSingleColor(thread const float& original,thread const float& intMap,thread const float& target)
{
if (((int(BLEND_MODE_REALISTIC_tmp)!=0)||(int(BLEND_MODE_FORGRAY_tmp)!=0))||(int(BLEND_MODE_NOTBRIGHT_tmp)!=0))
{
return original/pow(1.0-target,intMap);
}
else
{
if ((int(BLEND_MODE_DIVISION_tmp)!=0))
{
return original/(1.0-target);
}
else
{
if ((int(BLEND_MODE_BRIGHT_tmp)!=0))
{
return original/pow(1.0-target,2.0-(2.0*original));
}
}
}
return 0.0;
}
float3 transformColor(thread const float& yValue,thread const float3& original,thread const float3& target,thread const float& weight,thread const float& intMap)
{
if ((int(BLEND_MODE_INTENSE_tmp)!=0))
{
float3 param=original;
float3 l9_0=param;
float4 l9_1;
if (l9_0.y<l9_0.z)
{
l9_1=float4(l9_0.zy,-1.0,0.66666669);
}
else
{
l9_1=float4(l9_0.yz,0.0,-0.33333334);
}
float4 l9_2=l9_1;
float4 l9_3;
if (l9_0.x<l9_2.x)
{
l9_3=float4(l9_2.xyw,l9_0.x);
}
else
{
l9_3=float4(l9_0.x,l9_2.yzx);
}
float4 l9_4=l9_3;
float l9_5=l9_4.x-fast::min(l9_4.w,l9_4.y);
float l9_6=abs(((l9_4.w-l9_4.y)/((6.0*l9_5)+1e-07))+l9_4.z);
float l9_7=l9_4.x;
float3 l9_8=float3(l9_6,l9_5,l9_7);
float3 l9_9=l9_8;
float l9_10=l9_9.z-(l9_9.y*0.5);
float l9_11=l9_9.y/((1.0-abs((2.0*l9_10)-1.0))+1e-07);
float3 l9_12=float3(l9_9.x,l9_11,l9_10);
float3 hslOrig=l9_12;
float3 res=float3(0.0);
res.x=target.x;
res.y=target.y;
res.z=hslOrig.z;
float3 param_1=res;
float l9_13=param_1.x;
float l9_14=abs((6.0*l9_13)-3.0)-1.0;
float l9_15=2.0-abs((6.0*l9_13)-2.0);
float l9_16=2.0-abs((6.0*l9_13)-4.0);
float3 l9_17=fast::clamp(float3(l9_14,l9_15,l9_16),float3(0.0),float3(1.0));
float3 l9_18=l9_17;
float l9_19=(1.0-abs((2.0*param_1.z)-1.0))*param_1.y;
l9_18=((l9_18-float3(0.5))*l9_19)+float3(param_1.z);
float3 l9_20=l9_18;
res=l9_20;
float3 resColor=mix(original,res,float3(weight));
return resColor;
}
else
{
float3 tmpColor=float3(0.0);
float param_2=yValue;
float param_3=intMap;
float param_4=target.x;
tmpColor.x=transformSingleColor(param_2,param_3,param_4);
float param_5=yValue;
float param_6=intMap;
float param_7=target.y;
tmpColor.y=transformSingleColor(param_5,param_6,param_7);
float param_8=yValue;
float param_9=intMap;
float param_10=target.z;
tmpColor.z=transformSingleColor(param_8,param_9,param_10);
tmpColor=fast::clamp(tmpColor,float3(0.0),float3(1.0));
float3 resColor_1=mix(original,tmpColor,float3(weight));
return resColor_1;
}
}
float3 definedBlend(thread const float3& a,thread const float3& b,thread int& varStereoViewID,constant userUniformsObj& UserUniforms,thread texture2d<float> intensityTexture,thread sampler intensityTextureSmpSC)
{
if ((int(BLEND_MODE_LIGHTEN_tmp)!=0))
{
return fast::max(a,b);
}
else
{
if ((int(BLEND_MODE_DARKEN_tmp)!=0))
{
return fast::min(a,b);
}
else
{
if ((int(BLEND_MODE_DIVIDE_tmp)!=0))
{
return b/a;
}
else
{
if ((int(BLEND_MODE_AVERAGE_tmp)!=0))
{
return (a+b)*0.5;
}
else
{
if ((int(BLEND_MODE_SUBTRACT_tmp)!=0))
{
return fast::max((a+b)-float3(1.0),float3(0.0));
}
else
{
if ((int(BLEND_MODE_DIFFERENCE_tmp)!=0))
{
return abs(a-b);
}
else
{
if ((int(BLEND_MODE_NEGATION_tmp)!=0))
{
return float3(1.0)-abs((float3(1.0)-a)-b);
}
else
{
if ((int(BLEND_MODE_EXCLUSION_tmp)!=0))
{
return (a+b)-((a*2.0)*b);
}
else
{
if ((int(BLEND_MODE_OVERLAY_tmp)!=0))
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
float l9_1=l9_0;
float l9_2;
if (a.y<0.5)
{
l9_2=(2.0*a.y)*b.y;
}
else
{
l9_2=1.0-((2.0*(1.0-a.y))*(1.0-b.y));
}
float l9_3=l9_2;
float l9_4;
if (a.z<0.5)
{
l9_4=(2.0*a.z)*b.z;
}
else
{
l9_4=1.0-((2.0*(1.0-a.z))*(1.0-b.z));
}
return float3(l9_1,l9_3,l9_4);
}
else
{
if ((int(BLEND_MODE_SOFT_LIGHT_tmp)!=0))
{
return (((float3(1.0)-(b*2.0))*a)*a)+((a*2.0)*b);
}
else
{
if ((int(BLEND_MODE_HARD_LIGHT_tmp)!=0))
{
float l9_5;
if (b.x<0.5)
{
l9_5=(2.0*b.x)*a.x;
}
else
{
l9_5=1.0-((2.0*(1.0-b.x))*(1.0-a.x));
}
float l9_6=l9_5;
float l9_7;
if (b.y<0.5)
{
l9_7=(2.0*b.y)*a.y;
}
else
{
l9_7=1.0-((2.0*(1.0-b.y))*(1.0-a.y));
}
float l9_8=l9_7;
float l9_9;
if (b.z<0.5)
{
l9_9=(2.0*b.z)*a.z;
}
else
{
l9_9=1.0-((2.0*(1.0-b.z))*(1.0-a.z));
}
return float3(l9_6,l9_8,l9_9);
}
else
{
if ((int(BLEND_MODE_COLOR_DODGE_tmp)!=0))
{
float l9_10;
if (b.x==1.0)
{
l9_10=b.x;
}
else
{
l9_10=fast::min(a.x/(1.0-b.x),1.0);
}
float l9_11=l9_10;
float l9_12;
if (b.y==1.0)
{
l9_12=b.y;
}
else
{
l9_12=fast::min(a.y/(1.0-b.y),1.0);
}
float l9_13=l9_12;
float l9_14;
if (b.z==1.0)
{
l9_14=b.z;
}
else
{
l9_14=fast::min(a.z/(1.0-b.z),1.0);
}
return float3(l9_11,l9_13,l9_14);
}
else
{
if ((int(BLEND_MODE_COLOR_BURN_tmp)!=0))
{
float l9_15;
if (b.x==0.0)
{
l9_15=b.x;
}
else
{
l9_15=fast::max(1.0-((1.0-a.x)/b.x),0.0);
}
float l9_16=l9_15;
float l9_17;
if (b.y==0.0)
{
l9_17=b.y;
}
else
{
l9_17=fast::max(1.0-((1.0-a.y)/b.y),0.0);
}
float l9_18=l9_17;
float l9_19;
if (b.z==0.0)
{
l9_19=b.z;
}
else
{
l9_19=fast::max(1.0-((1.0-a.z)/b.z),0.0);
}
return float3(l9_16,l9_18,l9_19);
}
else
{
if ((int(BLEND_MODE_LINEAR_LIGHT_tmp)!=0))
{
float l9_20;
if (b.x<0.5)
{
l9_20=fast::max((a.x+(2.0*b.x))-1.0,0.0);
}
else
{
l9_20=fast::min(a.x+(2.0*(b.x-0.5)),1.0);
}
float l9_21=l9_20;
float l9_22;
if (b.y<0.5)
{
l9_22=fast::max((a.y+(2.0*b.y))-1.0,0.0);
}
else
{
l9_22=fast::min(a.y+(2.0*(b.y-0.5)),1.0);
}
float l9_23=l9_22;
float l9_24;
if (b.z<0.5)
{
l9_24=fast::max((a.z+(2.0*b.z))-1.0,0.0);
}
else
{
l9_24=fast::min(a.z+(2.0*(b.z-0.5)),1.0);
}
return float3(l9_21,l9_23,l9_24);
}
else
{
if ((int(BLEND_MODE_VIVID_LIGHT_tmp)!=0))
{
float l9_25;
if (b.x<0.5)
{
float l9_26;
if ((2.0*b.x)==0.0)
{
l9_26=2.0*b.x;
}
else
{
l9_26=fast::max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_25=l9_26;
}
else
{
float l9_27;
if ((2.0*(b.x-0.5))==1.0)
{
l9_27=2.0*(b.x-0.5);
}
else
{
l9_27=fast::min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_25=l9_27;
}
float l9_28=l9_25;
float l9_29;
if (b.y<0.5)
{
float l9_30;
if ((2.0*b.y)==0.0)
{
l9_30=2.0*b.y;
}
else
{
l9_30=fast::max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_29=l9_30;
}
else
{
float l9_31;
if ((2.0*(b.y-0.5))==1.0)
{
l9_31=2.0*(b.y-0.5);
}
else
{
l9_31=fast::min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_29=l9_31;
}
float l9_32=l9_29;
float l9_33;
if (b.z<0.5)
{
float l9_34;
if ((2.0*b.z)==0.0)
{
l9_34=2.0*b.z;
}
else
{
l9_34=fast::max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_33=l9_34;
}
else
{
float l9_35;
if ((2.0*(b.z-0.5))==1.0)
{
l9_35=2.0*(b.z-0.5);
}
else
{
l9_35=fast::min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_33=l9_35;
}
return float3(l9_28,l9_32,l9_33);
}
else
{
if ((int(BLEND_MODE_PIN_LIGHT_tmp)!=0))
{
float l9_36;
if (b.x<0.5)
{
l9_36=fast::min(a.x,2.0*b.x);
}
else
{
l9_36=fast::max(a.x,2.0*(b.x-0.5));
}
float l9_37=l9_36;
float l9_38;
if (b.y<0.5)
{
l9_38=fast::min(a.y,2.0*b.y);
}
else
{
l9_38=fast::max(a.y,2.0*(b.y-0.5));
}
float l9_39=l9_38;
float l9_40;
if (b.z<0.5)
{
l9_40=fast::min(a.z,2.0*b.z);
}
else
{
l9_40=fast::max(a.z,2.0*(b.z-0.5));
}
return float3(l9_37,l9_39,l9_40);
}
else
{
if ((int(BLEND_MODE_HARD_MIX_tmp)!=0))
{
float l9_41;
if (b.x<0.5)
{
float l9_42;
if ((2.0*b.x)==0.0)
{
l9_42=2.0*b.x;
}
else
{
l9_42=fast::max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_41=l9_42;
}
else
{
float l9_43;
if ((2.0*(b.x-0.5))==1.0)
{
l9_43=2.0*(b.x-0.5);
}
else
{
l9_43=fast::min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_41=l9_43;
}
float l9_44=l9_41;
float l9_45;
if (b.y<0.5)
{
float l9_46;
if ((2.0*b.y)==0.0)
{
l9_46=2.0*b.y;
}
else
{
l9_46=fast::max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_45=l9_46;
}
else
{
float l9_47;
if ((2.0*(b.y-0.5))==1.0)
{
l9_47=2.0*(b.y-0.5);
}
else
{
l9_47=fast::min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_45=l9_47;
}
float l9_48=l9_45;
float l9_49;
if (b.z<0.5)
{
float l9_50;
if ((2.0*b.z)==0.0)
{
l9_50=2.0*b.z;
}
else
{
l9_50=fast::max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_49=l9_50;
}
else
{
float l9_51;
if ((2.0*(b.z-0.5))==1.0)
{
l9_51=2.0*(b.z-0.5);
}
else
{
l9_51=fast::min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_49=l9_51;
}
return float3((l9_44<0.5) ? 0.0 : 1.0,(l9_48<0.5) ? 0.0 : 1.0,(l9_49<0.5) ? 0.0 : 1.0);
}
else
{
if ((int(BLEND_MODE_HARD_REFLECT_tmp)!=0))
{
float l9_52;
if (b.x==1.0)
{
l9_52=b.x;
}
else
{
l9_52=fast::min((a.x*a.x)/(1.0-b.x),1.0);
}
float l9_53=l9_52;
float l9_54;
if (b.y==1.0)
{
l9_54=b.y;
}
else
{
l9_54=fast::min((a.y*a.y)/(1.0-b.y),1.0);
}
float l9_55=l9_54;
float l9_56;
if (b.z==1.0)
{
l9_56=b.z;
}
else
{
l9_56=fast::min((a.z*a.z)/(1.0-b.z),1.0);
}
return float3(l9_53,l9_55,l9_56);
}
else
{
if ((int(BLEND_MODE_HARD_GLOW_tmp)!=0))
{
float l9_57;
if (a.x==1.0)
{
l9_57=a.x;
}
else
{
l9_57=fast::min((b.x*b.x)/(1.0-a.x),1.0);
}
float l9_58=l9_57;
float l9_59;
if (a.y==1.0)
{
l9_59=a.y;
}
else
{
l9_59=fast::min((b.y*b.y)/(1.0-a.y),1.0);
}
float l9_60=l9_59;
float l9_61;
if (a.z==1.0)
{
l9_61=a.z;
}
else
{
l9_61=fast::min((b.z*b.z)/(1.0-a.z),1.0);
}
return float3(l9_58,l9_60,l9_61);
}
else
{
if ((int(BLEND_MODE_HARD_PHOENIX_tmp)!=0))
{
return (fast::min(a,b)-fast::max(a,b))+float3(1.0);
}
else
{
if ((int(BLEND_MODE_HUE_tmp)!=0))
{
float3 param=a;
float3 param_1=b;
float3 l9_62=param;
float3 l9_63=l9_62;
float4 l9_64;
if (l9_63.y<l9_63.z)
{
l9_64=float4(l9_63.zy,-1.0,0.66666669);
}
else
{
l9_64=float4(l9_63.yz,0.0,-0.33333334);
}
float4 l9_65=l9_64;
float4 l9_66;
if (l9_63.x<l9_65.x)
{
l9_66=float4(l9_65.xyw,l9_63.x);
}
else
{
l9_66=float4(l9_63.x,l9_65.yzx);
}
float4 l9_67=l9_66;
float l9_68=l9_67.x-fast::min(l9_67.w,l9_67.y);
float l9_69=abs(((l9_67.w-l9_67.y)/((6.0*l9_68)+1e-07))+l9_67.z);
float l9_70=l9_67.x;
float3 l9_71=float3(l9_69,l9_68,l9_70);
float3 l9_72=l9_71;
float l9_73=l9_72.z-(l9_72.y*0.5);
float l9_74=l9_72.y/((1.0-abs((2.0*l9_73)-1.0))+1e-07);
float3 l9_75=float3(l9_72.x,l9_74,l9_73);
float3 l9_76=l9_75;
float3 l9_77=param_1;
float3 l9_78=l9_77;
float4 l9_79;
if (l9_78.y<l9_78.z)
{
l9_79=float4(l9_78.zy,-1.0,0.66666669);
}
else
{
l9_79=float4(l9_78.yz,0.0,-0.33333334);
}
float4 l9_80=l9_79;
float4 l9_81;
if (l9_78.x<l9_80.x)
{
l9_81=float4(l9_80.xyw,l9_78.x);
}
else
{
l9_81=float4(l9_78.x,l9_80.yzx);
}
float4 l9_82=l9_81;
float l9_83=l9_82.x-fast::min(l9_82.w,l9_82.y);
float l9_84=abs(((l9_82.w-l9_82.y)/((6.0*l9_83)+1e-07))+l9_82.z);
float l9_85=l9_82.x;
float3 l9_86=float3(l9_84,l9_83,l9_85);
float3 l9_87=l9_86;
float l9_88=l9_87.z-(l9_87.y*0.5);
float l9_89=l9_87.y/((1.0-abs((2.0*l9_88)-1.0))+1e-07);
float3 l9_90=float3(l9_87.x,l9_89,l9_88);
float3 l9_91=float3(l9_90.x,l9_76.y,l9_76.z);
float l9_92=l9_91.x;
float l9_93=abs((6.0*l9_92)-3.0)-1.0;
float l9_94=2.0-abs((6.0*l9_92)-2.0);
float l9_95=2.0-abs((6.0*l9_92)-4.0);
float3 l9_96=fast::clamp(float3(l9_93,l9_94,l9_95),float3(0.0),float3(1.0));
float3 l9_97=l9_96;
float l9_98=(1.0-abs((2.0*l9_91.z)-1.0))*l9_91.y;
l9_97=((l9_97-float3(0.5))*l9_98)+float3(l9_91.z);
float3 l9_99=l9_97;
float3 l9_100=l9_99;
return l9_100;
}
else
{
if ((int(BLEND_MODE_SATURATION_tmp)!=0))
{
float3 param_2=a;
float3 param_3=b;
float3 l9_101=param_2;
float3 l9_102=l9_101;
float4 l9_103;
if (l9_102.y<l9_102.z)
{
l9_103=float4(l9_102.zy,-1.0,0.66666669);
}
else
{
l9_103=float4(l9_102.yz,0.0,-0.33333334);
}
float4 l9_104=l9_103;
float4 l9_105;
if (l9_102.x<l9_104.x)
{
l9_105=float4(l9_104.xyw,l9_102.x);
}
else
{
l9_105=float4(l9_102.x,l9_104.yzx);
}
float4 l9_106=l9_105;
float l9_107=l9_106.x-fast::min(l9_106.w,l9_106.y);
float l9_108=abs(((l9_106.w-l9_106.y)/((6.0*l9_107)+1e-07))+l9_106.z);
float l9_109=l9_106.x;
float3 l9_110=float3(l9_108,l9_107,l9_109);
float3 l9_111=l9_110;
float l9_112=l9_111.z-(l9_111.y*0.5);
float l9_113=l9_111.y/((1.0-abs((2.0*l9_112)-1.0))+1e-07);
float3 l9_114=float3(l9_111.x,l9_113,l9_112);
float3 l9_115=l9_114;
float l9_116=l9_115.x;
float3 l9_117=param_3;
float3 l9_118=l9_117;
float4 l9_119;
if (l9_118.y<l9_118.z)
{
l9_119=float4(l9_118.zy,-1.0,0.66666669);
}
else
{
l9_119=float4(l9_118.yz,0.0,-0.33333334);
}
float4 l9_120=l9_119;
float4 l9_121;
if (l9_118.x<l9_120.x)
{
l9_121=float4(l9_120.xyw,l9_118.x);
}
else
{
l9_121=float4(l9_118.x,l9_120.yzx);
}
float4 l9_122=l9_121;
float l9_123=l9_122.x-fast::min(l9_122.w,l9_122.y);
float l9_124=abs(((l9_122.w-l9_122.y)/((6.0*l9_123)+1e-07))+l9_122.z);
float l9_125=l9_122.x;
float3 l9_126=float3(l9_124,l9_123,l9_125);
float3 l9_127=l9_126;
float l9_128=l9_127.z-(l9_127.y*0.5);
float l9_129=l9_127.y/((1.0-abs((2.0*l9_128)-1.0))+1e-07);
float3 l9_130=float3(l9_127.x,l9_129,l9_128);
float3 l9_131=float3(l9_116,l9_130.y,l9_115.z);
float l9_132=l9_131.x;
float l9_133=abs((6.0*l9_132)-3.0)-1.0;
float l9_134=2.0-abs((6.0*l9_132)-2.0);
float l9_135=2.0-abs((6.0*l9_132)-4.0);
float3 l9_136=fast::clamp(float3(l9_133,l9_134,l9_135),float3(0.0),float3(1.0));
float3 l9_137=l9_136;
float l9_138=(1.0-abs((2.0*l9_131.z)-1.0))*l9_131.y;
l9_137=((l9_137-float3(0.5))*l9_138)+float3(l9_131.z);
float3 l9_139=l9_137;
float3 l9_140=l9_139;
return l9_140;
}
else
{
if ((int(BLEND_MODE_COLOR_tmp)!=0))
{
float3 param_4=a;
float3 param_5=b;
float3 l9_141=param_5;
float3 l9_142=l9_141;
float4 l9_143;
if (l9_142.y<l9_142.z)
{
l9_143=float4(l9_142.zy,-1.0,0.66666669);
}
else
{
l9_143=float4(l9_142.yz,0.0,-0.33333334);
}
float4 l9_144=l9_143;
float4 l9_145;
if (l9_142.x<l9_144.x)
{
l9_145=float4(l9_144.xyw,l9_142.x);
}
else
{
l9_145=float4(l9_142.x,l9_144.yzx);
}
float4 l9_146=l9_145;
float l9_147=l9_146.x-fast::min(l9_146.w,l9_146.y);
float l9_148=abs(((l9_146.w-l9_146.y)/((6.0*l9_147)+1e-07))+l9_146.z);
float l9_149=l9_146.x;
float3 l9_150=float3(l9_148,l9_147,l9_149);
float3 l9_151=l9_150;
float l9_152=l9_151.z-(l9_151.y*0.5);
float l9_153=l9_151.y/((1.0-abs((2.0*l9_152)-1.0))+1e-07);
float3 l9_154=float3(l9_151.x,l9_153,l9_152);
float3 l9_155=l9_154;
float l9_156=l9_155.x;
float l9_157=l9_155.y;
float3 l9_158=param_4;
float3 l9_159=l9_158;
float4 l9_160;
if (l9_159.y<l9_159.z)
{
l9_160=float4(l9_159.zy,-1.0,0.66666669);
}
else
{
l9_160=float4(l9_159.yz,0.0,-0.33333334);
}
float4 l9_161=l9_160;
float4 l9_162;
if (l9_159.x<l9_161.x)
{
l9_162=float4(l9_161.xyw,l9_159.x);
}
else
{
l9_162=float4(l9_159.x,l9_161.yzx);
}
float4 l9_163=l9_162;
float l9_164=l9_163.x-fast::min(l9_163.w,l9_163.y);
float l9_165=abs(((l9_163.w-l9_163.y)/((6.0*l9_164)+1e-07))+l9_163.z);
float l9_166=l9_163.x;
float3 l9_167=float3(l9_165,l9_164,l9_166);
float3 l9_168=l9_167;
float l9_169=l9_168.z-(l9_168.y*0.5);
float l9_170=l9_168.y/((1.0-abs((2.0*l9_169)-1.0))+1e-07);
float3 l9_171=float3(l9_168.x,l9_170,l9_169);
float3 l9_172=float3(l9_156,l9_157,l9_171.z);
float l9_173=l9_172.x;
float l9_174=abs((6.0*l9_173)-3.0)-1.0;
float l9_175=2.0-abs((6.0*l9_173)-2.0);
float l9_176=2.0-abs((6.0*l9_173)-4.0);
float3 l9_177=fast::clamp(float3(l9_174,l9_175,l9_176),float3(0.0),float3(1.0));
float3 l9_178=l9_177;
float l9_179=(1.0-abs((2.0*l9_172.z)-1.0))*l9_172.y;
l9_178=((l9_178-float3(0.5))*l9_179)+float3(l9_172.z);
float3 l9_180=l9_178;
float3 l9_181=l9_180;
return l9_181;
}
else
{
if ((int(BLEND_MODE_LUMINOSITY_tmp)!=0))
{
float3 param_6=a;
float3 param_7=b;
float3 l9_182=param_6;
float3 l9_183=l9_182;
float4 l9_184;
if (l9_183.y<l9_183.z)
{
l9_184=float4(l9_183.zy,-1.0,0.66666669);
}
else
{
l9_184=float4(l9_183.yz,0.0,-0.33333334);
}
float4 l9_185=l9_184;
float4 l9_186;
if (l9_183.x<l9_185.x)
{
l9_186=float4(l9_185.xyw,l9_183.x);
}
else
{
l9_186=float4(l9_183.x,l9_185.yzx);
}
float4 l9_187=l9_186;
float l9_188=l9_187.x-fast::min(l9_187.w,l9_187.y);
float l9_189=abs(((l9_187.w-l9_187.y)/((6.0*l9_188)+1e-07))+l9_187.z);
float l9_190=l9_187.x;
float3 l9_191=float3(l9_189,l9_188,l9_190);
float3 l9_192=l9_191;
float l9_193=l9_192.z-(l9_192.y*0.5);
float l9_194=l9_192.y/((1.0-abs((2.0*l9_193)-1.0))+1e-07);
float3 l9_195=float3(l9_192.x,l9_194,l9_193);
float3 l9_196=l9_195;
float l9_197=l9_196.x;
float l9_198=l9_196.y;
float3 l9_199=param_7;
float3 l9_200=l9_199;
float4 l9_201;
if (l9_200.y<l9_200.z)
{
l9_201=float4(l9_200.zy,-1.0,0.66666669);
}
else
{
l9_201=float4(l9_200.yz,0.0,-0.33333334);
}
float4 l9_202=l9_201;
float4 l9_203;
if (l9_200.x<l9_202.x)
{
l9_203=float4(l9_202.xyw,l9_200.x);
}
else
{
l9_203=float4(l9_200.x,l9_202.yzx);
}
float4 l9_204=l9_203;
float l9_205=l9_204.x-fast::min(l9_204.w,l9_204.y);
float l9_206=abs(((l9_204.w-l9_204.y)/((6.0*l9_205)+1e-07))+l9_204.z);
float l9_207=l9_204.x;
float3 l9_208=float3(l9_206,l9_205,l9_207);
float3 l9_209=l9_208;
float l9_210=l9_209.z-(l9_209.y*0.5);
float l9_211=l9_209.y/((1.0-abs((2.0*l9_210)-1.0))+1e-07);
float3 l9_212=float3(l9_209.x,l9_211,l9_210);
float3 l9_213=float3(l9_197,l9_198,l9_212.z);
float l9_214=l9_213.x;
float l9_215=abs((6.0*l9_214)-3.0)-1.0;
float l9_216=2.0-abs((6.0*l9_214)-2.0);
float l9_217=2.0-abs((6.0*l9_214)-4.0);
float3 l9_218=fast::clamp(float3(l9_215,l9_216,l9_217),float3(0.0),float3(1.0));
float3 l9_219=l9_218;
float l9_220=(1.0-abs((2.0*l9_213.z)-1.0))*l9_213.y;
l9_219=((l9_219-float3(0.5))*l9_220)+float3(l9_213.z);
float3 l9_221=l9_219;
float3 l9_222=l9_221;
return l9_222;
}
else
{
float3 param_8=a;
float3 param_9=b;
float3 l9_223=param_8;
float l9_224=((0.29899999*l9_223.x)+(0.58700001*l9_223.y))+(0.114*l9_223.z);
float l9_225=l9_224;
float l9_226=1.0;
float l9_227=pow(l9_225,1.0/UserUniforms.correctedIntensity);
int l9_228=0;
if ((int(intensityTextureHasSwappedViews_tmp)!=0))
{
int l9_229=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_229=0;
}
else
{
l9_229=varStereoViewID;
}
int l9_230=l9_229;
l9_228=1-l9_230;
}
else
{
int l9_231=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_231=0;
}
else
{
l9_231=varStereoViewID;
}
int l9_232=l9_231;
l9_228=l9_232;
}
int l9_233=l9_228;
int l9_234=intensityTextureLayout_tmp;
int l9_235=l9_233;
float2 l9_236=float2(l9_227,0.5);
bool l9_237=(int(SC_USE_UV_TRANSFORM_intensityTexture_tmp)!=0);
float3x3 l9_238=UserUniforms.intensityTextureTransform;
int2 l9_239=int2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp);
bool l9_240=(int(SC_USE_UV_MIN_MAX_intensityTexture_tmp)!=0);
float4 l9_241=UserUniforms.intensityTextureUvMinMax;
bool l9_242=(int(SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp)!=0);
float4 l9_243=UserUniforms.intensityTextureBorderColor;
float l9_244=0.0;
bool l9_245=l9_242&&(!l9_240);
float l9_246=1.0;
float l9_247=l9_236.x;
int l9_248=l9_239.x;
if (l9_248==1)
{
l9_247=fract(l9_247);
}
else
{
if (l9_248==2)
{
float l9_249=fract(l9_247);
float l9_250=l9_247-l9_249;
float l9_251=step(0.25,fract(l9_250*0.5));
l9_247=mix(l9_249,1.0-l9_249,fast::clamp(l9_251,0.0,1.0));
}
}
l9_236.x=l9_247;
float l9_252=l9_236.y;
int l9_253=l9_239.y;
if (l9_253==1)
{
l9_252=fract(l9_252);
}
else
{
if (l9_253==2)
{
float l9_254=fract(l9_252);
float l9_255=l9_252-l9_254;
float l9_256=step(0.25,fract(l9_255*0.5));
l9_252=mix(l9_254,1.0-l9_254,fast::clamp(l9_256,0.0,1.0));
}
}
l9_236.y=l9_252;
if (l9_240)
{
bool l9_257=l9_242;
bool l9_258;
if (l9_257)
{
l9_258=l9_239.x==3;
}
else
{
l9_258=l9_257;
}
float l9_259=l9_236.x;
float l9_260=l9_241.x;
float l9_261=l9_241.z;
bool l9_262=l9_258;
float l9_263=l9_246;
float l9_264=fast::clamp(l9_259,l9_260,l9_261);
float l9_265=step(abs(l9_259-l9_264),9.9999997e-06);
l9_263*=(l9_265+((1.0-float(l9_262))*(1.0-l9_265)));
l9_259=l9_264;
l9_236.x=l9_259;
l9_246=l9_263;
bool l9_266=l9_242;
bool l9_267;
if (l9_266)
{
l9_267=l9_239.y==3;
}
else
{
l9_267=l9_266;
}
float l9_268=l9_236.y;
float l9_269=l9_241.y;
float l9_270=l9_241.w;
bool l9_271=l9_267;
float l9_272=l9_246;
float l9_273=fast::clamp(l9_268,l9_269,l9_270);
float l9_274=step(abs(l9_268-l9_273),9.9999997e-06);
l9_272*=(l9_274+((1.0-float(l9_271))*(1.0-l9_274)));
l9_268=l9_273;
l9_236.y=l9_268;
l9_246=l9_272;
}
float2 l9_275=l9_236;
bool l9_276=l9_237;
float3x3 l9_277=l9_238;
if (l9_276)
{
l9_275=float2((l9_277*float3(l9_275,1.0)).xy);
}
float2 l9_278=l9_275;
float2 l9_279=l9_278;
float2 l9_280=l9_279;
l9_236=l9_280;
float l9_281=l9_236.x;
int l9_282=l9_239.x;
bool l9_283=l9_245;
float l9_284=l9_246;
if ((l9_282==0)||(l9_282==3))
{
float l9_285=l9_281;
float l9_286=0.0;
float l9_287=1.0;
bool l9_288=l9_283;
float l9_289=l9_284;
float l9_290=fast::clamp(l9_285,l9_286,l9_287);
float l9_291=step(abs(l9_285-l9_290),9.9999997e-06);
l9_289*=(l9_291+((1.0-float(l9_288))*(1.0-l9_291)));
l9_285=l9_290;
l9_281=l9_285;
l9_284=l9_289;
}
l9_236.x=l9_281;
l9_246=l9_284;
float l9_292=l9_236.y;
int l9_293=l9_239.y;
bool l9_294=l9_245;
float l9_295=l9_246;
if ((l9_293==0)||(l9_293==3))
{
float l9_296=l9_292;
float l9_297=0.0;
float l9_298=1.0;
bool l9_299=l9_294;
float l9_300=l9_295;
float l9_301=fast::clamp(l9_296,l9_297,l9_298);
float l9_302=step(abs(l9_296-l9_301),9.9999997e-06);
l9_300*=(l9_302+((1.0-float(l9_299))*(1.0-l9_302)));
l9_296=l9_301;
l9_292=l9_296;
l9_295=l9_300;
}
l9_236.y=l9_292;
l9_246=l9_295;
float2 l9_303=l9_236;
int l9_304=l9_234;
int l9_305=l9_235;
float l9_306=l9_244;
float2 l9_307=l9_303;
int l9_308=l9_304;
int l9_309=l9_305;
float3 l9_310=float3(0.0);
if (l9_308==0)
{
l9_310=float3(l9_307,0.0);
}
else
{
if (l9_308==1)
{
l9_310=float3(l9_307.x,(l9_307.y*0.5)+(0.5-(float(l9_309)*0.5)),0.0);
}
else
{
l9_310=float3(l9_307,float(l9_309));
}
}
float3 l9_311=l9_310;
float3 l9_312=l9_311;
float2 l9_313=l9_312.xy;
float l9_314=l9_306;
float4 l9_315=intensityTexture.sample(intensityTextureSmpSC,l9_313,bias(l9_314));
float4 l9_316=l9_315;
float4 l9_317=l9_316;
if (l9_242)
{
l9_317=mix(l9_243,l9_317,float4(l9_246));
}
float4 l9_318=l9_317;
float3 l9_319=l9_318.xyz;
float3 l9_320=l9_319;
float l9_321=16.0;
float l9_322=((((l9_320.x*256.0)+l9_320.y)+(l9_320.z/256.0))/257.00391)*l9_321;
float l9_323=l9_322;
if ((int(BLEND_MODE_FORGRAY_tmp)!=0))
{
l9_323=fast::max(l9_323,1.0);
}
if ((int(BLEND_MODE_NOTBRIGHT_tmp)!=0))
{
l9_323=fast::min(l9_323,1.0);
}
float l9_324=l9_225;
float3 l9_325=param_8;
float3 l9_326=param_9;
float l9_327=l9_226;
float l9_328=l9_323;
float3 l9_329=transformColor(l9_324,l9_325,l9_326,l9_327,l9_328);
return l9_329;
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
float4 outputMotionVectorsIfNeeded(thread const float3& surfacePosWorldSpace,thread const float4& finalColor,thread int& varStereoViewID,constant userUniformsObj& UserUniforms)
{
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
float3 param=surfacePosWorldSpace;
int l9_0=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_0=0;
}
else
{
l9_0=varStereoViewID;
}
int l9_1=l9_0;
float4 l9_2=UserUniforms.sc_ViewProjectionMatrixArray[l9_1]*float4(param,1.0);
float2 l9_3=l9_2.xy/float2(l9_2.w);
l9_2=float4(l9_3.x,l9_3.y,l9_2.z,l9_2.w);
int l9_4=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4=0;
}
else
{
l9_4=varStereoViewID;
}
int l9_5=l9_4;
float4 l9_6=((UserUniforms.sc_PrevFrameViewProjectionMatrixArray[l9_5]*UserUniforms.sc_PrevFrameModelMatrix)*UserUniforms.sc_ModelMatrixInverse)*float4(param,1.0);
float2 l9_7=l9_6.xy/float2(l9_6.w);
l9_6=float4(l9_7.x,l9_7.y,l9_6.z,l9_6.w);
float2 l9_8=(l9_2.xy-l9_6.xy)*0.5;
float2 l9_9=l9_8;
float l9_10=(l9_9.x*5.0)+0.5;
float l9_11=floor(l9_10*65535.0);
float l9_12=floor(l9_11*0.00390625);
float2 l9_13=float2(l9_12/255.0,(l9_11-(l9_12*256.0))/255.0);
float l9_14=(l9_9.y*5.0)+0.5;
float l9_15=floor(l9_14*65535.0);
float l9_16=floor(l9_15*0.00390625);
float2 l9_17=float2(l9_16/255.0,(l9_15-(l9_16*256.0))/255.0);
float4 l9_18=float4(l9_13,l9_17);
float4 l9_19=l9_18;
return l9_19;
}
else
{
return finalColor;
}
}
fragment main_frag_out main_frag(main_frag_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],float4 gl_FragCoord [[position]])
{
main_frag_out out={};
if ((int(sc_DepthOnly_tmp)!=0))
{
return out;
}
if ((sc_StereoRenderingMode_tmp==1)&&(sc_StereoRendering_IsClipDistanceEnabled_tmp==0))
{
if (in.varClipDistance<0.0)
{
discard_fragment();
}
}
ssPreviewInfo PreviewInfo;
PreviewInfo.Color=in.PreviewVertexColor;
PreviewInfo.Saved=((in.PreviewVertexSaved*1.0)!=0.0) ? true : false;
float4 FinalColor=float4(1.0);
ssGlobals Globals;
Globals.gTimeElapsed=(*sc_set0.UserUniforms).sc_Time.x;
Globals.gTimeDelta=(*sc_set0.UserUniforms).sc_Time.y;
Globals.Surface_UVCoord0=in.varPackedTex.xy;
Globals.BumpedNormal=float3(0.0);
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-in.varPos);
Globals.PositionWS=in.varPos;
Globals.VertexTangent_WorldSpace=normalize(in.varTangent.xyz);
Globals.VertexNormal_WorldSpace=normalize(in.varNormal);
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*in.varTangent.w;
float4 Result_N176=float4(0.0);
float4 param=float4(0.0);
float4 param_1=(*sc_set0.UserUniforms).Port_Default_N176;
ssGlobals param_3=Globals;
float4 param_2;
if ((int(Tweak_N177_tmp)!=0))
{
float4 l9_0=float4(0.0);
int l9_1=0;
if ((int(Tweak_N167HasSwappedViews_tmp)!=0))
{
int l9_2=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2=0;
}
else
{
l9_2=in.varStereoViewID;
}
int l9_3=l9_2;
l9_1=1-l9_3;
}
else
{
int l9_4=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4=0;
}
else
{
l9_4=in.varStereoViewID;
}
int l9_5=l9_4;
l9_1=l9_5;
}
int l9_6=l9_1;
int l9_7=Tweak_N167Layout_tmp;
int l9_8=l9_6;
float2 l9_9=param_3.Surface_UVCoord0;
bool l9_10=(int(SC_USE_UV_TRANSFORM_Tweak_N167_tmp)!=0);
float3x3 l9_11=(*sc_set0.UserUniforms).Tweak_N167Transform;
int2 l9_12=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N167_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N167_tmp);
bool l9_13=(int(SC_USE_UV_MIN_MAX_Tweak_N167_tmp)!=0);
float4 l9_14=(*sc_set0.UserUniforms).Tweak_N167UvMinMax;
bool l9_15=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N167_tmp)!=0);
float4 l9_16=(*sc_set0.UserUniforms).Tweak_N167BorderColor;
float l9_17=0.0;
bool l9_18=l9_15&&(!l9_13);
float l9_19=1.0;
float l9_20=l9_9.x;
int l9_21=l9_12.x;
if (l9_21==1)
{
l9_20=fract(l9_20);
}
else
{
if (l9_21==2)
{
float l9_22=fract(l9_20);
float l9_23=l9_20-l9_22;
float l9_24=step(0.25,fract(l9_23*0.5));
l9_20=mix(l9_22,1.0-l9_22,fast::clamp(l9_24,0.0,1.0));
}
}
l9_9.x=l9_20;
float l9_25=l9_9.y;
int l9_26=l9_12.y;
if (l9_26==1)
{
l9_25=fract(l9_25);
}
else
{
if (l9_26==2)
{
float l9_27=fract(l9_25);
float l9_28=l9_25-l9_27;
float l9_29=step(0.25,fract(l9_28*0.5));
l9_25=mix(l9_27,1.0-l9_27,fast::clamp(l9_29,0.0,1.0));
}
}
l9_9.y=l9_25;
if (l9_13)
{
bool l9_30=l9_15;
bool l9_31;
if (l9_30)
{
l9_31=l9_12.x==3;
}
else
{
l9_31=l9_30;
}
float l9_32=l9_9.x;
float l9_33=l9_14.x;
float l9_34=l9_14.z;
bool l9_35=l9_31;
float l9_36=l9_19;
float l9_37=fast::clamp(l9_32,l9_33,l9_34);
float l9_38=step(abs(l9_32-l9_37),9.9999997e-06);
l9_36*=(l9_38+((1.0-float(l9_35))*(1.0-l9_38)));
l9_32=l9_37;
l9_9.x=l9_32;
l9_19=l9_36;
bool l9_39=l9_15;
bool l9_40;
if (l9_39)
{
l9_40=l9_12.y==3;
}
else
{
l9_40=l9_39;
}
float l9_41=l9_9.y;
float l9_42=l9_14.y;
float l9_43=l9_14.w;
bool l9_44=l9_40;
float l9_45=l9_19;
float l9_46=fast::clamp(l9_41,l9_42,l9_43);
float l9_47=step(abs(l9_41-l9_46),9.9999997e-06);
l9_45*=(l9_47+((1.0-float(l9_44))*(1.0-l9_47)));
l9_41=l9_46;
l9_9.y=l9_41;
l9_19=l9_45;
}
float2 l9_48=l9_9;
bool l9_49=l9_10;
float3x3 l9_50=l9_11;
if (l9_49)
{
l9_48=float2((l9_50*float3(l9_48,1.0)).xy);
}
float2 l9_51=l9_48;
float2 l9_52=l9_51;
float2 l9_53=l9_52;
l9_9=l9_53;
float l9_54=l9_9.x;
int l9_55=l9_12.x;
bool l9_56=l9_18;
float l9_57=l9_19;
if ((l9_55==0)||(l9_55==3))
{
float l9_58=l9_54;
float l9_59=0.0;
float l9_60=1.0;
bool l9_61=l9_56;
float l9_62=l9_57;
float l9_63=fast::clamp(l9_58,l9_59,l9_60);
float l9_64=step(abs(l9_58-l9_63),9.9999997e-06);
l9_62*=(l9_64+((1.0-float(l9_61))*(1.0-l9_64)));
l9_58=l9_63;
l9_54=l9_58;
l9_57=l9_62;
}
l9_9.x=l9_54;
l9_19=l9_57;
float l9_65=l9_9.y;
int l9_66=l9_12.y;
bool l9_67=l9_18;
float l9_68=l9_19;
if ((l9_66==0)||(l9_66==3))
{
float l9_69=l9_65;
float l9_70=0.0;
float l9_71=1.0;
bool l9_72=l9_67;
float l9_73=l9_68;
float l9_74=fast::clamp(l9_69,l9_70,l9_71);
float l9_75=step(abs(l9_69-l9_74),9.9999997e-06);
l9_73*=(l9_75+((1.0-float(l9_72))*(1.0-l9_75)));
l9_69=l9_74;
l9_65=l9_69;
l9_68=l9_73;
}
l9_9.y=l9_65;
l9_19=l9_68;
float2 l9_76=l9_9;
int l9_77=l9_7;
int l9_78=l9_8;
float l9_79=l9_17;
float2 l9_80=l9_76;
int l9_81=l9_77;
int l9_82=l9_78;
float3 l9_83=float3(0.0);
if (l9_81==0)
{
l9_83=float3(l9_80,0.0);
}
else
{
if (l9_81==1)
{
l9_83=float3(l9_80.x,(l9_80.y*0.5)+(0.5-(float(l9_82)*0.5)),0.0);
}
else
{
l9_83=float3(l9_80,float(l9_82));
}
}
float3 l9_84=l9_83;
float3 l9_85=l9_84;
float2 l9_86=l9_85.xy;
float l9_87=l9_79;
float4 l9_88=sc_set0.Tweak_N167.sample(sc_set0.Tweak_N167SmpSC,l9_86,bias(l9_87));
float4 l9_89=l9_88;
float4 l9_90=l9_89;
if (l9_15)
{
l9_90=mix(l9_16,l9_90,float4(l9_19));
}
float4 l9_91=l9_90;
l9_0=l9_91;
param=l9_0;
param_2=param;
}
else
{
param_2=param_1;
}
Result_N176=param_2;
float4 Output_N175=float4(0.0);
float4 param_4=(*sc_set0.UserUniforms).Tweak_N175;
Output_N175=param_4;
float4 Output_N173=float4(0.0);
Output_N173=Result_N176*Output_N175;
float3 Output_N49=float3(0.0);
Output_N49=float3(Output_N173.x,Output_N173.y,Output_N173.z);
float Output_N17=0.0;
float param_5=(*sc_set0.UserUniforms).Tweak_N17;
Output_N17=param_5;
float4 Value_N47=float4(0.0);
Value_N47=float4(Output_N49.x,Output_N49.y,Output_N49.z,Value_N47.w);
Value_N47.w=Output_N17;
float4 Output_N168=float4(0.0);
int l9_92=0;
if ((int(Tweak_N168HasSwappedViews_tmp)!=0))
{
int l9_93=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_93=0;
}
else
{
l9_93=in.varStereoViewID;
}
int l9_94=l9_93;
l9_92=1-l9_94;
}
else
{
int l9_95=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_95=0;
}
else
{
l9_95=in.varStereoViewID;
}
int l9_96=l9_95;
l9_92=l9_96;
}
int l9_97=l9_92;
int param_6=Tweak_N168Layout_tmp;
int param_7=l9_97;
float2 param_8=Globals.Surface_UVCoord0;
bool param_9=(int(SC_USE_UV_TRANSFORM_Tweak_N168_tmp)!=0);
float3x3 param_10=(*sc_set0.UserUniforms).Tweak_N168Transform;
int2 param_11=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N168_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N168_tmp);
bool param_12=(int(SC_USE_UV_MIN_MAX_Tweak_N168_tmp)!=0);
float4 param_13=(*sc_set0.UserUniforms).Tweak_N168UvMinMax;
bool param_14=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N168_tmp)!=0);
float4 param_15=(*sc_set0.UserUniforms).Tweak_N168BorderColor;
float param_16=0.0;
bool l9_98=param_14&&(!param_12);
float l9_99=1.0;
float l9_100=param_8.x;
int l9_101=param_11.x;
if (l9_101==1)
{
l9_100=fract(l9_100);
}
else
{
if (l9_101==2)
{
float l9_102=fract(l9_100);
float l9_103=l9_100-l9_102;
float l9_104=step(0.25,fract(l9_103*0.5));
l9_100=mix(l9_102,1.0-l9_102,fast::clamp(l9_104,0.0,1.0));
}
}
param_8.x=l9_100;
float l9_105=param_8.y;
int l9_106=param_11.y;
if (l9_106==1)
{
l9_105=fract(l9_105);
}
else
{
if (l9_106==2)
{
float l9_107=fract(l9_105);
float l9_108=l9_105-l9_107;
float l9_109=step(0.25,fract(l9_108*0.5));
l9_105=mix(l9_107,1.0-l9_107,fast::clamp(l9_109,0.0,1.0));
}
}
param_8.y=l9_105;
if (param_12)
{
bool l9_110=param_14;
bool l9_111;
if (l9_110)
{
l9_111=param_11.x==3;
}
else
{
l9_111=l9_110;
}
float l9_112=param_8.x;
float l9_113=param_13.x;
float l9_114=param_13.z;
bool l9_115=l9_111;
float l9_116=l9_99;
float l9_117=fast::clamp(l9_112,l9_113,l9_114);
float l9_118=step(abs(l9_112-l9_117),9.9999997e-06);
l9_116*=(l9_118+((1.0-float(l9_115))*(1.0-l9_118)));
l9_112=l9_117;
param_8.x=l9_112;
l9_99=l9_116;
bool l9_119=param_14;
bool l9_120;
if (l9_119)
{
l9_120=param_11.y==3;
}
else
{
l9_120=l9_119;
}
float l9_121=param_8.y;
float l9_122=param_13.y;
float l9_123=param_13.w;
bool l9_124=l9_120;
float l9_125=l9_99;
float l9_126=fast::clamp(l9_121,l9_122,l9_123);
float l9_127=step(abs(l9_121-l9_126),9.9999997e-06);
l9_125*=(l9_127+((1.0-float(l9_124))*(1.0-l9_127)));
l9_121=l9_126;
param_8.y=l9_121;
l9_99=l9_125;
}
float2 l9_128=param_8;
bool l9_129=param_9;
float3x3 l9_130=param_10;
if (l9_129)
{
l9_128=float2((l9_130*float3(l9_128,1.0)).xy);
}
float2 l9_131=l9_128;
float2 l9_132=l9_131;
float2 l9_133=l9_132;
param_8=l9_133;
float l9_134=param_8.x;
int l9_135=param_11.x;
bool l9_136=l9_98;
float l9_137=l9_99;
if ((l9_135==0)||(l9_135==3))
{
float l9_138=l9_134;
float l9_139=0.0;
float l9_140=1.0;
bool l9_141=l9_136;
float l9_142=l9_137;
float l9_143=fast::clamp(l9_138,l9_139,l9_140);
float l9_144=step(abs(l9_138-l9_143),9.9999997e-06);
l9_142*=(l9_144+((1.0-float(l9_141))*(1.0-l9_144)));
l9_138=l9_143;
l9_134=l9_138;
l9_137=l9_142;
}
param_8.x=l9_134;
l9_99=l9_137;
float l9_145=param_8.y;
int l9_146=param_11.y;
bool l9_147=l9_98;
float l9_148=l9_99;
if ((l9_146==0)||(l9_146==3))
{
float l9_149=l9_145;
float l9_150=0.0;
float l9_151=1.0;
bool l9_152=l9_147;
float l9_153=l9_148;
float l9_154=fast::clamp(l9_149,l9_150,l9_151);
float l9_155=step(abs(l9_149-l9_154),9.9999997e-06);
l9_153*=(l9_155+((1.0-float(l9_152))*(1.0-l9_155)));
l9_149=l9_154;
l9_145=l9_149;
l9_148=l9_153;
}
param_8.y=l9_145;
l9_99=l9_148;
float2 l9_156=param_8;
int l9_157=param_6;
int l9_158=param_7;
float l9_159=param_16;
float2 l9_160=l9_156;
int l9_161=l9_157;
int l9_162=l9_158;
float3 l9_163=float3(0.0);
if (l9_161==0)
{
l9_163=float3(l9_160,0.0);
}
else
{
if (l9_161==1)
{
l9_163=float3(l9_160.x,(l9_160.y*0.5)+(0.5-(float(l9_162)*0.5)),0.0);
}
else
{
l9_163=float3(l9_160,float(l9_162));
}
}
float3 l9_164=l9_163;
float3 l9_165=l9_164;
float2 l9_166=l9_165.xy;
float l9_167=l9_159;
float4 l9_168=sc_set0.Tweak_N168.sample(sc_set0.Tweak_N168SmpSC,l9_166,bias(l9_167));
float4 l9_169=l9_168;
float4 l9_170=l9_169;
if (param_14)
{
l9_170=mix(param_15,l9_170,float4(l9_99));
}
float4 l9_171=l9_170;
Output_N168=l9_171;
float4 Output_N169=float4(0.0);
int l9_172=0;
if ((int(Tweak_N169HasSwappedViews_tmp)!=0))
{
int l9_173=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_173=0;
}
else
{
l9_173=in.varStereoViewID;
}
int l9_174=l9_173;
l9_172=1-l9_174;
}
else
{
int l9_175=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_175=0;
}
else
{
l9_175=in.varStereoViewID;
}
int l9_176=l9_175;
l9_172=l9_176;
}
int l9_177=l9_172;
int param_17=Tweak_N169Layout_tmp;
int param_18=l9_177;
float2 param_19=Globals.Surface_UVCoord0;
bool param_20=(int(SC_USE_UV_TRANSFORM_Tweak_N169_tmp)!=0);
float3x3 param_21=(*sc_set0.UserUniforms).Tweak_N169Transform;
int2 param_22=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N169_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N169_tmp);
bool param_23=(int(SC_USE_UV_MIN_MAX_Tweak_N169_tmp)!=0);
float4 param_24=(*sc_set0.UserUniforms).Tweak_N169UvMinMax;
bool param_25=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N169_tmp)!=0);
float4 param_26=(*sc_set0.UserUniforms).Tweak_N169BorderColor;
float param_27=0.0;
bool l9_178=param_25&&(!param_23);
float l9_179=1.0;
float l9_180=param_19.x;
int l9_181=param_22.x;
if (l9_181==1)
{
l9_180=fract(l9_180);
}
else
{
if (l9_181==2)
{
float l9_182=fract(l9_180);
float l9_183=l9_180-l9_182;
float l9_184=step(0.25,fract(l9_183*0.5));
l9_180=mix(l9_182,1.0-l9_182,fast::clamp(l9_184,0.0,1.0));
}
}
param_19.x=l9_180;
float l9_185=param_19.y;
int l9_186=param_22.y;
if (l9_186==1)
{
l9_185=fract(l9_185);
}
else
{
if (l9_186==2)
{
float l9_187=fract(l9_185);
float l9_188=l9_185-l9_187;
float l9_189=step(0.25,fract(l9_188*0.5));
l9_185=mix(l9_187,1.0-l9_187,fast::clamp(l9_189,0.0,1.0));
}
}
param_19.y=l9_185;
if (param_23)
{
bool l9_190=param_25;
bool l9_191;
if (l9_190)
{
l9_191=param_22.x==3;
}
else
{
l9_191=l9_190;
}
float l9_192=param_19.x;
float l9_193=param_24.x;
float l9_194=param_24.z;
bool l9_195=l9_191;
float l9_196=l9_179;
float l9_197=fast::clamp(l9_192,l9_193,l9_194);
float l9_198=step(abs(l9_192-l9_197),9.9999997e-06);
l9_196*=(l9_198+((1.0-float(l9_195))*(1.0-l9_198)));
l9_192=l9_197;
param_19.x=l9_192;
l9_179=l9_196;
bool l9_199=param_25;
bool l9_200;
if (l9_199)
{
l9_200=param_22.y==3;
}
else
{
l9_200=l9_199;
}
float l9_201=param_19.y;
float l9_202=param_24.y;
float l9_203=param_24.w;
bool l9_204=l9_200;
float l9_205=l9_179;
float l9_206=fast::clamp(l9_201,l9_202,l9_203);
float l9_207=step(abs(l9_201-l9_206),9.9999997e-06);
l9_205*=(l9_207+((1.0-float(l9_204))*(1.0-l9_207)));
l9_201=l9_206;
param_19.y=l9_201;
l9_179=l9_205;
}
float2 l9_208=param_19;
bool l9_209=param_20;
float3x3 l9_210=param_21;
if (l9_209)
{
l9_208=float2((l9_210*float3(l9_208,1.0)).xy);
}
float2 l9_211=l9_208;
float2 l9_212=l9_211;
float2 l9_213=l9_212;
param_19=l9_213;
float l9_214=param_19.x;
int l9_215=param_22.x;
bool l9_216=l9_178;
float l9_217=l9_179;
if ((l9_215==0)||(l9_215==3))
{
float l9_218=l9_214;
float l9_219=0.0;
float l9_220=1.0;
bool l9_221=l9_216;
float l9_222=l9_217;
float l9_223=fast::clamp(l9_218,l9_219,l9_220);
float l9_224=step(abs(l9_218-l9_223),9.9999997e-06);
l9_222*=(l9_224+((1.0-float(l9_221))*(1.0-l9_224)));
l9_218=l9_223;
l9_214=l9_218;
l9_217=l9_222;
}
param_19.x=l9_214;
l9_179=l9_217;
float l9_225=param_19.y;
int l9_226=param_22.y;
bool l9_227=l9_178;
float l9_228=l9_179;
if ((l9_226==0)||(l9_226==3))
{
float l9_229=l9_225;
float l9_230=0.0;
float l9_231=1.0;
bool l9_232=l9_227;
float l9_233=l9_228;
float l9_234=fast::clamp(l9_229,l9_230,l9_231);
float l9_235=step(abs(l9_229-l9_234),9.9999997e-06);
l9_233*=(l9_235+((1.0-float(l9_232))*(1.0-l9_235)));
l9_229=l9_234;
l9_225=l9_229;
l9_228=l9_233;
}
param_19.y=l9_225;
l9_179=l9_228;
float2 l9_236=param_19;
int l9_237=param_17;
int l9_238=param_18;
float l9_239=param_27;
float2 l9_240=l9_236;
int l9_241=l9_237;
int l9_242=l9_238;
float3 l9_243=float3(0.0);
if (l9_241==0)
{
l9_243=float3(l9_240,0.0);
}
else
{
if (l9_241==1)
{
l9_243=float3(l9_240.x,(l9_240.y*0.5)+(0.5-(float(l9_242)*0.5)),0.0);
}
else
{
l9_243=float3(l9_240,float(l9_242));
}
}
float3 l9_244=l9_243;
float3 l9_245=l9_244;
float2 l9_246=l9_245.xy;
float l9_247=l9_239;
float4 l9_248=sc_set0.Tweak_N169.sample(sc_set0.Tweak_N169SmpSC,l9_246,bias(l9_247));
float4 l9_249=l9_248;
float4 l9_250=l9_249;
if (param_25)
{
l9_250=mix(param_26,l9_250,float4(l9_179));
}
float4 l9_251=l9_250;
Output_N169=l9_251;
float Value1_N170=0.0;
float Value2_N170=0.0;
float Value3_N170=0.0;
float4 param_28=Output_N169;
float param_29=param_28.x;
float param_30=param_28.y;
float param_31=param_28.z;
Value1_N170=param_29;
Value2_N170=param_30;
Value3_N170=param_31;
float4 Output_N174=float4(0.0);
float3 param_32=Output_N173.xyz;
float param_33=Output_N17;
float3 param_34=Output_N168.xyz;
float3 param_35=(*sc_set0.UserUniforms).Port_Emissive_N174;
float param_36=Value1_N170;
float param_37=Value2_N170;
float3 param_38=float3(Value3_N170);
float3 param_39=(*sc_set0.UserUniforms).Port_SpecularAO_N174;
ssGlobals param_41=Globals;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
param_41.BumpedNormal=float3x3(float3(param_41.VertexTangent_WorldSpace),float3(param_41.VertexBinormal_WorldSpace),float3(param_41.VertexNormal_WorldSpace))*param_34;
}
param_33=fast::clamp(param_33,0.0,1.0);
float l9_252=param_33;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_252<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_253=gl_FragCoord;
float2 l9_254=floor(mod(l9_253.xy,float2(4.0)));
float l9_255=(mod(dot(l9_254,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_252<l9_255)
{
discard_fragment();
}
}
param_32=fast::max(param_32,float3(0.0));
float4 param_40;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
param_40=float4(param_32,param_33);
}
else
{
param_36=fast::clamp(param_36,0.0,1.0);
param_37=fast::clamp(param_37,0.0,1.0);
param_38=fast::clamp(param_38,float3(0.0),float3(1.0));
float3 l9_256=param_32;
float l9_257=param_33;
float3 l9_258=param_41.BumpedNormal;
float3 l9_259=param_41.PositionWS;
float3 l9_260=param_41.ViewDirWS;
float3 l9_261=param_35;
float l9_262=param_36;
float l9_263=param_37;
float3 l9_264=param_38;
float3 l9_265=param_39;
SurfaceProperties l9_266;
l9_266.albedo=float3(0.0);
l9_266.opacity=1.0;
l9_266.normal=float3(0.0);
l9_266.positionWS=float3(0.0);
l9_266.viewDirWS=float3(0.0);
l9_266.metallic=0.0;
l9_266.roughness=0.0;
l9_266.emissive=float3(0.0);
l9_266.ao=float3(1.0);
l9_266.specularAo=float3(1.0);
l9_266.bakedShadows=float3(1.0);
SurfaceProperties l9_267=l9_266;
SurfaceProperties l9_268=l9_267;
l9_268.opacity=l9_257;
float3 l9_269=l9_256;
float3 l9_270;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_270=float3(pow(l9_269.x,2.2),pow(l9_269.y,2.2),pow(l9_269.z,2.2));
}
else
{
l9_270=l9_269*l9_269;
}
float3 l9_271=l9_270;
l9_268.albedo=l9_271;
l9_268.normal=normalize(l9_258);
l9_268.positionWS=l9_259;
l9_268.viewDirWS=l9_260;
float3 l9_272=l9_261;
float3 l9_273;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_273=float3(pow(l9_272.x,2.2),pow(l9_272.y,2.2),pow(l9_272.z,2.2));
}
else
{
l9_273=l9_272*l9_272;
}
float3 l9_274=l9_273;
l9_268.emissive=l9_274;
l9_268.metallic=l9_262;
l9_268.roughness=l9_263;
l9_268.ao=l9_264;
l9_268.specularAo=l9_265;
if ((int(sc_SSAOEnabled_tmp)!=0))
{
float3 l9_275=l9_268.positionWS;
l9_268.ao=evaluateSSAO(l9_275,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.sc_SSAOTexture,sc_set0.sc_SSAOTextureSmpSC);
}
SurfaceProperties l9_276=l9_268;
SurfaceProperties l9_277=l9_276;
float3 l9_278=mix(float3(0.039999999),l9_277.albedo*l9_277.metallic,float3(l9_277.metallic));
float3 l9_279=mix(l9_277.albedo*(1.0-l9_277.metallic),float3(0.0),float3(l9_277.metallic));
l9_276.albedo=l9_279;
l9_276.specColor=l9_278;
SurfaceProperties l9_280=l9_276;
l9_268=l9_280;
SurfaceProperties l9_281=l9_268;
LightingComponents l9_282;
l9_282.directDiffuse=float3(0.0);
l9_282.directSpecular=float3(0.0);
l9_282.indirectDiffuse=float3(1.0);
l9_282.indirectSpecular=float3(0.0);
l9_282.emitted=float3(0.0);
l9_282.transmitted=float3(0.0);
LightingComponents l9_283=l9_282;
LightingComponents l9_284=l9_283;
float3 l9_285=l9_281.viewDirWS;
int l9_286=0;
float4 l9_287=float4(l9_281.bakedShadows,1.0);
if (sc_DirectionalLightsCount_tmp>0)
{
sc_DirectionalLight_t l9_288;
LightProperties l9_289;
int l9_290=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_290<sc_DirectionalLightsCount_tmp)
{
l9_288.direction=(*sc_set0.UserUniforms).sc_DirectionalLights[l9_290].direction;
l9_288.color=(*sc_set0.UserUniforms).sc_DirectionalLights[l9_290].color;
l9_289.direction=l9_288.direction;
l9_289.color=l9_288.color.xyz;
l9_289.attenuation=l9_288.color.w;
l9_289.attenuation*=l9_287[(l9_286<3) ? l9_286 : 3];
l9_286++;
LightingComponents l9_291=l9_284;
LightProperties l9_292=l9_289;
SurfaceProperties l9_293=l9_281;
float3 l9_294=l9_285;
SurfaceProperties l9_295=l9_293;
float3 l9_296=l9_292.direction;
float l9_297=dot(l9_295.normal,l9_296);
float l9_298=fast::clamp(l9_297,0.0,1.0);
float3 l9_299=float3(l9_298);
l9_291.directDiffuse+=((l9_299*l9_292.color)*l9_292.attenuation);
SurfaceProperties l9_300=l9_293;
float3 l9_301=l9_292.direction;
float3 l9_302=l9_294;
l9_291.directSpecular+=((calculateDirectSpecular(l9_300,l9_301,l9_302)*l9_292.color)*l9_292.attenuation);
LightingComponents l9_303=l9_291;
l9_284=l9_303;
l9_290++;
continue;
}
else
{
break;
}
}
}
if (sc_PointLightsCount_tmp>0)
{
sc_PointLight_t_1 l9_304;
LightProperties l9_305;
int l9_306=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_306<sc_PointLightsCount_tmp)
{
l9_304.falloffEnabled=(*sc_set0.UserUniforms).sc_PointLights[l9_306].falloffEnabled!=0;
l9_304.falloffEndDistance=(*sc_set0.UserUniforms).sc_PointLights[l9_306].falloffEndDistance;
l9_304.negRcpFalloffEndDistance4=(*sc_set0.UserUniforms).sc_PointLights[l9_306].negRcpFalloffEndDistance4;
l9_304.angleScale=(*sc_set0.UserUniforms).sc_PointLights[l9_306].angleScale;
l9_304.angleOffset=(*sc_set0.UserUniforms).sc_PointLights[l9_306].angleOffset;
l9_304.direction=(*sc_set0.UserUniforms).sc_PointLights[l9_306].direction;
l9_304.position=(*sc_set0.UserUniforms).sc_PointLights[l9_306].position;
l9_304.color=(*sc_set0.UserUniforms).sc_PointLights[l9_306].color;
float3 l9_307=l9_304.position-l9_281.positionWS;
l9_305.direction=normalize(l9_307);
l9_305.color=l9_304.color.xyz;
l9_305.attenuation=l9_304.color.w;
l9_305.attenuation*=l9_287[(l9_286<3) ? l9_286 : 3];
float3 l9_308=l9_305.direction;
float3 l9_309=l9_304.direction;
float l9_310=l9_304.angleScale;
float l9_311=l9_304.angleOffset;
float l9_312=dot(l9_308,l9_309);
float l9_313=fast::clamp((l9_312*l9_310)+l9_311,0.0,1.0);
float l9_314=l9_313*l9_313;
l9_305.attenuation*=l9_314;
if (l9_304.falloffEnabled)
{
float l9_315=length(l9_307);
float l9_316=l9_304.falloffEndDistance;
l9_305.attenuation*=computeDistanceAttenuation(l9_315,l9_316);
}
l9_286++;
LightingComponents l9_317=l9_284;
LightProperties l9_318=l9_305;
SurfaceProperties l9_319=l9_281;
float3 l9_320=l9_285;
SurfaceProperties l9_321=l9_319;
float3 l9_322=l9_318.direction;
float l9_323=dot(l9_321.normal,l9_322);
float l9_324=fast::clamp(l9_323,0.0,1.0);
float3 l9_325=float3(l9_324);
l9_317.directDiffuse+=((l9_325*l9_318.color)*l9_318.attenuation);
SurfaceProperties l9_326=l9_319;
float3 l9_327=l9_318.direction;
float3 l9_328=l9_320;
l9_317.directSpecular+=((calculateDirectSpecular(l9_326,l9_327,l9_328)*l9_318.color)*l9_318.attenuation);
LightingComponents l9_329=l9_317;
l9_284=l9_329;
l9_306++;
continue;
}
else
{
break;
}
}
}
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float3 l9_330=float3(0.0);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float2 l9_331=abs(in.varShadowTex-float2(0.5));
float l9_332=fast::max(l9_331.x,l9_331.y);
float l9_333=step(l9_332,0.5);
float4 l9_334=sc_set0.sc_ShadowTexture.sample(sc_set0.sc_ShadowTextureSmpSC,in.varShadowTex)*l9_333;
float3 l9_335=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_334.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float l9_336=l9_334.w*(*sc_set0.UserUniforms).sc_ShadowDensity;
l9_330=mix(float3(1.0),l9_335,float3(l9_336));
}
else
{
l9_330=float3(1.0);
}
float3 l9_337=l9_330;
float3 l9_338=l9_337;
l9_284.directDiffuse*=l9_338;
l9_284.directSpecular*=l9_338;
}
bool l9_339=(*sc_set0.UserUniforms).receivesRayTracedShadows!=0;
if (l9_339)
{
float4 l9_340=gl_FragCoord;
float2 l9_341=l9_340.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_342=l9_341;
float2 l9_343=l9_342;
int l9_344=0;
if ((int(sc_RayTracedShadowTextureHasSwappedViews_tmp)!=0))
{
int l9_345=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_345=0;
}
else
{
l9_345=in.varStereoViewID;
}
int l9_346=l9_345;
l9_344=1-l9_346;
}
else
{
int l9_347=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_347=0;
}
else
{
l9_347=in.varStereoViewID;
}
int l9_348=l9_347;
l9_344=l9_348;
}
int l9_349=l9_344;
float2 l9_350=l9_343;
int l9_351=l9_349;
float2 l9_352=l9_350;
int l9_353=l9_351;
float l9_354=0.0;
float4 l9_355=float4(0.0);
float2 l9_356=l9_352;
int l9_357=sc_RayTracedShadowTextureLayout_tmp;
int l9_358=l9_353;
float l9_359=l9_354;
float2 l9_360=l9_356;
int l9_361=l9_357;
int l9_362=l9_358;
float3 l9_363=float3(0.0);
if (l9_361==0)
{
l9_363=float3(l9_360,0.0);
}
else
{
if (l9_361==1)
{
l9_363=float3(l9_360.x,(l9_360.y*0.5)+(0.5-(float(l9_362)*0.5)),0.0);
}
else
{
l9_363=float3(l9_360,float(l9_362));
}
}
float3 l9_364=l9_363;
float3 l9_365=l9_364;
float2 l9_366=l9_365.xy;
float l9_367=l9_359;
float4 l9_368=sc_set0.sc_RayTracedShadowTexture.sample(sc_set0.sc_RayTracedShadowTextureSmpSC,l9_366,bias(l9_367));
float4 l9_369=l9_368;
l9_355=l9_369;
float4 l9_370=l9_355;
float4 l9_371=l9_370;
float4 l9_372=l9_371;
float l9_373=l9_372.x;
float3 l9_374=float3(l9_373);
float3 l9_375=l9_374;
l9_284.directDiffuse*=(float3(1.0)-l9_375);
l9_284.directSpecular*=(float3(1.0)-l9_375);
}
SurfaceProperties l9_376=l9_281;
float3 l9_377=l9_376.normal;
float3 l9_378=float3(0.0);
if ((sc_EnvLightMode_tmp==sc_AmbientLightMode_EnvironmentMap_tmp)||(sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp))
{
float3 l9_379=l9_377;
float3 l9_380=l9_379;
float l9_381=(*sc_set0.UserUniforms).sc_EnvmapRotation.y;
float2 l9_382=float2(0.0);
float l9_383=l9_380.x;
float l9_384=-l9_380.z;
float l9_385=(l9_383<0.0) ? (-1.0) : 1.0;
float l9_386=l9_385*acos(fast::clamp(l9_384/length(float2(l9_383,l9_384)),-1.0,1.0));
l9_382.x=l9_386-1.5707964;
l9_382.y=acos(l9_380.y);
l9_382/=float2(6.2831855,3.1415927);
l9_382.y=1.0-l9_382.y;
l9_382.x+=(l9_381/360.0);
l9_382.x=fract((l9_382.x+floor(l9_382.x))+1.0);
float2 l9_387=l9_382;
float2 l9_388=l9_387;
float4 l9_389=float4(0.0);
if (sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float2 l9_390=l9_388;
float2 l9_391=(*sc_set0.UserUniforms).sc_EnvmapSpecularSize.xy;
float l9_392=5.0;
l9_388=calcSeamlessPanoramicUvsForSampling(l9_390,l9_391,l9_392);
}
float2 l9_393=l9_388;
float l9_394=13.0;
int l9_395=0;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_396=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_396=0;
}
else
{
l9_396=in.varStereoViewID;
}
int l9_397=l9_396;
l9_395=1-l9_397;
}
else
{
int l9_398=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_398=0;
}
else
{
l9_398=in.varStereoViewID;
}
int l9_399=l9_398;
l9_395=l9_399;
}
int l9_400=l9_395;
float2 l9_401=l9_393;
int l9_402=l9_400;
float l9_403=l9_394;
float4 l9_404=float4(0.0);
float2 l9_405=l9_401;
int l9_406=sc_EnvmapSpecularLayout_tmp;
int l9_407=l9_402;
float l9_408=l9_403;
float2 l9_409=l9_405;
int l9_410=l9_406;
int l9_411=l9_407;
float3 l9_412=float3(0.0);
if (l9_410==0)
{
l9_412=float3(l9_409,0.0);
}
else
{
if (l9_410==1)
{
l9_412=float3(l9_409.x,(l9_409.y*0.5)+(0.5-(float(l9_411)*0.5)),0.0);
}
else
{
l9_412=float3(l9_409,float(l9_411));
}
}
float3 l9_413=l9_412;
float3 l9_414=l9_413;
float2 l9_415=l9_414.xy;
float l9_416=l9_408;
float4 l9_417=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_415,bias(l9_416));
float4 l9_418=l9_417;
l9_404=l9_418;
float4 l9_419=l9_404;
float4 l9_420=l9_419;
l9_389=l9_420;
}
else
{
if ((sc_MaxTextureImageUnits_tmp>8)&&(int(sc_HasDiffuseEnvmap_tmp)!=0))
{
float2 l9_421=l9_388;
float2 l9_422=(*sc_set0.UserUniforms).sc_EnvmapDiffuseSize.xy;
float l9_423=0.0;
l9_388=calcSeamlessPanoramicUvsForSampling(l9_421,l9_422,l9_423);
float2 l9_424=l9_388;
float l9_425=-13.0;
int l9_426=0;
if ((int(sc_EnvmapDiffuseHasSwappedViews_tmp)!=0))
{
int l9_427=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_427=0;
}
else
{
l9_427=in.varStereoViewID;
}
int l9_428=l9_427;
l9_426=1-l9_428;
}
else
{
int l9_429=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_429=0;
}
else
{
l9_429=in.varStereoViewID;
}
int l9_430=l9_429;
l9_426=l9_430;
}
int l9_431=l9_426;
float2 l9_432=l9_424;
int l9_433=l9_431;
float l9_434=l9_425;
float4 l9_435=float4(0.0);
float2 l9_436=l9_432;
int l9_437=sc_EnvmapDiffuseLayout_tmp;
int l9_438=l9_433;
float l9_439=l9_434;
float2 l9_440=l9_436;
int l9_441=l9_437;
int l9_442=l9_438;
float3 l9_443=float3(0.0);
if (l9_441==0)
{
l9_443=float3(l9_440,0.0);
}
else
{
if (l9_441==1)
{
l9_443=float3(l9_440.x,(l9_440.y*0.5)+(0.5-(float(l9_442)*0.5)),0.0);
}
else
{
l9_443=float3(l9_440,float(l9_442));
}
}
float3 l9_444=l9_443;
float3 l9_445=l9_444;
float2 l9_446=l9_445.xy;
float l9_447=l9_439;
float4 l9_448=sc_set0.sc_EnvmapDiffuse.sample(sc_set0.sc_EnvmapDiffuseSmpSC,l9_446,bias(l9_447));
float4 l9_449=l9_448;
l9_435=l9_449;
float4 l9_450=l9_435;
float4 l9_451=l9_450;
l9_389=l9_451;
}
else
{
float2 l9_452=l9_388;
float l9_453=13.0;
int l9_454=0;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_455=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_455=0;
}
else
{
l9_455=in.varStereoViewID;
}
int l9_456=l9_455;
l9_454=1-l9_456;
}
else
{
int l9_457=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_457=0;
}
else
{
l9_457=in.varStereoViewID;
}
int l9_458=l9_457;
l9_454=l9_458;
}
int l9_459=l9_454;
float2 l9_460=l9_452;
int l9_461=l9_459;
float l9_462=l9_453;
float4 l9_463=float4(0.0);
float2 l9_464=l9_460;
int l9_465=sc_EnvmapSpecularLayout_tmp;
int l9_466=l9_461;
float l9_467=l9_462;
float2 l9_468=l9_464;
int l9_469=l9_465;
int l9_470=l9_466;
float3 l9_471=float3(0.0);
if (l9_469==0)
{
l9_471=float3(l9_468,0.0);
}
else
{
if (l9_469==1)
{
l9_471=float3(l9_468.x,(l9_468.y*0.5)+(0.5-(float(l9_470)*0.5)),0.0);
}
else
{
l9_471=float3(l9_468,float(l9_470));
}
}
float3 l9_472=l9_471;
float3 l9_473=l9_472;
float2 l9_474=l9_473.xy;
float l9_475=l9_467;
float4 l9_476=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_474,bias(l9_475));
float4 l9_477=l9_476;
l9_463=l9_477;
float4 l9_478=l9_463;
float4 l9_479=l9_478;
l9_389=l9_479;
}
}
float4 l9_480=l9_389;
float3 l9_481=l9_480.xyz*(1.0/l9_480.w);
float3 l9_482=l9_481*(*sc_set0.UserUniforms).sc_EnvmapExposure;
l9_378=l9_482;
}
else
{
if (sc_EnvLightMode_tmp==sc_AmbientLightMode_SphericalHarmonics_tmp)
{
float3 l9_483=(*sc_set0.UserUniforms).sc_Sh[0];
float3 l9_484=(*sc_set0.UserUniforms).sc_Sh[1];
float3 l9_485=(*sc_set0.UserUniforms).sc_Sh[2];
float3 l9_486=(*sc_set0.UserUniforms).sc_Sh[3];
float3 l9_487=(*sc_set0.UserUniforms).sc_Sh[4];
float3 l9_488=(*sc_set0.UserUniforms).sc_Sh[5];
float3 l9_489=(*sc_set0.UserUniforms).sc_Sh[6];
float3 l9_490=(*sc_set0.UserUniforms).sc_Sh[7];
float3 l9_491=(*sc_set0.UserUniforms).sc_Sh[8];
float3 l9_492=-l9_377;
float l9_493=0.0;
l9_493=l9_492.x;
float l9_494=l9_492.y;
float l9_495=l9_492.z;
float l9_496=l9_493*l9_493;
float l9_497=l9_494*l9_494;
float l9_498=l9_495*l9_495;
float l9_499=l9_493*l9_494;
float l9_500=l9_494*l9_495;
float l9_501=l9_493*l9_495;
float3 l9_502=((((((l9_491*0.42904299)*(l9_496-l9_497))+((l9_489*0.74312502)*l9_498))+(l9_483*0.88622701))-(l9_489*0.24770799))+((((l9_487*l9_499)+(l9_490*l9_501))+(l9_488*l9_500))*0.85808599))+((((l9_486*l9_493)+(l9_484*l9_494))+(l9_485*l9_495))*1.0233279);
l9_378=l9_502*(*sc_set0.UserUniforms).sc_ShIntensity;
}
}
bool l9_503=(*sc_set0.UserUniforms).receivesRayTracedDiffuseIndirect!=0;
if (l9_503)
{
float4 l9_504=sampleRayTracedIndirectDiffuse(in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.sc_RayTracedDiffIndTexture,sc_set0.sc_RayTracedDiffIndTextureSmpSC,gl_FragCoord);
l9_378=mix(l9_378,l9_504.xyz,float3(l9_504.w));
}
if (sc_AmbientLightsCount_tmp>0)
{
if (sc_AmbientLightMode0_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_378+=((*sc_set0.UserUniforms).sc_AmbientLights[0].color*(*sc_set0.UserUniforms).sc_AmbientLights[0].intensity);
}
else
{
l9_378.x+=(1e-06*(*sc_set0.UserUniforms).sc_AmbientLights[0].color.x);
}
}
if (sc_AmbientLightsCount_tmp>1)
{
if (sc_AmbientLightMode1_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_378+=((*sc_set0.UserUniforms).sc_AmbientLights[1].color*(*sc_set0.UserUniforms).sc_AmbientLights[1].intensity);
}
else
{
l9_378.x+=(1e-06*(*sc_set0.UserUniforms).sc_AmbientLights[1].color.x);
}
}
if (sc_AmbientLightsCount_tmp>2)
{
if (sc_AmbientLightMode2_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_378+=((*sc_set0.UserUniforms).sc_AmbientLights[2].color*(*sc_set0.UserUniforms).sc_AmbientLights[2].intensity);
}
else
{
l9_378.x+=(1e-06*(*sc_set0.UserUniforms).sc_AmbientLights[2].color.x);
}
}
if ((int(sc_LightEstimation_tmp)!=0))
{
float3 l9_505=l9_377;
float3 l9_506=(*sc_set0.UserUniforms).sc_LightEstimationData.ambientLight;
sc_SphericalGaussianLight_t l9_507;
float l9_508;
int l9_509=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_509<sc_LightEstimationSGCount_tmp)
{
l9_507.color=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_509].color;
l9_507.sharpness=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_509].sharpness;
l9_507.axis=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_509].axis;
float3 l9_510=l9_505;
float l9_511=dot(l9_507.axis,l9_510);
float l9_512=l9_507.sharpness;
float l9_513=0.36000001;
float l9_514=1.0/(4.0*l9_513);
float l9_515=exp(-l9_512);
float l9_516=l9_515*l9_515;
float l9_517=1.0/l9_512;
float l9_518=(1.0+(2.0*l9_516))-l9_517;
float l9_519=((l9_515-l9_516)*l9_517)-l9_516;
float l9_520=sqrt(1.0-l9_518);
float l9_521=l9_513*l9_511;
float l9_522=l9_514*l9_520;
float l9_523=l9_521+l9_522;
float l9_524=l9_511;
float l9_525=fast::clamp(l9_524,0.0,1.0);
float l9_526=l9_525;
if (step(abs(l9_521),l9_522)>0.5)
{
l9_508=(l9_523*l9_523)/l9_520;
}
else
{
l9_508=l9_526;
}
l9_526=l9_508;
float l9_527=(l9_518*l9_526)+l9_519;
sc_SphericalGaussianLight_t l9_528=l9_507;
float3 l9_529=(l9_528.color/float3(l9_528.sharpness))*6.2831855;
float3 l9_530=(l9_529*l9_527)/float3(3.1415927);
l9_506+=l9_530;
l9_509++;
continue;
}
else
{
break;
}
}
float3 l9_531=l9_506;
l9_378+=l9_531;
}
float3 l9_532=l9_378;
float3 l9_533=l9_532;
l9_284.indirectDiffuse=l9_533;
SurfaceProperties l9_534=l9_281;
float3 l9_535=l9_285;
float3 l9_536=float3(0.0);
if ((sc_EnvLightMode_tmp==sc_AmbientLightMode_EnvironmentMap_tmp)||(sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp))
{
SurfaceProperties l9_537=l9_534;
float3 l9_538=l9_535;
float3 l9_539=l9_537.normal;
float3 l9_540=reflect(-l9_538,l9_539);
float3 l9_541=l9_539;
float3 l9_542=l9_540;
float l9_543=l9_537.roughness;
l9_540=getSpecularDominantDir(l9_541,l9_542,l9_543);
float l9_544=l9_537.roughness;
float l9_545=pow(l9_544,0.66666669);
float l9_546=fast::clamp(l9_545,0.0,1.0);
float l9_547=l9_546*5.0;
float l9_548=l9_547;
float l9_549=l9_548;
float3 l9_550=l9_540;
float l9_551=l9_549;
float3 l9_552=l9_550;
float l9_553=l9_551;
float4 l9_554=float4(0.0);
float3 l9_555=l9_552;
float l9_556=(*sc_set0.UserUniforms).sc_EnvmapRotation.y;
float2 l9_557=float2(0.0);
float l9_558=l9_555.x;
float l9_559=-l9_555.z;
float l9_560=(l9_558<0.0) ? (-1.0) : 1.0;
float l9_561=l9_560*acos(fast::clamp(l9_559/length(float2(l9_558,l9_559)),-1.0,1.0));
l9_557.x=l9_561-1.5707964;
l9_557.y=acos(l9_555.y);
l9_557/=float2(6.2831855,3.1415927);
l9_557.y=1.0-l9_557.y;
l9_557.x+=(l9_556/360.0);
l9_557.x=fract((l9_557.x+floor(l9_557.x))+1.0);
float2 l9_562=l9_557;
float2 l9_563=l9_562;
if (SC_DEVICE_CLASS_tmp>=2)
{
float l9_564=floor(l9_553);
float l9_565=ceil(l9_553);
float l9_566=l9_553-l9_564;
float2 l9_567=l9_563;
float2 l9_568=(*sc_set0.UserUniforms).sc_EnvmapSpecularSize.xy;
float l9_569=l9_564;
float2 l9_570=calcSeamlessPanoramicUvsForSampling(l9_567,l9_568,l9_569);
float2 l9_571=l9_570;
float l9_572=l9_564;
float2 l9_573=l9_571;
float l9_574=l9_572;
int l9_575=0;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_576=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_576=0;
}
else
{
l9_576=in.varStereoViewID;
}
int l9_577=l9_576;
l9_575=1-l9_577;
}
else
{
int l9_578=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_578=0;
}
else
{
l9_578=in.varStereoViewID;
}
int l9_579=l9_578;
l9_575=l9_579;
}
int l9_580=l9_575;
float2 l9_581=l9_573;
int l9_582=l9_580;
float l9_583=l9_574;
float4 l9_584=float4(0.0);
float2 l9_585=l9_581;
int l9_586=sc_EnvmapSpecularLayout_tmp;
int l9_587=l9_582;
float l9_588=l9_583;
float2 l9_589=l9_585;
int l9_590=l9_586;
int l9_591=l9_587;
float3 l9_592=float3(0.0);
if (l9_590==0)
{
l9_592=float3(l9_589,0.0);
}
else
{
if (l9_590==1)
{
l9_592=float3(l9_589.x,(l9_589.y*0.5)+(0.5-(float(l9_591)*0.5)),0.0);
}
else
{
l9_592=float3(l9_589,float(l9_591));
}
}
float3 l9_593=l9_592;
float3 l9_594=l9_593;
float2 l9_595=l9_594.xy;
float l9_596=l9_588;
float4 l9_597=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_595,level(l9_596));
float4 l9_598=l9_597;
l9_584=l9_598;
float4 l9_599=l9_584;
float4 l9_600=l9_599;
float4 l9_601=l9_600;
float4 l9_602=l9_601;
float2 l9_603=l9_563;
float2 l9_604=(*sc_set0.UserUniforms).sc_EnvmapSpecularSize.xy;
float l9_605=l9_565;
float2 l9_606=calcSeamlessPanoramicUvsForSampling(l9_603,l9_604,l9_605);
float2 l9_607=l9_606;
float l9_608=l9_565;
float2 l9_609=l9_607;
float l9_610=l9_608;
int l9_611=0;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_612=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_612=0;
}
else
{
l9_612=in.varStereoViewID;
}
int l9_613=l9_612;
l9_611=1-l9_613;
}
else
{
int l9_614=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_614=0;
}
else
{
l9_614=in.varStereoViewID;
}
int l9_615=l9_614;
l9_611=l9_615;
}
int l9_616=l9_611;
float2 l9_617=l9_609;
int l9_618=l9_616;
float l9_619=l9_610;
float4 l9_620=float4(0.0);
float2 l9_621=l9_617;
int l9_622=sc_EnvmapSpecularLayout_tmp;
int l9_623=l9_618;
float l9_624=l9_619;
float2 l9_625=l9_621;
int l9_626=l9_622;
int l9_627=l9_623;
float3 l9_628=float3(0.0);
if (l9_626==0)
{
l9_628=float3(l9_625,0.0);
}
else
{
if (l9_626==1)
{
l9_628=float3(l9_625.x,(l9_625.y*0.5)+(0.5-(float(l9_627)*0.5)),0.0);
}
else
{
l9_628=float3(l9_625,float(l9_627));
}
}
float3 l9_629=l9_628;
float3 l9_630=l9_629;
float2 l9_631=l9_630.xy;
float l9_632=l9_624;
float4 l9_633=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_631,level(l9_632));
float4 l9_634=l9_633;
l9_620=l9_634;
float4 l9_635=l9_620;
float4 l9_636=l9_635;
float4 l9_637=l9_636;
float4 l9_638=l9_637;
l9_554=mix(l9_602,l9_638,float4(l9_566));
}
else
{
float2 l9_639=l9_563;
float l9_640=l9_553;
float2 l9_641=l9_639;
float l9_642=l9_640;
int l9_643=0;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_644=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_644=0;
}
else
{
l9_644=in.varStereoViewID;
}
int l9_645=l9_644;
l9_643=1-l9_645;
}
else
{
int l9_646=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_646=0;
}
else
{
l9_646=in.varStereoViewID;
}
int l9_647=l9_646;
l9_643=l9_647;
}
int l9_648=l9_643;
float2 l9_649=l9_641;
int l9_650=l9_648;
float l9_651=l9_642;
float4 l9_652=float4(0.0);
float2 l9_653=l9_649;
int l9_654=sc_EnvmapSpecularLayout_tmp;
int l9_655=l9_650;
float l9_656=l9_651;
float2 l9_657=l9_653;
int l9_658=l9_654;
int l9_659=l9_655;
float3 l9_660=float3(0.0);
if (l9_658==0)
{
l9_660=float3(l9_657,0.0);
}
else
{
if (l9_658==1)
{
l9_660=float3(l9_657.x,(l9_657.y*0.5)+(0.5-(float(l9_659)*0.5)),0.0);
}
else
{
l9_660=float3(l9_657,float(l9_659));
}
}
float3 l9_661=l9_660;
float3 l9_662=l9_661;
float2 l9_663=l9_662.xy;
float l9_664=l9_656;
float4 l9_665=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_663,level(l9_664));
float4 l9_666=l9_665;
l9_652=l9_666;
float4 l9_667=l9_652;
float4 l9_668=l9_667;
float4 l9_669=l9_668;
l9_554=l9_669;
}
float4 l9_670=l9_554;
float3 l9_671=l9_670.xyz*(1.0/l9_670.w);
float3 l9_672=l9_671;
float3 l9_673=l9_672*(*sc_set0.UserUniforms).sc_EnvmapExposure;
l9_673+=float3(1e-06);
float3 l9_674=l9_673;
float3 l9_675=l9_674;
bool l9_676=(*sc_set0.UserUniforms).receivesRayTracedReflections!=0;
if (l9_676)
{
float4 l9_677=sampleRayTracedReflections(in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.sc_RayTracedReflectionTexture,sc_set0.sc_RayTracedReflectionTextureSmpSC,gl_FragCoord);
l9_675=mix(l9_675,l9_677.xyz,float3(l9_677.w));
}
SurfaceProperties l9_678=l9_537;
float l9_679=abs(dot(l9_539,l9_538));
float3 l9_680=l9_675*envBRDFApprox(l9_678,l9_679);
l9_536+=l9_680;
}
if ((int(sc_LightEstimation_tmp)!=0))
{
SurfaceProperties l9_681=l9_534;
float3 l9_682=l9_535;
float l9_683=fast::clamp(l9_681.roughness*l9_681.roughness,0.0099999998,1.0);
float3 l9_684=(*sc_set0.UserUniforms).sc_LightEstimationData.ambientLight*l9_681.specColor;
sc_SphericalGaussianLight_t l9_685;
sc_SphericalGaussianLight_t l9_686;
sc_SphericalGaussianLight_t l9_687;
int l9_688=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_688<sc_LightEstimationSGCount_tmp)
{
l9_685.color=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_688].color;
l9_685.sharpness=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_688].sharpness;
l9_685.axis=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_688].axis;
float3 l9_689=l9_681.normal;
float l9_690=l9_683;
float3 l9_691=l9_682;
float3 l9_692=l9_681.specColor;
float3 l9_693=l9_689;
float l9_694=l9_690;
l9_686.axis=l9_693;
float l9_695=l9_694*l9_694;
l9_686.sharpness=2.0/l9_695;
l9_686.color=float3(1.0/(3.1415927*l9_695));
sc_SphericalGaussianLight_t l9_696=l9_686;
sc_SphericalGaussianLight_t l9_697=l9_696;
sc_SphericalGaussianLight_t l9_698=l9_697;
float3 l9_699=l9_691;
l9_687.axis=reflect(-l9_699,l9_698.axis);
l9_687.color=l9_698.color;
l9_687.sharpness=l9_698.sharpness;
l9_687.sharpness/=(4.0*fast::max(dot(l9_698.axis,l9_699),9.9999997e-05));
sc_SphericalGaussianLight_t l9_700=l9_687;
sc_SphericalGaussianLight_t l9_701=l9_700;
sc_SphericalGaussianLight_t l9_702=l9_701;
sc_SphericalGaussianLight_t l9_703=l9_685;
float l9_704=length((l9_702.axis*l9_702.sharpness)+(l9_703.axis*l9_703.sharpness));
float3 l9_705=(l9_702.color*exp((l9_704-l9_702.sharpness)-l9_703.sharpness))*l9_703.color;
float l9_706=1.0-exp((-2.0)*l9_704);
float3 l9_707=((l9_705*6.2831855)*l9_706)/float3(l9_704);
float3 l9_708=l9_707;
float3 l9_709=l9_701.axis;
float l9_710=l9_690*l9_690;
float l9_711=dot(l9_689,l9_709);
float l9_712=fast::clamp(l9_711,0.0,1.0);
float l9_713=l9_712;
float l9_714=dot(l9_689,l9_691);
float l9_715=fast::clamp(l9_714,0.0,1.0);
float l9_716=l9_715;
float3 l9_717=normalize(l9_701.axis+l9_691);
float l9_718=l9_710;
float l9_719=l9_713;
float l9_720=1.0/(l9_719+sqrt(l9_718+(((1.0-l9_718)*l9_719)*l9_719)));
float l9_721=l9_710;
float l9_722=l9_716;
float l9_723=1.0/(l9_722+sqrt(l9_721+(((1.0-l9_721)*l9_722)*l9_722)));
l9_708*=(l9_720*l9_723);
float l9_724=dot(l9_709,l9_717);
float l9_725=fast::clamp(l9_724,0.0,1.0);
float l9_726=pow(1.0-l9_725,5.0);
l9_708*=(l9_692+((float3(1.0)-l9_692)*l9_726));
l9_708*=l9_713;
float3 l9_727=l9_708;
l9_684+=l9_727;
l9_688++;
continue;
}
else
{
break;
}
}
float3 l9_728=l9_684;
l9_536+=l9_728;
}
float3 l9_729=l9_536;
l9_284.indirectSpecular=l9_729;
LightingComponents l9_730=l9_284;
LightingComponents l9_731=l9_730;
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_731.directDiffuse=float3(0.0);
l9_731.indirectDiffuse=float3(0.0);
float4 l9_732=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_733=out.FragColor0;
float4 l9_734=l9_733;
if ((int(sc_UseFramebufferFetchMarker_tmp)!=0))
{
l9_734.x+=(*sc_set0.UserUniforms)._sc_framebufferFetchMarker;
}
float4 l9_735=l9_734;
l9_732=l9_735;
}
else
{
float4 l9_736=gl_FragCoord;
float2 l9_737=l9_736.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_738=l9_737;
float2 l9_739=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_740=1;
int l9_741=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_741=0;
}
else
{
l9_741=in.varStereoViewID;
}
int l9_742=l9_741;
int l9_743=l9_742;
float3 l9_744=float3(l9_738,0.0);
int l9_745=l9_740;
int l9_746=l9_743;
if (l9_745==1)
{
l9_744.y=((2.0*l9_744.y)+float(l9_746))-1.0;
}
float2 l9_747=l9_744.xy;
l9_739=l9_747;
}
else
{
l9_739=l9_738;
}
float2 l9_748=l9_739;
float2 l9_749=l9_748;
float2 l9_750=l9_749;
int l9_751=0;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_752=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_752=0;
}
else
{
l9_752=in.varStereoViewID;
}
int l9_753=l9_752;
l9_751=1-l9_753;
}
else
{
int l9_754=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_754=0;
}
else
{
l9_754=in.varStereoViewID;
}
int l9_755=l9_754;
l9_751=l9_755;
}
int l9_756=l9_751;
float2 l9_757=l9_750;
int l9_758=l9_756;
float2 l9_759=l9_757;
int l9_760=l9_758;
float l9_761=0.0;
float4 l9_762=float4(0.0);
float2 l9_763=l9_759;
int l9_764=sc_ScreenTextureLayout_tmp;
int l9_765=l9_760;
float l9_766=l9_761;
float2 l9_767=l9_763;
int l9_768=l9_764;
int l9_769=l9_765;
float3 l9_770=float3(0.0);
if (l9_768==0)
{
l9_770=float3(l9_767,0.0);
}
else
{
if (l9_768==1)
{
l9_770=float3(l9_767.x,(l9_767.y*0.5)+(0.5-(float(l9_769)*0.5)),0.0);
}
else
{
l9_770=float3(l9_767,float(l9_769));
}
}
float3 l9_771=l9_770;
float3 l9_772=l9_771;
float2 l9_773=l9_772.xy;
float l9_774=l9_766;
float4 l9_775=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_773,bias(l9_774));
float4 l9_776=l9_775;
l9_762=l9_776;
float4 l9_777=l9_762;
float4 l9_778=l9_777;
float4 l9_779=l9_778;
l9_732=l9_779;
}
float4 l9_780=l9_732;
float4 l9_781=l9_780;
float3 l9_782=l9_781.xyz;
float3 l9_783;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_783=float3(pow(l9_782.x,2.2),pow(l9_782.y,2.2),pow(l9_782.z,2.2));
}
else
{
l9_783=l9_782*l9_782;
}
float3 l9_784=l9_783;
float3 l9_785=l9_784;
l9_731.transmitted=l9_785*mix(float3(1.0),l9_268.albedo,float3(l9_268.opacity));
l9_268.opacity=1.0;
}
bool l9_786=false;
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_786=true;
}
SurfaceProperties l9_787=l9_268;
LightingComponents l9_788=l9_731;
bool l9_789=l9_786;
float3 l9_790=float3(0.0);
bool l9_791=(*sc_set0.UserUniforms).receivesRayTracedAo!=0;
if (l9_791)
{
l9_790=l9_787.albedo*(l9_788.directDiffuse+(l9_788.indirectDiffuse*float3(1.0-sampleRayTracedAo(in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.sc_RayTracedAoTexture,sc_set0.sc_RayTracedAoTextureSmpSC,gl_FragCoord))));
}
else
{
l9_790=l9_787.albedo*(l9_788.directDiffuse+(l9_788.indirectDiffuse*l9_787.ao));
}
float3 l9_792=l9_788.directSpecular+(l9_788.indirectSpecular*l9_787.specularAo);
float3 l9_793=l9_787.emissive;
float3 l9_794=l9_788.transmitted;
if (l9_789)
{
float l9_795=l9_787.opacity;
l9_790*=srgbToLinear(l9_795);
}
float3 l9_796=((l9_790+l9_792)+l9_793)+l9_794;
float3 l9_797=l9_796;
float4 l9_798=float4(l9_797,l9_268.opacity);
if (!(int(sc_BlendMode_Multiply_tmp)!=0))
{
float3 l9_799=l9_798.xyz;
float l9_800=1.8;
float l9_801=1.4;
float l9_802=0.5;
float l9_803=1.5;
float3 l9_804=(l9_799*((l9_799*l9_800)+float3(l9_801)))/((l9_799*((l9_799*l9_800)+float3(l9_802)))+float3(l9_803));
l9_798=float4(l9_804.x,l9_804.y,l9_804.z,l9_798.w);
}
float3 l9_805=l9_798.xyz;
float l9_806=l9_805.x;
float l9_807=l9_805.y;
float l9_808=l9_805.z;
float3 l9_809=float3(linearToSrgb(l9_806),linearToSrgb(l9_807),linearToSrgb(l9_808));
l9_798=float4(l9_809.x,l9_809.y,l9_809.z,l9_798.w);
float4 l9_810=l9_798;
param_40=l9_810;
}
param_40=fast::max(param_40,float4(0.0));
Output_N174=param_40;
float Output_N45=0.0;
float param_42;
if ((int(Tweak_N45_tmp)!=0))
{
param_42=1.001;
}
else
{
param_42=0.001;
}
param_42-=0.001;
Output_N45=param_42;
float4 Output_N164=float4(0.0);
Output_N164=mix(Value_N47,Output_N174,float4(Output_N45));
FinalColor=Output_N164;
float4 param_43=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_811=param_43;
float4 l9_812=l9_811;
float l9_813=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_813=l9_812.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_813=fast::clamp(l9_812.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_813=fast::clamp(dot(l9_812.xyz,float3(l9_812.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_813=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_813=(1.0-dot(l9_812.xyz,float3(0.33333001)))*l9_812.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_813=(1.0-fast::clamp(dot(l9_812.xyz,float3(1.0)),0.0,1.0))*l9_812.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_813=fast::clamp(dot(l9_812.xyz,float3(1.0)),0.0,1.0)*l9_812.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_813=fast::clamp(dot(l9_812.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_813=fast::clamp(dot(l9_812.xyz,float3(1.0)),0.0,1.0)*l9_812.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_813=dot(l9_812.xyz,float3(0.33333001))*l9_812.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_813=1.0-fast::clamp(dot(l9_812.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_813=fast::clamp(dot(l9_812.xyz,float3(1.0)),0.0,1.0);
}
}
}
}
}
}
}
}
}
}
}
}
float l9_814=l9_813;
float l9_815=l9_814;
float l9_816=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_815;
float3 l9_817=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_811.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_818=float4(l9_817.x,l9_817.y,l9_817.z,l9_816);
param_43=l9_818;
}
else
{
if ((int(sc_RenderAlphaToColor_tmp)!=0))
{
param_43=float4(param_43.w);
}
else
{
if ((int(sc_BlendMode_Custom_tmp)!=0))
{
float4 l9_819=param_43;
float4 l9_820=float4(0.0);
float4 l9_821=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_822=out.FragColor0;
float4 l9_823=l9_822;
if ((int(sc_UseFramebufferFetchMarker_tmp)!=0))
{
l9_823.x+=(*sc_set0.UserUniforms)._sc_framebufferFetchMarker;
}
float4 l9_824=l9_823;
l9_821=l9_824;
}
else
{
float4 l9_825=gl_FragCoord;
float2 l9_826=l9_825.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_827=l9_826;
float2 l9_828=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_829=1;
int l9_830=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_830=0;
}
else
{
l9_830=in.varStereoViewID;
}
int l9_831=l9_830;
int l9_832=l9_831;
float3 l9_833=float3(l9_827,0.0);
int l9_834=l9_829;
int l9_835=l9_832;
if (l9_834==1)
{
l9_833.y=((2.0*l9_833.y)+float(l9_835))-1.0;
}
float2 l9_836=l9_833.xy;
l9_828=l9_836;
}
else
{
l9_828=l9_827;
}
float2 l9_837=l9_828;
float2 l9_838=l9_837;
float2 l9_839=l9_838;
int l9_840=0;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_841=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_841=0;
}
else
{
l9_841=in.varStereoViewID;
}
int l9_842=l9_841;
l9_840=1-l9_842;
}
else
{
int l9_843=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_843=0;
}
else
{
l9_843=in.varStereoViewID;
}
int l9_844=l9_843;
l9_840=l9_844;
}
int l9_845=l9_840;
float2 l9_846=l9_839;
int l9_847=l9_845;
float2 l9_848=l9_846;
int l9_849=l9_847;
float l9_850=0.0;
float4 l9_851=float4(0.0);
float2 l9_852=l9_848;
int l9_853=sc_ScreenTextureLayout_tmp;
int l9_854=l9_849;
float l9_855=l9_850;
float2 l9_856=l9_852;
int l9_857=l9_853;
int l9_858=l9_854;
float3 l9_859=float3(0.0);
if (l9_857==0)
{
l9_859=float3(l9_856,0.0);
}
else
{
if (l9_857==1)
{
l9_859=float3(l9_856.x,(l9_856.y*0.5)+(0.5-(float(l9_858)*0.5)),0.0);
}
else
{
l9_859=float3(l9_856,float(l9_858));
}
}
float3 l9_860=l9_859;
float3 l9_861=l9_860;
float2 l9_862=l9_861.xy;
float l9_863=l9_855;
float4 l9_864=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_862,bias(l9_863));
float4 l9_865=l9_864;
l9_851=l9_865;
float4 l9_866=l9_851;
float4 l9_867=l9_866;
float4 l9_868=l9_867;
l9_821=l9_868;
}
float4 l9_869=l9_821;
float4 l9_870=l9_869;
float3 l9_871=l9_870.xyz;
float3 l9_872=l9_871;
float3 l9_873=l9_819.xyz;
float3 l9_874=definedBlend(l9_872,l9_873,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_820=float4(l9_874.x,l9_874.y,l9_874.z,l9_820.w);
float3 l9_875=mix(l9_871,l9_820.xyz,float3(l9_819.w));
l9_820=float4(l9_875.x,l9_875.y,l9_875.z,l9_820.w);
l9_820.w=1.0;
float4 l9_876=l9_820;
param_43=l9_876;
}
else
{
float4 l9_877=param_43;
float4 l9_878=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_878=float4(mix(float3(1.0),l9_877.xyz,float3(l9_877.w)),l9_877.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_879=l9_877.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_879=fast::clamp(l9_879,0.0,1.0);
}
l9_878=float4(l9_877.xyz*l9_879,l9_879);
}
else
{
l9_878=l9_877;
}
}
float4 l9_880=l9_878;
param_43=l9_880;
}
}
}
float4 l9_881=param_43;
FinalColor=l9_881;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
if (PreviewInfo.Saved)
{
FinalColor=float4(PreviewInfo.Color);
}
else
{
FinalColor=float4(0.0);
}
}
float4 l9_882=float4(0.0);
if ((int(sc_ShaderComplexityAnalyzer_tmp)!=0))
{
l9_882=float4((*sc_set0.UserUniforms).shaderComplexityValue/255.0,0.0,0.0,1.0);
}
else
{
l9_882=float4(0.0);
}
float4 l9_883=l9_882;
float4 Cost=l9_883;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float3 param_44=in.varPos;
float4 param_45=FinalColor;
FinalColor=outputMotionVectorsIfNeeded(param_44,param_45,in.varStereoViewID,(*sc_set0.UserUniforms));
float4 param_46=FinalColor;
float4 l9_884=param_46;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_884.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.FragColor0=l9_884;
return out;
}
} // FRAGMENT SHADER

namespace SNAP_RECV {
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float2 Surface_UVCoord0;
float3 BumpedNormal;
float3 ViewDirWS;
float3 PositionWS;
float3 VertexTangent_WorldSpace;
float3 VertexNormal_WorldSpace;
float3 VertexBinormal_WorldSpace;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
float4 sc_CurrentRenderTargetDims;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float _sc_GetFramebufferColorInvalidUsageMarker;
float shaderComplexityValue;
float sc_DisableFrustumCullingMarker;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float _sc_framebufferFetchMarker;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
int receivesRayTracedReflections;
int receivesRayTracedShadows;
int receivesRayTracedDiffuseIndirect;
int receivesRayTracedAo;
float4 sc_RayTracedReflectionTextureSize;
float4 sc_RayTracedReflectionTextureDims;
float4 sc_RayTracedReflectionTextureView;
float4 sc_RayTracedShadowTextureSize;
float4 sc_RayTracedShadowTextureDims;
float4 sc_RayTracedShadowTextureView;
float4 sc_RayTracedDiffIndTextureSize;
float4 sc_RayTracedDiffIndTextureDims;
float4 sc_RayTracedDiffIndTextureView;
float4 sc_RayTracedAoTextureSize;
float4 sc_RayTracedAoTextureDims;
float4 sc_RayTracedAoTextureView;
float receiver_mask;
float3 OriginNormalizationScale;
float3 OriginNormalizationScaleInv;
float3 OriginNormalizationOffset;
int receiverId;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed[32];
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float4 transformPosRotTexSize;
float4 transformPosRotTexDims;
float4 transformPosRotTexView;
float3x3 transformPosRotTexTransform;
float4 transformPosRotTexUvMinMax;
float4 transformPosRotTexBorderColor;
float maxInstanceCount;
float minPos;
float maxPos;
float4 transformScaleTexSize;
float4 transformScaleTexDims;
float4 transformScaleTexView;
float3x3 transformScaleTexTransform;
float4 transformScaleTexUvMinMax;
float4 transformScaleTexBorderColor;
float minSca;
float maxSca;
float Tweak_N112;
float Tweak_N110;
float Tweak_N111;
float minRot;
float maxRot;
float Tweak_N144;
float Tweak_N142;
float Tweak_N143;
float4 Tweak_N167Size;
float4 Tweak_N167Dims;
float4 Tweak_N167View;
float3x3 Tweak_N167Transform;
float4 Tweak_N167UvMinMax;
float4 Tweak_N167BorderColor;
float4 Tweak_N175;
float Tweak_N17;
float4 Tweak_N168Size;
float4 Tweak_N168Dims;
float4 Tweak_N168View;
float3x3 Tweak_N168Transform;
float4 Tweak_N168UvMinMax;
float4 Tweak_N168BorderColor;
float4 Tweak_N169Size;
float4 Tweak_N169Dims;
float4 Tweak_N169View;
float3x3 Tweak_N169Transform;
float4 Tweak_N169UvMinMax;
float4 Tweak_N169BorderColor;
float Port_Input1_N018;
float Port_Import_N125;
float Port_Import_N094;
float Port_Value2_N051;
float Port_Import_N115;
float Port_Import_N091;
float Port_Import_N116;
float Port_Import_N092;
float Port_Value2_N052;
float Port_Value2_N014;
float Port_Value4_N003;
float Port_Import_N109;
float Port_Value2_N028;
float Port_RangeMinA_N040;
float Port_RangeMaxA_N040;
float Port_Import_N119;
float Port_Import_N106;
float Port_Import_N120;
float Port_Import_N107;
float Port_Input1_N011;
float Port_Value1_N061;
float Port_Input0_N179;
float Port_Import_N127;
float Port_Import_N128;
float Port_Multiplier_N089;
float Port_Import_N130;
float Port_Import_N131;
float Port_Import_N135;
float Port_Import_N158;
float Port_Import_N140;
float3 Port_Import_N096;
float3 Port_Import_N039;
float Port_Import_N100;
float Port_Value2_N019;
float Port_Import_N121;
float Port_Import_N101;
float Port_Import_N122;
float Port_Import_N102;
float Port_Value2_N026;
float4 Port_Import_N041;
float Port_Input1_N037;
float3 Port_Import_N090;
float3 Port_Input0_N178;
float Port_Value1_N162;
float Port_Import_N146;
float Port_Import_N147;
float Port_Import_N149;
float Port_Import_N150;
float Port_Import_N154;
float Port_Value3_N162;
float3 Port_Import_N161;
float3 Port_Import_N160;
float3 Port_Import_N075;
float4 Port_Import_N076;
float Port_Input1_N083;
float3 Port_Import_N063;
float4 Port_Import_N064;
float Port_Input1_N071;
float4 Port_Default_N176;
float3 Port_Emissive_N174;
float3 Port_SpecularAO_N174;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct sc_Set0
{
constant sc_Bones_obj* sc_BonesUBO [[id(0)]];
texture2d<float> Tweak_N167 [[id(1)]];
texture2d<float> Tweak_N168 [[id(2)]];
texture2d<float> Tweak_N169 [[id(3)]];
texture2d<float> intensityTexture [[id(4)]];
texture2d<float> sc_EnvmapDiffuse [[id(5)]];
texture2d<float> sc_EnvmapSpecular [[id(6)]];
texture2d<float> sc_RayTracedAoTexture [[id(15)]];
texture2d<float> sc_RayTracedDiffIndTexture [[id(16)]];
texture2d<float> sc_RayTracedReflectionTexture [[id(17)]];
texture2d<float> sc_RayTracedShadowTexture [[id(18)]];
texture2d<float> sc_SSAOTexture [[id(19)]];
texture2d<float> sc_ScreenTexture [[id(20)]];
texture2d<float> sc_ShadowTexture [[id(21)]];
texture2d<float> transformPosRotTex [[id(23)]];
texture2d<float> transformScaleTex [[id(24)]];
sampler Tweak_N167SmpSC [[id(25)]];
sampler Tweak_N168SmpSC [[id(26)]];
sampler Tweak_N169SmpSC [[id(27)]];
sampler intensityTextureSmpSC [[id(28)]];
sampler sc_EnvmapDiffuseSmpSC [[id(29)]];
sampler sc_EnvmapSpecularSmpSC [[id(30)]];
sampler sc_RayTracedAoTextureSmpSC [[id(32)]];
sampler sc_RayTracedDiffIndTextureSmpSC [[id(33)]];
sampler sc_RayTracedReflectionTextureSmpSC [[id(34)]];
sampler sc_RayTracedShadowTextureSmpSC [[id(35)]];
sampler sc_SSAOTextureSmpSC [[id(36)]];
sampler sc_ScreenTextureSmpSC [[id(37)]];
sampler sc_ShadowTextureSmpSC [[id(38)]];
sampler transformPosRotTexSmpSC [[id(40)]];
sampler transformScaleTexSmpSC [[id(41)]];
constant userUniformsObj* UserUniforms [[id(42)]];
};
struct main_recv_out
{
uint4 position_and_mask [[color(0)]];
uint4 normal_and_more [[color(1)]];
};
struct main_recv_in
{
float3 varPos [[user(locn0)]];
float3 varNormal [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varPackedTex [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
};
// Implementation of the GLSL mod() function,which is slightly different than Metal fmod()
template<typename Tx,typename Ty>
Tx mod(Tx x,Ty y)
{
return x-y*floor(x/y);
}
fragment main_recv_out main_recv(main_recv_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],float4 gl_FragCoord [[position]])
{
main_recv_out out={};
if ((int(sc_DepthOnly_tmp)!=0))
{
return out;
}
ssGlobals Globals;
Globals.gTimeElapsed=(*sc_set0.UserUniforms).sc_Time.x;
Globals.gTimeDelta=(*sc_set0.UserUniforms).sc_Time.y;
Globals.Surface_UVCoord0=in.varPackedTex.xy;
Globals.BumpedNormal=float3(0.0);
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-in.varPos);
Globals.PositionWS=in.varPos;
Globals.VertexTangent_WorldSpace=normalize(in.varTangent.xyz);
Globals.VertexNormal_WorldSpace=normalize(in.varNormal);
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*in.varTangent.w;
float Output_N17=0.0;
float param=(*sc_set0.UserUniforms).Tweak_N17;
Output_N17=param;
float4 Output_N168=float4(0.0);
int l9_0=0;
if ((int(Tweak_N168HasSwappedViews_tmp)!=0))
{
int l9_1=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1=0;
}
else
{
l9_1=in.varStereoViewID;
}
int l9_2=l9_1;
l9_0=1-l9_2;
}
else
{
int l9_3=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3=0;
}
else
{
l9_3=in.varStereoViewID;
}
int l9_4=l9_3;
l9_0=l9_4;
}
int l9_5=l9_0;
int param_1=Tweak_N168Layout_tmp;
int param_2=l9_5;
float2 param_3=Globals.Surface_UVCoord0;
bool param_4=(int(SC_USE_UV_TRANSFORM_Tweak_N168_tmp)!=0);
float3x3 param_5=(*sc_set0.UserUniforms).Tweak_N168Transform;
int2 param_6=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N168_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N168_tmp);
bool param_7=(int(SC_USE_UV_MIN_MAX_Tweak_N168_tmp)!=0);
float4 param_8=(*sc_set0.UserUniforms).Tweak_N168UvMinMax;
bool param_9=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N168_tmp)!=0);
float4 param_10=(*sc_set0.UserUniforms).Tweak_N168BorderColor;
float param_11=0.0;
bool l9_6=param_9&&(!param_7);
float l9_7=1.0;
float l9_8=param_3.x;
int l9_9=param_6.x;
if (l9_9==1)
{
l9_8=fract(l9_8);
}
else
{
if (l9_9==2)
{
float l9_10=fract(l9_8);
float l9_11=l9_8-l9_10;
float l9_12=step(0.25,fract(l9_11*0.5));
l9_8=mix(l9_10,1.0-l9_10,fast::clamp(l9_12,0.0,1.0));
}
}
param_3.x=l9_8;
float l9_13=param_3.y;
int l9_14=param_6.y;
if (l9_14==1)
{
l9_13=fract(l9_13);
}
else
{
if (l9_14==2)
{
float l9_15=fract(l9_13);
float l9_16=l9_13-l9_15;
float l9_17=step(0.25,fract(l9_16*0.5));
l9_13=mix(l9_15,1.0-l9_15,fast::clamp(l9_17,0.0,1.0));
}
}
param_3.y=l9_13;
if (param_7)
{
bool l9_18=param_9;
bool l9_19;
if (l9_18)
{
l9_19=param_6.x==3;
}
else
{
l9_19=l9_18;
}
float l9_20=param_3.x;
float l9_21=param_8.x;
float l9_22=param_8.z;
bool l9_23=l9_19;
float l9_24=l9_7;
float l9_25=fast::clamp(l9_20,l9_21,l9_22);
float l9_26=step(abs(l9_20-l9_25),9.9999997e-06);
l9_24*=(l9_26+((1.0-float(l9_23))*(1.0-l9_26)));
l9_20=l9_25;
param_3.x=l9_20;
l9_7=l9_24;
bool l9_27=param_9;
bool l9_28;
if (l9_27)
{
l9_28=param_6.y==3;
}
else
{
l9_28=l9_27;
}
float l9_29=param_3.y;
float l9_30=param_8.y;
float l9_31=param_8.w;
bool l9_32=l9_28;
float l9_33=l9_7;
float l9_34=fast::clamp(l9_29,l9_30,l9_31);
float l9_35=step(abs(l9_29-l9_34),9.9999997e-06);
l9_33*=(l9_35+((1.0-float(l9_32))*(1.0-l9_35)));
l9_29=l9_34;
param_3.y=l9_29;
l9_7=l9_33;
}
float2 l9_36=param_3;
bool l9_37=param_4;
float3x3 l9_38=param_5;
if (l9_37)
{
l9_36=float2((l9_38*float3(l9_36,1.0)).xy);
}
float2 l9_39=l9_36;
float2 l9_40=l9_39;
float2 l9_41=l9_40;
param_3=l9_41;
float l9_42=param_3.x;
int l9_43=param_6.x;
bool l9_44=l9_6;
float l9_45=l9_7;
if ((l9_43==0)||(l9_43==3))
{
float l9_46=l9_42;
float l9_47=0.0;
float l9_48=1.0;
bool l9_49=l9_44;
float l9_50=l9_45;
float l9_51=fast::clamp(l9_46,l9_47,l9_48);
float l9_52=step(abs(l9_46-l9_51),9.9999997e-06);
l9_50*=(l9_52+((1.0-float(l9_49))*(1.0-l9_52)));
l9_46=l9_51;
l9_42=l9_46;
l9_45=l9_50;
}
param_3.x=l9_42;
l9_7=l9_45;
float l9_53=param_3.y;
int l9_54=param_6.y;
bool l9_55=l9_6;
float l9_56=l9_7;
if ((l9_54==0)||(l9_54==3))
{
float l9_57=l9_53;
float l9_58=0.0;
float l9_59=1.0;
bool l9_60=l9_55;
float l9_61=l9_56;
float l9_62=fast::clamp(l9_57,l9_58,l9_59);
float l9_63=step(abs(l9_57-l9_62),9.9999997e-06);
l9_61*=(l9_63+((1.0-float(l9_60))*(1.0-l9_63)));
l9_57=l9_62;
l9_53=l9_57;
l9_56=l9_61;
}
param_3.y=l9_53;
l9_7=l9_56;
float2 l9_64=param_3;
int l9_65=param_1;
int l9_66=param_2;
float l9_67=param_11;
float2 l9_68=l9_64;
int l9_69=l9_65;
int l9_70=l9_66;
float3 l9_71=float3(0.0);
if (l9_69==0)
{
l9_71=float3(l9_68,0.0);
}
else
{
if (l9_69==1)
{
l9_71=float3(l9_68.x,(l9_68.y*0.5)+(0.5-(float(l9_70)*0.5)),0.0);
}
else
{
l9_71=float3(l9_68,float(l9_70));
}
}
float3 l9_72=l9_71;
float3 l9_73=l9_72;
float2 l9_74=l9_73.xy;
float l9_75=l9_67;
float4 l9_76=sc_set0.Tweak_N168.sample(sc_set0.Tweak_N168SmpSC,l9_74,bias(l9_75));
float4 l9_77=l9_76;
float4 l9_78=l9_77;
if (param_9)
{
l9_78=mix(param_10,l9_78,float4(l9_7));
}
float4 l9_79=l9_78;
Output_N168=l9_79;
float4 Output_N169=float4(0.0);
int l9_80=0;
if ((int(Tweak_N169HasSwappedViews_tmp)!=0))
{
int l9_81=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_81=0;
}
else
{
l9_81=in.varStereoViewID;
}
int l9_82=l9_81;
l9_80=1-l9_82;
}
else
{
int l9_83=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_83=0;
}
else
{
l9_83=in.varStereoViewID;
}
int l9_84=l9_83;
l9_80=l9_84;
}
int l9_85=l9_80;
int param_12=Tweak_N169Layout_tmp;
int param_13=l9_85;
float2 param_14=Globals.Surface_UVCoord0;
bool param_15=(int(SC_USE_UV_TRANSFORM_Tweak_N169_tmp)!=0);
float3x3 param_16=(*sc_set0.UserUniforms).Tweak_N169Transform;
int2 param_17=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N169_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N169_tmp);
bool param_18=(int(SC_USE_UV_MIN_MAX_Tweak_N169_tmp)!=0);
float4 param_19=(*sc_set0.UserUniforms).Tweak_N169UvMinMax;
bool param_20=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N169_tmp)!=0);
float4 param_21=(*sc_set0.UserUniforms).Tweak_N169BorderColor;
float param_22=0.0;
bool l9_86=param_20&&(!param_18);
float l9_87=1.0;
float l9_88=param_14.x;
int l9_89=param_17.x;
if (l9_89==1)
{
l9_88=fract(l9_88);
}
else
{
if (l9_89==2)
{
float l9_90=fract(l9_88);
float l9_91=l9_88-l9_90;
float l9_92=step(0.25,fract(l9_91*0.5));
l9_88=mix(l9_90,1.0-l9_90,fast::clamp(l9_92,0.0,1.0));
}
}
param_14.x=l9_88;
float l9_93=param_14.y;
int l9_94=param_17.y;
if (l9_94==1)
{
l9_93=fract(l9_93);
}
else
{
if (l9_94==2)
{
float l9_95=fract(l9_93);
float l9_96=l9_93-l9_95;
float l9_97=step(0.25,fract(l9_96*0.5));
l9_93=mix(l9_95,1.0-l9_95,fast::clamp(l9_97,0.0,1.0));
}
}
param_14.y=l9_93;
if (param_18)
{
bool l9_98=param_20;
bool l9_99;
if (l9_98)
{
l9_99=param_17.x==3;
}
else
{
l9_99=l9_98;
}
float l9_100=param_14.x;
float l9_101=param_19.x;
float l9_102=param_19.z;
bool l9_103=l9_99;
float l9_104=l9_87;
float l9_105=fast::clamp(l9_100,l9_101,l9_102);
float l9_106=step(abs(l9_100-l9_105),9.9999997e-06);
l9_104*=(l9_106+((1.0-float(l9_103))*(1.0-l9_106)));
l9_100=l9_105;
param_14.x=l9_100;
l9_87=l9_104;
bool l9_107=param_20;
bool l9_108;
if (l9_107)
{
l9_108=param_17.y==3;
}
else
{
l9_108=l9_107;
}
float l9_109=param_14.y;
float l9_110=param_19.y;
float l9_111=param_19.w;
bool l9_112=l9_108;
float l9_113=l9_87;
float l9_114=fast::clamp(l9_109,l9_110,l9_111);
float l9_115=step(abs(l9_109-l9_114),9.9999997e-06);
l9_113*=(l9_115+((1.0-float(l9_112))*(1.0-l9_115)));
l9_109=l9_114;
param_14.y=l9_109;
l9_87=l9_113;
}
float2 l9_116=param_14;
bool l9_117=param_15;
float3x3 l9_118=param_16;
if (l9_117)
{
l9_116=float2((l9_118*float3(l9_116,1.0)).xy);
}
float2 l9_119=l9_116;
float2 l9_120=l9_119;
float2 l9_121=l9_120;
param_14=l9_121;
float l9_122=param_14.x;
int l9_123=param_17.x;
bool l9_124=l9_86;
float l9_125=l9_87;
if ((l9_123==0)||(l9_123==3))
{
float l9_126=l9_122;
float l9_127=0.0;
float l9_128=1.0;
bool l9_129=l9_124;
float l9_130=l9_125;
float l9_131=fast::clamp(l9_126,l9_127,l9_128);
float l9_132=step(abs(l9_126-l9_131),9.9999997e-06);
l9_130*=(l9_132+((1.0-float(l9_129))*(1.0-l9_132)));
l9_126=l9_131;
l9_122=l9_126;
l9_125=l9_130;
}
param_14.x=l9_122;
l9_87=l9_125;
float l9_133=param_14.y;
int l9_134=param_17.y;
bool l9_135=l9_86;
float l9_136=l9_87;
if ((l9_134==0)||(l9_134==3))
{
float l9_137=l9_133;
float l9_138=0.0;
float l9_139=1.0;
bool l9_140=l9_135;
float l9_141=l9_136;
float l9_142=fast::clamp(l9_137,l9_138,l9_139);
float l9_143=step(abs(l9_137-l9_142),9.9999997e-06);
l9_141*=(l9_143+((1.0-float(l9_140))*(1.0-l9_143)));
l9_137=l9_142;
l9_133=l9_137;
l9_136=l9_141;
}
param_14.y=l9_133;
l9_87=l9_136;
float2 l9_144=param_14;
int l9_145=param_12;
int l9_146=param_13;
float l9_147=param_22;
float2 l9_148=l9_144;
int l9_149=l9_145;
int l9_150=l9_146;
float3 l9_151=float3(0.0);
if (l9_149==0)
{
l9_151=float3(l9_148,0.0);
}
else
{
if (l9_149==1)
{
l9_151=float3(l9_148.x,(l9_148.y*0.5)+(0.5-(float(l9_150)*0.5)),0.0);
}
else
{
l9_151=float3(l9_148,float(l9_150));
}
}
float3 l9_152=l9_151;
float3 l9_153=l9_152;
float2 l9_154=l9_153.xy;
float l9_155=l9_147;
float4 l9_156=sc_set0.Tweak_N169.sample(sc_set0.Tweak_N169SmpSC,l9_154,bias(l9_155));
float4 l9_157=l9_156;
float4 l9_158=l9_157;
if (param_20)
{
l9_158=mix(param_21,l9_158,float4(l9_87));
}
float4 l9_159=l9_158;
Output_N169=l9_159;
float Value2_N170=0.0;
float4 param_23=Output_N169;
float param_24=param_23.y;
Value2_N170=param_24;
float param_25=Output_N17;
float3 param_26=Output_N168.xyz;
float param_27=Value2_N170;
ssGlobals param_28=Globals;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
param_28.BumpedNormal=float3x3(float3(param_28.VertexTangent_WorldSpace),float3(param_28.VertexBinormal_WorldSpace),float3(param_28.VertexNormal_WorldSpace))*param_26;
}
param_25=fast::clamp(param_25,0.0,1.0);
float l9_160=param_25;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_160<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_161=gl_FragCoord;
float2 l9_162=floor(mod(l9_161.xy,float2(4.0)));
float l9_163=(mod(dot(l9_162,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_160<l9_163)
{
discard_fragment();
}
}
float3 l9_164=param_28.PositionWS;
float3 l9_165=param_28.BumpedNormal;
float l9_166=param_27;
float3 l9_167=normalize((*sc_set0.UserUniforms).sc_Camera.position-l9_164);
if (dot(l9_167,l9_165)>=(-0.050000001))
{
uint3 l9_168=uint3(round((l9_164-(*sc_set0.UserUniforms).OriginNormalizationOffset)*(*sc_set0.UserUniforms).OriginNormalizationScale));
out.position_and_mask=uint4(l9_168.x,l9_168.y,l9_168.z,out.position_and_mask.w);
out.position_and_mask.w=uint((*sc_set0.UserUniforms).receiver_mask);
float3 l9_169=l9_165;
float l9_170=dot(abs(l9_169),float3(1.0));
l9_169/=float3(l9_170);
float l9_171=fast::clamp(-l9_169.z,0.0,1.0);
float2 l9_172=l9_169.xy;
float l9_173;
if (l9_169.x>=0.0)
{
l9_173=l9_171;
}
else
{
l9_173=-l9_171;
}
l9_172.x+=l9_173;
float l9_174;
if (l9_169.y>=0.0)
{
l9_174=l9_171;
}
else
{
l9_174=-l9_171;
}
l9_172.y+=l9_174;
float2 l9_175=l9_172;
float2 l9_176=l9_175;
uint2 l9_177=uint2(as_type<uint>(half2(float2(l9_176.x,0.0))),as_type<uint>(half2(float2(l9_176.y,0.0))));
out.normal_and_more=uint4(l9_177.x,l9_177.y,out.normal_and_more.z,out.normal_and_more.w);
out.normal_and_more.z=as_type<uint>(half2(float2(0.0)));
uint l9_178;
if (l9_166<0.0)
{
l9_178=1023u;
}
else
{
l9_178=uint(fast::clamp(l9_166,0.0,1.0)*1000.0);
}
uint l9_179=l9_178;
l9_179 |= uint(((*sc_set0.UserUniforms).receiverId%32)<<int(10u));
out.normal_and_more.w=l9_179;
}
else
{
out.position_and_mask=uint4(0u);
out.normal_and_more=uint4(0u);
}
return out;
}
} // RECEIVER MODE SHADER
