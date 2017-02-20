// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:DLNK/Mobile/StandarTopBottom,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,rprd:True,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:2,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:958,x:34015,y:33218,varname:node_958,prsc:2|diff-6902-OUT,spec-8594-OUT,gloss-438-OUT,normal-3249-OUT,difocc-9952-OUT,spcocc-9952-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:954,x:33070,y:32586,ptovrint:False,ptlb:Main Tex,ptin:_MainTex,varname:node_954,glob:False,tex:6d639ef2ce2ef59419acbc0072552b5a,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8780,x:33248,y:32586,varname:node_8780,prsc:2,tex:6d639ef2ce2ef59419acbc0072552b5a,ntxv:0,isnm:False|UVIN-8520-OUT,TEX-954-TEX;n:type:ShaderForge.SFN_ValueProperty,id:2195,x:33248,y:32354,ptovrint:False,ptlb:Diffuse power,ptin:_Diffusepower,varname:node_2195,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Color,id:550,x:33248,y:32430,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_550,prsc:2,glob:False,c1:0.6397059,c2:0.6397059,c3:0.6397059,c4:1;n:type:ShaderForge.SFN_Multiply,id:9466,x:33248,y:32715,varname:node_9466,prsc:2|A-8780-RGB,B-550-RGB,C-2195-OUT;n:type:ShaderForge.SFN_Tex2d,id:806,x:34366,y:32699,ptovrint:False,ptlb:Occlusion Map,ptin:_OcclusionMap,varname:node_806,prsc:2,tex:9c7142a293d0f2345a756657824034ba,ntxv:0,isnm:False|UVIN-9428-OUT;n:type:ShaderForge.SFN_Power,id:2561,x:34114,y:32752,varname:node_2561,prsc:2|VAL-806-A,EXP-1872-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1872,x:33631,y:32721,ptovrint:False,ptlb:AO Power,ptin:_AOPower,varname:node_1872,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:4025,x:32963,y:33006,ptovrint:False,ptlb:Metalness,ptin:_Metalness,varname:node_4025,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Slider,id:4955,x:32725,y:33169,ptovrint:False,ptlb:Smoothness,ptin:_Smoothness,varname:node_4955,prsc:2,min:0,cur:0.5,max:3;n:type:ShaderForge.SFN_Tex2d,id:9374,x:31963,y:33453,varname:node_9374,prsc:2,ntxv:3,isnm:True|UVIN-8520-OUT,TEX-7104-TEX;n:type:ShaderForge.SFN_Tex2d,id:8130,x:32803,y:32953,varname:node_8130,prsc:2,ntxv:0,isnm:False|UVIN-8520-OUT,TEX-3287-TEX;n:type:ShaderForge.SFN_Multiply,id:9454,x:33142,y:32919,varname:node_9454,prsc:2|A-8130-RGB,B-4025-OUT;n:type:ShaderForge.SFN_Multiply,id:6757,x:33059,y:33108,varname:node_6757,prsc:2|A-8130-A,B-4955-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:3287,x:32617,y:32936,ptovrint:False,ptlb:Metallic Gloss Map,ptin:_MetallicGlossMap,varname:node_3287,glob:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:7104,x:31748,y:33363,ptovrint:False,ptlb:Bump Map,ptin:_BumpMap,varname:node_7104,glob:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:198,x:32478,y:33508,varname:node_198,prsc:2|A-7653-RGB,B-9374-RGB,T-2509-OUT;n:type:ShaderForge.SFN_TexCoord,id:3906,x:31827,y:32876,varname:node_3906,prsc:2,uv:0;n:type:ShaderForge.SFN_ComponentMask,id:9428,x:32606,y:32520,varname:node_9428,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3906-UVOUT;n:type:ShaderForge.SFN_NormalVector,id:3389,x:32303,y:32050,prsc:2,pt:False;n:type:ShaderForge.SFN_ComponentMask,id:3702,x:32468,y:32050,varname:node_3702,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-3389-OUT;n:type:ShaderForge.SFN_Lerp,id:6902,x:33561,y:32802,varname:node_6902,prsc:2|A-9425-OUT,B-9466-OUT,T-2509-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1982,x:32621,y:32151,ptovrint:False,ptlb:TopBottom Level,ptin:_TopBottomLevel,varname:node_1982,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Color,id:8583,x:34122,y:32255,ptovrint:False,ptlb:UpColor,ptin:_UpColor,varname:node_8583,prsc:2,glob:False,c1:0.9264706,c2:0.04087368,c3:0.04087368,c4:1;n:type:ShaderForge.SFN_Multiply,id:7023,x:33056,y:32013,varname:node_7023,prsc:2|A-6293-OUT,B-7841-OUT;n:type:ShaderForge.SFN_Clamp01,id:2509,x:33715,y:32113,varname:node_2509,prsc:2|IN-2909-OUT;n:type:ShaderForge.SFN_Blend,id:7841,x:32820,y:32038,varname:node_7841,prsc:2,blmd:10,clmp:True|SRC-3702-OUT,DST-1982-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6293,x:32881,y:31972,ptovrint:False,ptlb:TopBottom Power,ptin:_TopBottomPower,varname:node_6293,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Blend,id:6024,x:33326,y:32042,varname:node_6024,prsc:2,blmd:20,clmp:True|SRC-7023-OUT,DST-4656-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5105,x:33148,y:31863,ptovrint:False,ptlb:AO Blend Power,ptin:_AOBlendPower,varname:node_5105,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:9425,x:34312,y:32461,varname:node_9425,prsc:2|A-8583-RGB,B-2256-RGB;n:type:ShaderForge.SFN_Tex2d,id:2256,x:34294,y:32226,ptovrint:False,ptlb:Top Texture,ptin:_TopTexture,varname:node_2256,prsc:2,ntxv:0,isnm:False|UVIN-8520-OUT;n:type:ShaderForge.SFN_Lerp,id:8520,x:32852,y:32520,varname:node_8520,prsc:2|A-3836-OUT,B-9428-OUT,T-2509-OUT;n:type:ShaderForge.SFN_Lerp,id:2130,x:33426,y:33154,varname:node_2130,prsc:2|A-1766-OUT,B-6561-OUT,T-2509-OUT;n:type:ShaderForge.SFN_Append,id:6561,x:33236,y:33083,varname:node_6561,prsc:2|A-9454-OUT,B-6757-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8594,x:33615,y:33081,varname:node_8594,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-2130-OUT;n:type:ShaderForge.SFN_ComponentMask,id:438,x:33626,y:33214,varname:node_438,prsc:2,cc1:3,cc2:-1,cc3:-1,cc4:-1|IN-2130-OUT;n:type:ShaderForge.SFN_Multiply,id:2519,x:32338,y:33173,varname:node_2519,prsc:2|A-1187-RGB,B-3877-OUT;n:type:ShaderForge.SFN_Tex2d,id:1187,x:32141,y:33007,ptovrint:False,ptlb:Top Metalness Tex,ptin:_TopMetalnessTex,varname:node_1187,prsc:2,ntxv:0,isnm:False|UVIN-8520-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3877,x:32141,y:33193,ptovrint:False,ptlb:Top Metalness,ptin:_TopMetalness,varname:node_3877,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Append,id:1766,x:32568,y:33266,varname:node_1766,prsc:2|A-2519-OUT,B-1312-OUT;n:type:ShaderForge.SFN_Slider,id:1312,x:32181,y:33339,ptovrint:False,ptlb:Top Smoothness,ptin:_TopSmoothness,varname:node_1312,prsc:2,min:0,cur:0.5,max:3;n:type:ShaderForge.SFN_Tex2d,id:7653,x:31963,y:33622,ptovrint:False,ptlb:Top Bump,ptin:_TopBump,varname:node_7653,prsc:2,ntxv:3,isnm:True|UVIN-8520-OUT;n:type:ShaderForge.SFN_Lerp,id:9952,x:34151,y:32935,varname:node_9952,prsc:2|A-2019-OUT,B-2561-OUT,T-2509-OUT;n:type:ShaderForge.SFN_Power,id:2019,x:34381,y:33145,varname:node_2019,prsc:2|VAL-4193-A,EXP-5093-OUT;n:type:ShaderForge.SFN_Tex2d,id:4193,x:34573,y:33160,ptovrint:False,ptlb:Top AO,ptin:_TopAO,varname:node_4193,prsc:2,ntxv:0,isnm:False|UVIN-8520-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5093,x:34377,y:33084,ptovrint:False,ptlb:TopAO Power,ptin:_TopAOPower,varname:node_5093,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Power,id:4656,x:33693,y:31895,varname:node_4656,prsc:2|VAL-7158-OUT,EXP-5105-OUT;n:type:ShaderForge.SFN_Clamp01,id:7158,x:33830,y:32363,varname:node_7158,prsc:2|IN-2561-OUT;n:type:ShaderForge.SFN_Power,id:2909,x:33505,y:32094,varname:node_2909,prsc:2|VAL-6024-OUT,EXP-6293-OUT;n:type:ShaderForge.SFN_Slider,id:7994,x:32504,y:32334,ptovrint:False,ptlb:Top Relief Power,ptin:_TopReliefPower,varname:node_7994,prsc:2,min:1,cur:1,max:0;n:type:ShaderForge.SFN_Lerp,id:3836,x:33026,y:32260,varname:node_3836,prsc:2|A-9428-OUT,B-3906-UVOUT,T-7994-OUT;n:type:ShaderForge.SFN_Lerp,id:3249,x:32727,y:33537,varname:node_3249,prsc:2|A-198-OUT,B-1012-OUT,T-1509-OUT;n:type:ShaderForge.SFN_Vector3,id:1012,x:32478,y:33633,varname:node_1012,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_ValueProperty,id:1509,x:32678,y:33788,ptovrint:False,ptlb:Normal Smooth,ptin:_NormalSmooth,varname:node_1509,prsc:2,glob:False,v1:0;proporder:550-954-2195-7104-1509-3287-4025-4955-1872-806-8583-1982-6293-5105-2256-7653-1187-3877-1312-4193-5093-7994;pass:END;sub:END;*/

Shader "DLNK/Standard/TopBottom" {
    Properties {
        _Color ("Color", Color) = (0.6397059,0.6397059,0.6397059,1)
        _MainTex ("Main Tex", 2D) = "white" {}
        _Diffusepower ("Diffuse power", Float ) = 1
        _BumpMap ("Bump Map", 2D) = "bump" {}
        _NormalSmooth ("Normal Smooth", Float ) = 0
        _MetallicGlossMap ("Metallic Gloss Map", 2D) = "white" {}
        _Metalness ("Metalness", Float ) = 1
        _Smoothness ("Smoothness", Range(0, 3)) = 0.5
        _AOPower ("AO Power", Float ) = 1
        _OcclusionMap ("Occlusion Map", 2D) = "white" {}
        _UpColor ("UpColor", Color) = (0.9264706,0.04087368,0.04087368,1)
        _TopBottomLevel ("TopBottom Level", Float ) = 1
        _TopBottomPower ("TopBottom Power", Float ) = 1
        _AOBlendPower ("AO Blend Power", Float ) = 1
        _TopTexture ("Top Texture", 2D) = "white" {}
        _TopBump ("Top Bump", 2D) = "bump" {}
        _TopMetalnessTex ("Top Metalness Tex", 2D) = "white" {}
        _TopMetalness ("Top Metalness", Float ) = 1
        _TopSmoothness ("Top Smoothness", Range(0, 3)) = 0.5
        _TopAO ("Top AO", 2D) = "white" {}
        _TopAOPower ("TopAO Power", Float ) = 1
        _TopReliefPower ("Top Relief Power", Range(1, 0)) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
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
            #pragma exclude_renderers xbox360 ps3 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Diffusepower;
            uniform float4 _Color;
            uniform sampler2D _OcclusionMap; uniform float4 _OcclusionMap_ST;
            uniform float _AOPower;
            uniform float _Metalness;
            uniform float _Smoothness;
            uniform sampler2D _MetallicGlossMap; uniform float4 _MetallicGlossMap_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _TopBottomLevel;
            uniform float4 _UpColor;
            uniform float _TopBottomPower;
            uniform float _AOBlendPower;
            uniform sampler2D _TopTexture; uniform float4 _TopTexture_ST;
            uniform sampler2D _TopMetalnessTex; uniform float4 _TopMetalnessTex_ST;
            uniform float _TopMetalness;
            uniform float _TopSmoothness;
            uniform sampler2D _TopBump; uniform float4 _TopBump_ST;
            uniform sampler2D _TopAO; uniform float4 _TopAO_ST;
            uniform float _TopAOPower;
            uniform float _TopReliefPower;
            uniform float _NormalSmooth;
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
            float2 node_9428 = i.uv0.rg;
            float4 _OcclusionMap_var = tex2D(_OcclusionMap,TRANSFORM_TEX(node_9428, _OcclusionMap));
            float node_2561 = pow(_OcclusionMap_var.a,_AOPower);
            float node_2509 = saturate(pow(saturate((pow(saturate(node_2561),_AOBlendPower)/(_TopBottomPower*saturate(( _TopBottomLevel > 0.5 ? (1.0-(1.0-2.0*(_TopBottomLevel-0.5))*(1.0-i.normalDir.g)) : (2.0*_TopBottomLevel*i.normalDir.g) ))))),_TopBottomPower));
            float2 node_8520 = lerp(lerp(node_9428,i.uv0,_TopReliefPower),node_9428,node_2509);
            float3 _TopBump_var = UnpackNormal(tex2D(_TopBump,TRANSFORM_TEX(node_8520, _TopBump)));
            float3 node_9374 = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_8520, _BumpMap)));
            float3 normalLocal = lerp(lerp(_TopBump_var.rgb,node_9374.rgb,node_2509),float3(0,0,1),_NormalSmooth);
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
            float4 _TopMetalnessTex_var = tex2D(_TopMetalnessTex,TRANSFORM_TEX(node_8520, _TopMetalnessTex));
            float4 node_8130 = tex2D(_MetallicGlossMap,TRANSFORM_TEX(node_8520, _MetallicGlossMap));
            float4 node_2130 = lerp(float4((_TopMetalnessTex_var.rgb*_TopMetalness),_TopSmoothness),float4((node_8130.rgb*_Metalness),(node_8130.a*_Smoothness)),node_2509);
            float node_438 = node_2130.a;
            float gloss = node_438;
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
            float4 _TopAO_var = tex2D(_TopAO,TRANSFORM_TEX(node_8520, _TopAO));
            float node_9952 = lerp(pow(_TopAO_var.a,_TopAOPower),node_2561,node_2509);
            float3 specularAO = node_9952;
            float LdotH = max(0.0,dot(lightDirection, halfDirection));
            float4 _TopTexture_var = tex2D(_TopTexture,TRANSFORM_TEX(node_8520, _TopTexture));
            float4 node_8780 = tex2D(_MainTex,TRANSFORM_TEX(node_8520, _MainTex));
            float3 diffuseColor = lerp((_UpColor.rgb*_TopTexture_var.rgb),(node_8780.rgb*_Color.rgb*_Diffusepower),node_2509); // Need this for specular when using metallic
            float specularMonochrome;
            float3 specularColor;
            diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, node_2130.rgb.r, specularColor, specularMonochrome );
            specularMonochrome = 1-specularMonochrome;
            float NdotV = max(0.0,dot( normalDirection, viewDirection ));
            float NdotH = max(0.0,dot( normalDirection, halfDirection ));
            float VdotH = max(0.0,dot( viewDirection, halfDirection ));
            float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
            float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
            float specularPBL = max(0, (NdotL*visTerm*normTerm) * unity_LightGammaCorrectionConsts_PIDiv4 );
            float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
            half grazingTerm = saturate( gloss + specularMonochrome );
            float3 indirectSpecular = (gi.indirect.specular) * specularAO;
            indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
            float3 specular = (directSpecular + indirectSpecular);
/// Diffuse:
            NdotL = max(0.0,dot( normalDirection, lightDirection ));
            half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
            float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
            float3 indirectDiffuse = float3(0,0,0);
            indirectDiffuse += gi.indirect.diffuse;
            indirectDiffuse *= node_9952; // Diffuse AO
            float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
// Final Color:
            float3 finalColor = diffuse + specular;
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
        #pragma exclude_renderers xbox360 ps3 
        #pragma target 3.0
        uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
        uniform float _Diffusepower;
        uniform float4 _Color;
        uniform sampler2D _OcclusionMap; uniform float4 _OcclusionMap_ST;
        uniform float _AOPower;
        uniform float _Metalness;
        uniform float _Smoothness;
        uniform sampler2D _MetallicGlossMap; uniform float4 _MetallicGlossMap_ST;
        uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
        uniform float _TopBottomLevel;
        uniform float4 _UpColor;
        uniform float _TopBottomPower;
        uniform float _AOBlendPower;
        uniform sampler2D _TopTexture; uniform float4 _TopTexture_ST;
        uniform sampler2D _TopMetalnessTex; uniform float4 _TopMetalnessTex_ST;
        uniform float _TopMetalness;
        uniform float _TopSmoothness;
        uniform sampler2D _TopBump; uniform float4 _TopBump_ST;
        uniform float _TopReliefPower;
        uniform float _NormalSmooth;
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
            float2 node_9428 = i.uv0.rg;
            float4 _OcclusionMap_var = tex2D(_OcclusionMap,TRANSFORM_TEX(node_9428, _OcclusionMap));
            float node_2561 = pow(_OcclusionMap_var.a,_AOPower);
            float node_2509 = saturate(pow(saturate((pow(saturate(node_2561),_AOBlendPower)/(_TopBottomPower*saturate(( _TopBottomLevel > 0.5 ? (1.0-(1.0-2.0*(_TopBottomLevel-0.5))*(1.0-i.normalDir.g)) : (2.0*_TopBottomLevel*i.normalDir.g) ))))),_TopBottomPower));
            float2 node_8520 = lerp(lerp(node_9428,i.uv0,_TopReliefPower),node_9428,node_2509);
            float3 _TopBump_var = UnpackNormal(tex2D(_TopBump,TRANSFORM_TEX(node_8520, _TopBump)));
            float3 node_9374 = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_8520, _BumpMap)));
            float3 normalLocal = lerp(lerp(_TopBump_var.rgb,node_9374.rgb,node_2509),float3(0,0,1),_NormalSmooth);
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
            float4 _TopMetalnessTex_var = tex2D(_TopMetalnessTex,TRANSFORM_TEX(node_8520, _TopMetalnessTex));
            float4 node_8130 = tex2D(_MetallicGlossMap,TRANSFORM_TEX(node_8520, _MetallicGlossMap));
            float4 node_2130 = lerp(float4((_TopMetalnessTex_var.rgb*_TopMetalness),_TopSmoothness),float4((node_8130.rgb*_Metalness),(node_8130.a*_Smoothness)),node_2509);
            float node_438 = node_2130.a;
            float gloss = node_438;
            float specPow = exp2( gloss * 10.0+1.0);
// Specular:
            float NdotL = max(0, dot( normalDirection, lightDirection ));
            float LdotH = max(0.0,dot(lightDirection, halfDirection));
            float4 _TopTexture_var = tex2D(_TopTexture,TRANSFORM_TEX(node_8520, _TopTexture));
            float4 node_8780 = tex2D(_MainTex,TRANSFORM_TEX(node_8520, _MainTex));
            float3 diffuseColor = lerp((_UpColor.rgb*_TopTexture_var.rgb),(node_8780.rgb*_Color.rgb*_Diffusepower),node_2509); // Need this for specular when using metallic
            float specularMonochrome;
            float3 specularColor;
            diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, node_2130.rgb.r, specularColor, specularMonochrome );
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
            NdotL = max(0.0,dot( normalDirection, lightDirection ));
            half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
            float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
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
        #pragma exclude_renderers xbox360 ps3 
        #pragma target 3.0
        uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
        uniform float _Diffusepower;
        uniform float4 _Color;
        uniform sampler2D _OcclusionMap; uniform float4 _OcclusionMap_ST;
        uniform float _AOPower;
        uniform float _Metalness;
        uniform float _Smoothness;
        uniform sampler2D _MetallicGlossMap; uniform float4 _MetallicGlossMap_ST;
        uniform float _TopBottomLevel;
        uniform float4 _UpColor;
        uniform float _TopBottomPower;
        uniform float _AOBlendPower;
        uniform sampler2D _TopTexture; uniform float4 _TopTexture_ST;
        uniform sampler2D _TopMetalnessTex; uniform float4 _TopMetalnessTex_ST;
        uniform float _TopMetalness;
        uniform float _TopSmoothness;
        uniform float _TopReliefPower;
        struct VertexInput {
            float4 vertex : POSITION;
            float3 normal : NORMAL;
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
        };
        VertexOutput vert (VertexInput v) {
            VertexOutput o = (VertexOutput)0;
            o.uv0 = v.texcoord0;
            o.uv1 = v.texcoord1;
            o.uv2 = v.texcoord2;
            o.normalDir = UnityObjectToWorldNormal(v.normal);
            o.posWorld = mul(unity_ObjectToWorld, v.vertex);
            o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
            return o;
        }
        float4 frag(VertexOutput i) : SV_Target {
            i.normalDir = normalize(i.normalDir);
/// Vectors:
            float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
            float3 normalDirection = i.normalDir;
            UnityMetaInput o;
            UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
            
            o.Emission = 0;
            
            float2 node_9428 = i.uv0.rg;
            float4 _OcclusionMap_var = tex2D(_OcclusionMap,TRANSFORM_TEX(node_9428, _OcclusionMap));
            float node_2561 = pow(_OcclusionMap_var.a,_AOPower);
            float node_2509 = saturate(pow(saturate((pow(saturate(node_2561),_AOBlendPower)/(_TopBottomPower*saturate(( _TopBottomLevel > 0.5 ? (1.0-(1.0-2.0*(_TopBottomLevel-0.5))*(1.0-i.normalDir.g)) : (2.0*_TopBottomLevel*i.normalDir.g) ))))),_TopBottomPower));
            float2 node_8520 = lerp(lerp(node_9428,i.uv0,_TopReliefPower),node_9428,node_2509);
            float4 _TopTexture_var = tex2D(_TopTexture,TRANSFORM_TEX(node_8520, _TopTexture));
            float4 node_8780 = tex2D(_MainTex,TRANSFORM_TEX(node_8520, _MainTex));
            float3 diffColor = lerp((_UpColor.rgb*_TopTexture_var.rgb),(node_8780.rgb*_Color.rgb*_Diffusepower),node_2509);
            float specularMonochrome;
            float3 specColor;
            float4 _TopMetalnessTex_var = tex2D(_TopMetalnessTex,TRANSFORM_TEX(node_8520, _TopMetalnessTex));
            float4 node_8130 = tex2D(_MetallicGlossMap,TRANSFORM_TEX(node_8520, _MetallicGlossMap));
            float4 node_2130 = lerp(float4((_TopMetalnessTex_var.rgb*_TopMetalness),_TopSmoothness),float4((node_8130.rgb*_Metalness),(node_8130.a*_Smoothness)),node_2509);
            diffColor = DiffuseAndSpecularFromMetallic( diffColor, node_2130.rgb.r, specColor, specularMonochrome );
            float node_438 = node_2130.a;
            float roughness = 1.0 - node_438;
            o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
            
            return UnityMetaFragment( o );
        }
        ENDCG
    }
}
FallBack "DLNK/Mobile/StandarTopBottom"
CustomEditor "ShaderForgeMaterialInspector"
}
