// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.17 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.17;sub:START;pass:START;ps:flbk:Standard,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.3587191,fgcg:0.3438582,fgcb:0.3897059,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:479,x:32856,y:32637,varname:node_479,prsc:2|diff-1724-OUT,spec-9909-OUT,gloss-8352-OUT,normal-7581-OUT,emission-5287-OUT,lwrap-47-OUT,amdfl-9821-OUT,difocc-7092-OUT;n:type:ShaderForge.SFN_Multiply,id:1724,x:32591,y:32678,varname:node_1724,prsc:2|A-1237-RGB,B-110-OUT;n:type:ShaderForge.SFN_Color,id:1237,x:32422,y:32678,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1237,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:5164,x:31642,y:33039,ptovrint:False,ptlb:EmissionColor,ptin:_EmissionColor,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:9680,x:32061,y:32771,ptovrint:False,ptlb:Main Tex,ptin:_MainTex,varname:node_9680,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:9841,x:32492,y:33183,ptovrint:False,ptlb:Occlusion Map,ptin:_OcclusionMap,varname:node_9841,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b12ca1b0c12efad45aa846dbcc7baf3d,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:9678,x:31642,y:33204,ptovrint:False,ptlb:Emission Map,ptin:_EmissionMap,varname:node_9678,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8006,x:31627,y:32511,ptovrint:False,ptlb:Bump Map,ptin:_BumpMap,varname:node_8006,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:2028,x:32451,y:32438,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_2028,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:7436,x:32451,y:32532,ptovrint:False,ptlb:Glossiness,ptin:_Glossiness,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_Multiply,id:20,x:32651,y:33183,varname:node_20,prsc:2|A-9841-RGB,B-2627-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3117,x:32511,y:33359,ptovrint:False,ptlb:Occlusion Strenght,ptin:_OcclusionStrenght,varname:node_3117,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:1262,x:31642,y:33391,ptovrint:False,ptlb:Emission LM,ptin:_EmissionLM,varname:node_1262,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:5287,x:31839,y:33257,varname:node_5287,prsc:2|A-5164-RGB,B-9678-RGB,C-1262-OUT,D-9678-A;n:type:ShaderForge.SFN_ValueProperty,id:6216,x:33301,y:33296,ptovrint:False,ptlb:Light Wrap,ptin:_LightWrap,varname:node_6216,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:8648,x:32893,y:33522,ptovrint:False,ptlb:Fresnel,ptin:_Fresnel,varname:node_8648,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Fresnel,id:6007,x:32893,y:33374,varname:node_6007,prsc:2|EXP-8648-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3133,x:33017,y:33392,ptovrint:False,ptlb:Rim Power,ptin:_RimPower,varname:_Fresnel_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Color,id:4976,x:33017,y:33478,ptovrint:False,ptlb:Rim Color,ptin:_RimColor,varname:node_4976,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:1308,x:33089,y:33110,varname:node_1308,prsc:2|A-3133-OUT,B-4160-OUT,C-4976-RGB;n:type:ShaderForge.SFN_AmbientLight,id:1590,x:33236,y:32897,varname:node_1590,prsc:2;n:type:ShaderForge.SFN_Add,id:9821,x:33260,y:33029,varname:node_9821,prsc:2|A-1308-OUT,B-1590-RGB;n:type:ShaderForge.SFN_Clamp01,id:7092,x:32651,y:33296,varname:node_7092,prsc:2|IN-20-OUT;n:type:ShaderForge.SFN_Multiply,id:9909,x:32836,y:32303,varname:node_9909,prsc:2|A-2725-R,B-2028-OUT;n:type:ShaderForge.SFN_Multiply,id:8352,x:32847,y:32465,varname:node_8352,prsc:2|A-5300-OUT,B-7436-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:5300,x:32608,y:32280,ptovrint:False,ptlb:Metal Alpha Gloss,ptin:_MetalAlphaGloss,varname:node_5300,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-1185-R,B-2725-A;n:type:ShaderForge.SFN_Tex2d,id:1185,x:32278,y:32029,ptovrint:False,ptlb:Smoothness Map,ptin:_SmoothnessMap,varname:node_1185,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2725,x:32278,y:32227,ptovrint:False,ptlb:Metallic Gloss Map,ptin:_MetallicGlossMap,varname:node_2725,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:2662,x:31907,y:32538,varname:node_2662,prsc:2|A-8920-OUT,B-8006-RGB,T-6239-OUT;n:type:ShaderForge.SFN_Vector3,id:8920,x:31627,y:32683,varname:node_8920,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_ValueProperty,id:6239,x:31627,y:32811,ptovrint:False,ptlb:Bump Scale,ptin:_BumpScale,varname:node_6239,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:6842,x:32061,y:32975,ptovrint:False,ptlb:Detail Albedo Map,ptin:_DetailAlbedoMap,varname:node_6842,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-6238-OUT;n:type:ShaderForge.SFN_Tex2d,id:806,x:31627,y:32307,ptovrint:False,ptlb:Detail Normal Map,ptin:_DetailNormalMap,varname:_DetailAlbedoMap_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-6238-OUT;n:type:ShaderForge.SFN_Tex2d,id:9030,x:32278,y:32411,ptovrint:False,ptlb:Detail Metallic Gloss Map,ptin:_DetailMetallicGlossMap,varname:node_9030,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-6238-OUT;n:type:ShaderForge.SFN_Lerp,id:110,x:32324,y:32868,varname:node_110,prsc:2|A-9680-RGB,B-6842-RGB,T-3461-OUT;n:type:ShaderForge.SFN_Multiply,id:3461,x:32309,y:33131,varname:node_3461,prsc:2|A-5020-A,B-6826-OUT,C-5020-RGB;n:type:ShaderForge.SFN_Tex2d,id:5020,x:32061,y:33152,ptovrint:False,ptlb:Detail Mask,ptin:_DetailMask,varname:node_5020,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_NormalBlend,id:4775,x:32071,y:32356,varname:node_4775,prsc:2|BSE-2662-OUT,DTL-4245-OUT;n:type:ShaderForge.SFN_TexCoord,id:6948,x:31801,y:31898,varname:node_6948,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:7109,x:31801,y:32072,ptovrint:False,ptlb:Detail Tiling,ptin:_DetailTiling,varname:node_7109,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:6238,x:31963,y:32058,varname:node_6238,prsc:2|A-6948-UVOUT,B-7109-OUT;n:type:ShaderForge.SFN_Lerp,id:4245,x:31907,y:32328,varname:node_4245,prsc:2|A-8920-OUT,B-806-RGB,T-2159-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2159,x:31627,y:32217,ptovrint:False,ptlb:DetailNormalMapScale,ptin:_DetailNormalMapScale,varname:_BumpScale_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:47,x:33290,y:33514,varname:node_47,prsc:2|A-6216-OUT,B-3442-RGB;n:type:ShaderForge.SFN_Color,id:3442,x:33290,y:33370,ptovrint:False,ptlb:LightWarp Tint,ptin:_LightWarpTint,varname:node_3442,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:6074,x:32088,y:33429,ptovrint:False,ptlb:Diffuse AO Mask,ptin:_DiffuseAOMask,varname:node_6074,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Clamp01,id:6130,x:32465,y:33516,varname:node_6130,prsc:2|IN-927-OUT;n:type:ShaderForge.SFN_Multiply,id:9586,x:32283,y:33516,varname:node_9586,prsc:2|A-6074-OUT,B-7092-OUT;n:type:ShaderForge.SFN_Power,id:2627,x:32651,y:33063,varname:node_2627,prsc:2|VAL-9841-RGB,EXP-3117-OUT;n:type:ShaderForge.SFN_Add,id:927,x:32294,y:33395,varname:node_927,prsc:2|A-9586-OUT,B-8312-OUT;n:type:ShaderForge.SFN_RemapRange,id:8312,x:32111,y:33498,varname:node_8312,prsc:2,frmn:0,frmx:20,tomn:0,tomx:1|IN-6074-OUT;n:type:ShaderForge.SFN_Lerp,id:7581,x:32071,y:32548,varname:node_7581,prsc:2|A-2662-OUT,B-4775-OUT,T-3461-OUT;n:type:ShaderForge.SFN_Clamp01,id:4160,x:32893,y:33239,varname:node_4160,prsc:2|IN-6007-OUT;n:type:ShaderForge.SFN_OneMinus,id:3108,x:32653,y:33655,varname:node_3108,prsc:2|IN-6130-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:6826,x:32722,y:33504,ptovrint:False,ptlb:Invert AO Mask,ptin:_InvertAOMask,varname:node_6826,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6130-OUT,B-3108-OUT;proporder:1237-9680-2028-2725-5300-7436-1185-8006-6239-9841-3117-5164-9678-1262-6216-3442-8648-3133-4976-5020-6074-6826-6842-7109-806-2159;pass:END;sub:END;*/

Shader "DLNK/Custom/AdvancedOpaqueDetail" {
    Properties {
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _MainTex ("Main Tex", 2D) = "white" {}
        _Metallic ("Metallic", Range(0, 1)) = 0
        _MetallicGlossMap ("Metallic Gloss Map", 2D) = "white" {}
        [MaterialToggle] _MetalAlphaGloss ("Metal Alpha Gloss", Float ) = 1
        _Glossiness ("Glossiness", Range(0, 1)) = 0.2
        _SmoothnessMap ("Smoothness Map", 2D) = "white" {}
        _BumpMap ("Bump Map", 2D) = "bump" {}
        _BumpScale ("Bump Scale", Float ) = 1
        _OcclusionMap ("Occlusion Map", 2D) = "white" {}
        _OcclusionStrenght ("Occlusion Strenght", Float ) = 1
        _EmissionColor ("EmissionColor", Color) = (0.5,0.5,0.5,1)
        _EmissionMap ("Emission Map", 2D) = "white" {}
        _EmissionLM ("Emission LM", Float ) = 0
        _LightWrap ("Light Wrap", Float ) = 0
        _LightWarpTint ("LightWarp Tint", Color) = (0.5,0.5,0.5,1)
        _Fresnel ("Fresnel", Float ) = 0
        _RimPower ("Rim Power", Float ) = 0
        _RimColor ("Rim Color", Color) = (0.5,0.5,0.5,1)
        _DetailMask ("Detail Mask", 2D) = "white" {}
        _DiffuseAOMask ("Diffuse AO Mask", Float ) = 0
        [MaterialToggle] _InvertAOMask ("Invert AO Mask", Float ) = 0
        _DetailAlbedoMap ("Detail Albedo Map", 2D) = "white" {}
        _DetailTiling ("Detail Tiling", Float ) = 1
        _DetailNormalMap ("Detail Normal Map", 2D) = "bump" {}
        _DetailNormalMapScale ("DetailNormalMapScale", Float ) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float4 _EmissionColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _OcclusionMap; uniform float4 _OcclusionMap_ST;
            uniform sampler2D _EmissionMap; uniform float4 _EmissionMap_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Glossiness;
            uniform float _OcclusionStrenght;
            uniform float _EmissionLM;
            uniform float _LightWrap;
            uniform float _Fresnel;
            uniform float _RimPower;
            uniform float4 _RimColor;
            uniform fixed _MetalAlphaGloss;
            uniform sampler2D _SmoothnessMap; uniform float4 _SmoothnessMap_ST;
            uniform sampler2D _MetallicGlossMap; uniform float4 _MetallicGlossMap_ST;
            uniform float _BumpScale;
            uniform sampler2D _DetailAlbedoMap; uniform float4 _DetailAlbedoMap_ST;
            uniform sampler2D _DetailNormalMap; uniform float4 _DetailNormalMap_ST;
            uniform sampler2D _DetailMask; uniform float4 _DetailMask_ST;
            uniform float _DetailTiling;
            uniform float _DetailNormalMapScale;
            uniform float4 _LightWarpTint;
            uniform float _DiffuseAOMask;
            uniform fixed _InvertAOMask;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
            #endif
            #ifdef DYNAMICLIGHTMAP_ON
                o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
            #endif
            o.normalDir = UnityObjectToWorldNormal(v.normal);
            o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
            o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
            o.posWorld = mul(unity_ObjectToWorld, v.vertex);
            float3 lightColor = _LightColor0.rgb;
            o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
            UNITY_TRANSFER_FOG(o,o.pos);
            TRANSFER_VERTEX_TO_FRAGMENT(o)
            return o;
        }
        float4 frag(VertexOutput i) : COLOR {
            i.normalDir = normalize(i.normalDir);
            float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/// Vectors:
            float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
            float3 node_8920 = float3(0,0,1);
            float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
            float3 node_2662 = lerp(node_8920,_BumpMap_var.rgb,_BumpScale);
            float2 node_6238 = (i.uv0*_DetailTiling);
            float3 _DetailNormalMap_var = UnpackNormal(tex2D(_DetailNormalMap,TRANSFORM_TEX(node_6238, _DetailNormalMap)));
            float3 node_4775_nrm_base = node_2662 + float3(0,0,1);
            float3 node_4775_nrm_detail = lerp(node_8920,_DetailNormalMap_var.rgb,_DetailNormalMapScale) * float3(-1,-1,1);
            float3 node_4775_nrm_combined = node_4775_nrm_base*dot(node_4775_nrm_base, node_4775_nrm_detail)/node_4775_nrm_base.z - node_4775_nrm_detail;
            float3 node_4775 = node_4775_nrm_combined;
            float4 _DetailMask_var = tex2D(_DetailMask,TRANSFORM_TEX(i.uv0, _DetailMask));
            float4 _OcclusionMap_var = tex2D(_OcclusionMap,TRANSFORM_TEX(i.uv0, _OcclusionMap));
            float3 node_7092 = saturate((_OcclusionMap_var.rgb*pow(_OcclusionMap_var.rgb,_OcclusionStrenght)));
            float3 node_6130 = saturate(((_DiffuseAOMask*node_7092)+(_DiffuseAOMask*0.05+0.0)));
            float3 node_3461 = (_DetailMask_var.a*lerp( node_6130, (1.0 - node_6130), _InvertAOMask )*_DetailMask_var.rgb);
            float3 normalLocal = lerp(node_2662,node_4775,node_3461);
            float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
            float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
            float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
            float3 lightColor = _LightColor0.rgb;
            float3 halfDirection = normalize(viewDirection+lightDirection);
// Lighting:
            float attenuation = LIGHT_ATTENUATION(i);
            float3 attenColor = attenuation * _LightColor0.xyz;
            float Pi = 3.141592654;
            float InvPi = 0.31830988618;
///// Gloss:
            float4 _SmoothnessMap_var = tex2D(_SmoothnessMap,TRANSFORM_TEX(i.uv0, _SmoothnessMap));
            float4 _MetallicGlossMap_var = tex2D(_MetallicGlossMap,TRANSFORM_TEX(i.uv0, _MetallicGlossMap));
            float gloss = (lerp( _SmoothnessMap_var.r, _MetallicGlossMap_var.a, _MetalAlphaGloss )*_Glossiness);
            float specPow = exp2( gloss * 10.0+1.0);
/// GI Data:
            UnityLight light;
            #ifdef LIGHTMAP_OFF
                light.color = lightColor;
                light.dir = lightDirection;
                light.ndotl = LambertTerm (normalDirection, light.dir);
            #else
                light.color = half3(0.f, 0.f, 0.f);
                light.ndotl = 0.0f;
                light.dir = half3(0.f, 0.f, 0.f);
            #endif
            UnityGIInput d;
            d.light = light;
            d.worldPos = i.posWorld.xyz;
            d.worldViewDir = viewDirection;
            d.atten = attenuation;
            #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                d.ambient = 0;
                d.lightmapUV = i.ambientOrLightmapUV;
            #else
                d.ambient = i.ambientOrLightmapUV;
            #endif
            d.boxMax[0] = unity_SpecCube0_BoxMax;
            d.boxMin[0] = unity_SpecCube0_BoxMin;
            d.probePosition[0] = unity_SpecCube0_ProbePosition;
            d.probeHDR[0] = unity_SpecCube0_HDR;
            d.boxMax[1] = unity_SpecCube1_BoxMax;
            d.boxMin[1] = unity_SpecCube1_BoxMin;
            d.probePosition[1] = unity_SpecCube1_ProbePosition;
            d.probeHDR[1] = unity_SpecCube1_HDR;
            UnityGI gi = UnityGlobalIllumination (d, 1, gloss, normalDirection);
            lightDirection = gi.light.dir;
            lightColor = gi.light.color;
// Specular:
            float NdotL = max(0, dot( normalDirection, lightDirection ));
            float LdotH = max(0.0,dot(lightDirection, halfDirection));
            float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
            float4 _DetailAlbedoMap_var = tex2D(_DetailAlbedoMap,TRANSFORM_TEX(node_6238, _DetailAlbedoMap));
            float3 diffuseColor = (_Color.rgb*lerp(_MainTex_var.rgb,_DetailAlbedoMap_var.rgb,node_3461)); // Need this for specular when using metallic
            float specularMonochrome;
            float3 specularColor;
            diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, (_MetallicGlossMap_var.r*_Metallic), specularColor, specularMonochrome );
            specularMonochrome = 1-specularMonochrome;
            float NdotV = max(0.0,dot( normalDirection, viewDirection ));
            float NdotH = max(0.0,dot( normalDirection, halfDirection ));
            float VdotH = max(0.0,dot( viewDirection, halfDirection ));
            float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
            float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
            float specularPBL = max(0, (NdotL*visTerm*normTerm) * unity_LightGammaCorrectionConsts_PIDiv4 );
            float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
            half grazingTerm = saturate( gloss + specularMonochrome );
            float3 indirectSpecular = (gi.indirect.specular);
            indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
            float3 specular = (directSpecular + indirectSpecular);
/// Diffuse:
            NdotL = dot( normalDirection, lightDirection );
            float3 w = (_LightWrap*_LightWarpTint.rgb)*0.5; // Light wrapping
            float3 NdotLWrap = NdotL * ( 1.0 - w );
            float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
            NdotL = max(0.0,dot( normalDirection, lightDirection ));
            half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
            NdotLWrap = max(float3(0,0,0), NdotLWrap);
            float3 directDiffuse = (forwardLight + ((1 +(fd90 - 1)*pow((1.00001-NdotLWrap), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL))*(0.5-max(w.r,max(w.g,w.b))*0.5) * attenColor;
            float3 indirectDiffuse = float3(0,0,0);
            indirectDiffuse += ((_RimPower*saturate(pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnel))*_RimColor.rgb)+UNITY_LIGHTMODEL_AMBIENT.rgb); // Diffuse Ambient Light
            indirectDiffuse += gi.indirect.diffuse;
            indirectDiffuse *= node_7092.r; // Diffuse AO
            float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
// Emissive:
            float4 _EmissionMap_var = tex2D(_EmissionMap,TRANSFORM_TEX(i.uv0, _EmissionMap));
            float3 emissive = (_EmissionColor.rgb*_EmissionMap_var.rgb*_EmissionLM*_EmissionMap_var.a);
// Final Color:
            float3 finalColor = diffuse + specular + emissive;
            fixed4 finalRGBA = fixed4(finalColor,1);
            UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
            return finalRGBA;
        }
        ENDCG
    }
    Pass {
        Name "FORWARD_DELTA"
        Tags {
            "LightMode"="ForwardAdd"
        }
        Blend One One
        
        
        CGPROGRAM
        #pragma vertex vert
        #pragma fragment frag
        #define UNITY_PASS_FORWARDADD
        #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
        #define _GLOSSYENV 1
        #include "UnityCG.cginc"
        #include "AutoLight.cginc"
        #include "Lighting.cginc"
        #include "UnityPBSLighting.cginc"
        #include "UnityStandardBRDF.cginc"
        #pragma multi_compile_fwdadd_fullshadows
        #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
        #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
        #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
        #pragma multi_compile_fog
        #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
        #pragma target 3.0
        uniform float4 _Color;
        uniform float4 _EmissionColor;
        uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
        uniform sampler2D _OcclusionMap; uniform float4 _OcclusionMap_ST;
        uniform sampler2D _EmissionMap; uniform float4 _EmissionMap_ST;
        uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
        uniform float _Metallic;
        uniform float _Glossiness;
        uniform float _OcclusionStrenght;
        uniform float _EmissionLM;
        uniform float _LightWrap;
        uniform fixed _MetalAlphaGloss;
        uniform sampler2D _SmoothnessMap; uniform float4 _SmoothnessMap_ST;
        uniform sampler2D _MetallicGlossMap; uniform float4 _MetallicGlossMap_ST;
        uniform float _BumpScale;
        uniform sampler2D _DetailAlbedoMap; uniform float4 _DetailAlbedoMap_ST;
        uniform sampler2D _DetailNormalMap; uniform float4 _DetailNormalMap_ST;
        uniform sampler2D _DetailMask; uniform float4 _DetailMask_ST;
        uniform float _DetailTiling;
        uniform float _DetailNormalMapScale;
        uniform float4 _LightWarpTint;
        uniform float _DiffuseAOMask;
        uniform fixed _InvertAOMask;
        struct VertexInput {
            float4 vertex : POSITION;
            float3 normal : NORMAL;
            float4 tangent : TANGENT;
            float2 texcoord0 : TEXCOORD0;
            float2 texcoord1 : TEXCOORD1;
            float2 texcoord2 : TEXCOORD2;
        };
        struct VertexOutput {
            float4 pos : SV_POSITION;
            float2 uv0 : TEXCOORD0;
            float2 uv1 : TEXCOORD1;
            float2 uv2 : TEXCOORD2;
            float4 posWorld : TEXCOORD3;
            float3 normalDir : TEXCOORD4;
            float3 tangentDir : TEXCOORD5;
            float3 bitangentDir : TEXCOORD6;
            LIGHTING_COORDS(7,8)
        };
        VertexOutput vert (VertexInput v) {
            VertexOutput o = (VertexOutput)0;
            o.uv0 = v.texcoord0;
            o.uv1 = v.texcoord1;
            o.uv2 = v.texcoord2;
            o.normalDir = UnityObjectToWorldNormal(v.normal);
            o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
            o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
            o.posWorld = mul(unity_ObjectToWorld, v.vertex);
            float3 lightColor = _LightColor0.rgb;
            o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
            TRANSFER_VERTEX_TO_FRAGMENT(o)
            return o;
        }
        float4 frag(VertexOutput i) : COLOR {
            i.normalDir = normalize(i.normalDir);
            float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/// Vectors:
            float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
            float3 node_8920 = float3(0,0,1);
            float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
            float3 node_2662 = lerp(node_8920,_BumpMap_var.rgb,_BumpScale);
            float2 node_6238 = (i.uv0*_DetailTiling);
            float3 _DetailNormalMap_var = UnpackNormal(tex2D(_DetailNormalMap,TRANSFORM_TEX(node_6238, _DetailNormalMap)));
            float3 node_4775_nrm_base = node_2662 + float3(0,0,1);
            float3 node_4775_nrm_detail = lerp(node_8920,_DetailNormalMap_var.rgb,_DetailNormalMapScale) * float3(-1,-1,1);
            float3 node_4775_nrm_combined = node_4775_nrm_base*dot(node_4775_nrm_base, node_4775_nrm_detail)/node_4775_nrm_base.z - node_4775_nrm_detail;
            float3 node_4775 = node_4775_nrm_combined;
            float4 _DetailMask_var = tex2D(_DetailMask,TRANSFORM_TEX(i.uv0, _DetailMask));
            float4 _OcclusionMap_var = tex2D(_OcclusionMap,TRANSFORM_TEX(i.uv0, _OcclusionMap));
            float3 node_7092 = saturate((_OcclusionMap_var.rgb*pow(_OcclusionMap_var.rgb,_OcclusionStrenght)));
            float3 node_6130 = saturate(((_DiffuseAOMask*node_7092)+(_DiffuseAOMask*0.05+0.0)));
            float3 node_3461 = (_DetailMask_var.a*lerp( node_6130, (1.0 - node_6130), _InvertAOMask )*_DetailMask_var.rgb);
            float3 normalLocal = lerp(node_2662,node_4775,node_3461);
            float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
            float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
            float3 lightColor = _LightColor0.rgb;
            float3 halfDirection = normalize(viewDirection+lightDirection);
// Lighting:
            float attenuation = LIGHT_ATTENUATION(i);
            float3 attenColor = attenuation * _LightColor0.xyz;
            float Pi = 3.141592654;
            float InvPi = 0.31830988618;
///// Gloss:
            float4 _SmoothnessMap_var = tex2D(_SmoothnessMap,TRANSFORM_TEX(i.uv0, _SmoothnessMap));
            float4 _MetallicGlossMap_var = tex2D(_MetallicGlossMap,TRANSFORM_TEX(i.uv0, _MetallicGlossMap));
            float gloss = (lerp( _SmoothnessMap_var.r, _MetallicGlossMap_var.a, _MetalAlphaGloss )*_Glossiness);
            float specPow = exp2( gloss * 10.0+1.0);
// Specular:
            float NdotL = max(0, dot( normalDirection, lightDirection ));
            float LdotH = max(0.0,dot(lightDirection, halfDirection));
            float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
            float4 _DetailAlbedoMap_var = tex2D(_DetailAlbedoMap,TRANSFORM_TEX(node_6238, _DetailAlbedoMap));
            float3 diffuseColor = (_Color.rgb*lerp(_MainTex_var.rgb,_DetailAlbedoMap_var.rgb,node_3461)); // Need this for specular when using metallic
            float specularMonochrome;
            float3 specularColor;
            diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, (_MetallicGlossMap_var.r*_Metallic), specularColor, specularMonochrome );
            specularMonochrome = 1-specularMonochrome;
            float NdotV = max(0.0,dot( normalDirection, viewDirection ));
            float NdotH = max(0.0,dot( normalDirection, halfDirection ));
            float VdotH = max(0.0,dot( viewDirection, halfDirection ));
            float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
            float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
            float specularPBL = max(0, (NdotL*visTerm*normTerm) * unity_LightGammaCorrectionConsts_PIDiv4 );
            float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
            float3 specular = directSpecular;
/// Diffuse:
            NdotL = dot( normalDirection, lightDirection );
            float3 w = (_LightWrap*_LightWarpTint.rgb)*0.5; // Light wrapping
            float3 NdotLWrap = NdotL * ( 1.0 - w );
            float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
            NdotL = max(0.0,dot( normalDirection, lightDirection ));
            half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
            NdotLWrap = max(float3(0,0,0), NdotLWrap);
            float3 directDiffuse = (forwardLight + ((1 +(fd90 - 1)*pow((1.00001-NdotLWrap), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL))*(0.5-max(w.r,max(w.g,w.b))*0.5) * attenColor;
            float3 diffuse = directDiffuse * diffuseColor;
// Final Color:
            float3 finalColor = diffuse + specular;
            return fixed4(finalColor * 1,0);
        }
        ENDCG
    }
    Pass {
        Name "Meta"
        Tags {
            "LightMode"="Meta"
        }
        Cull Off
        
        CGPROGRAM
        #pragma vertex vert
        #pragma fragment frag
        #define UNITY_PASS_META 1
        #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
        #define _GLOSSYENV 1
        #include "UnityCG.cginc"
        #include "Lighting.cginc"
        #include "UnityPBSLighting.cginc"
        #include "UnityStandardBRDF.cginc"
        #include "UnityMetaPass.cginc"
        #pragma fragmentoption ARB_precision_hint_fastest
        #pragma multi_compile_shadowcaster
        #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
        #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
        #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
        #pragma multi_compile_fog
        #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
        #pragma target 3.0
        uniform float4 _Color;
        uniform float4 _EmissionColor;
        uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
        uniform sampler2D _OcclusionMap; uniform float4 _OcclusionMap_ST;
        uniform sampler2D _EmissionMap; uniform float4 _EmissionMap_ST;
        uniform float _Metallic;
        uniform float _Glossiness;
        uniform float _OcclusionStrenght;
        uniform float _EmissionLM;
        uniform fixed _MetalAlphaGloss;
        uniform sampler2D _SmoothnessMap; uniform float4 _SmoothnessMap_ST;
        uniform sampler2D _MetallicGlossMap; uniform float4 _MetallicGlossMap_ST;
        uniform sampler2D _DetailAlbedoMap; uniform float4 _DetailAlbedoMap_ST;
        uniform sampler2D _DetailMask; uniform float4 _DetailMask_ST;
        uniform float _DetailTiling;
        uniform float _DiffuseAOMask;
        uniform fixed _InvertAOMask;
        struct VertexInput {
            float4 vertex : POSITION;
            float2 texcoord0 : TEXCOORD0;
            float2 texcoord1 : TEXCOORD1;
            float2 texcoord2 : TEXCOORD2;
        };
        struct VertexOutput {
            float4 pos : SV_POSITION;
            float2 uv0 : TEXCOORD0;
            float2 uv1 : TEXCOORD1;
            float2 uv2 : TEXCOORD2;
            float4 posWorld : TEXCOORD3;
        };
        VertexOutput vert (VertexInput v) {
            VertexOutput o = (VertexOutput)0;
            o.uv0 = v.texcoord0;
            o.uv1 = v.texcoord1;
            o.uv2 = v.texcoord2;
            o.posWorld = mul(unity_ObjectToWorld, v.vertex);
            o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
            return o;
        }
        float4 frag(VertexOutput i) : SV_Target {
/// Vectors:
            float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
            UnityMetaInput o;
            UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
            
            float4 _EmissionMap_var = tex2D(_EmissionMap,TRANSFORM_TEX(i.uv0, _EmissionMap));
            o.Emission = (_EmissionColor.rgb*_EmissionMap_var.rgb*_EmissionLM*_EmissionMap_var.a);
            
            float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
            float2 node_6238 = (i.uv0*_DetailTiling);
            float4 _DetailAlbedoMap_var = tex2D(_DetailAlbedoMap,TRANSFORM_TEX(node_6238, _DetailAlbedoMap));
            float4 _DetailMask_var = tex2D(_DetailMask,TRANSFORM_TEX(i.uv0, _DetailMask));
            float4 _OcclusionMap_var = tex2D(_OcclusionMap,TRANSFORM_TEX(i.uv0, _OcclusionMap));
            float3 node_7092 = saturate((_OcclusionMap_var.rgb*pow(_OcclusionMap_var.rgb,_OcclusionStrenght)));
            float3 node_6130 = saturate(((_DiffuseAOMask*node_7092)+(_DiffuseAOMask*0.05+0.0)));
            float3 node_3461 = (_DetailMask_var.a*lerp( node_6130, (1.0 - node_6130), _InvertAOMask )*_DetailMask_var.rgb);
            float3 diffColor = (_Color.rgb*lerp(_MainTex_var.rgb,_DetailAlbedoMap_var.rgb,node_3461));
            float specularMonochrome;
            float3 specColor;
            float4 _MetallicGlossMap_var = tex2D(_MetallicGlossMap,TRANSFORM_TEX(i.uv0, _MetallicGlossMap));
            diffColor = DiffuseAndSpecularFromMetallic( diffColor, (_MetallicGlossMap_var.r*_Metallic), specColor, specularMonochrome );
            float4 _SmoothnessMap_var = tex2D(_SmoothnessMap,TRANSFORM_TEX(i.uv0, _SmoothnessMap));
            float roughness = 1.0 - (lerp( _SmoothnessMap_var.r, _MetallicGlossMap_var.a, _MetalAlphaGloss )*_Glossiness);
            o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
            
            return UnityMetaFragment( o );
        }
        ENDCG
    }
}
FallBack "Standard"
CustomEditor "ShaderForgeMaterialInspector"
}
