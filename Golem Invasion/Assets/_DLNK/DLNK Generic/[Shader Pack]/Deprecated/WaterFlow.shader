// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,rprd:True,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:False,dith:0,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.4788062,fgcg:0.6402428,fgcb:0.9044118,fgca:1,fgde:0.02,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:34176,y:32604,varname:node_1,prsc:2|diff-191-OUT,spec-6225-OUT,gloss-554-OUT,normal-198-OUT,alpha-168-OUT,refract-8197-OUT;n:type:ShaderForge.SFN_Tex2d,id:3,x:33216,y:33105,varname:node_5935,prsc:2,ntxv:0,isnm:False|UVIN-24-OUT,TEX-5-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:5,x:32654,y:32964,ptovrint:False,ptlb:Normal Side,ptin:_NormalSide,varname:node_5158,glob:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_TexCoord,id:7,x:31900,y:32910,varname:node_7,prsc:2,uv:0;n:type:ShaderForge.SFN_Time,id:21,x:31660,y:33012,varname:node_21,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:23,x:31670,y:33173,ptovrint:False,ptlb:1st Velocity,ptin:_1stVelocity,varname:node_8148,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Append,id:24,x:32418,y:33100,varname:node_24,prsc:2|A-7-U,B-97-OUT;n:type:ShaderForge.SFN_Tex2d,id:29,x:33104,y:32674,varname:node_5058,prsc:2,tex:54cb96669393c354cab800a4e2e0001c,ntxv:2,isnm:False|UVIN-24-OUT,TEX-158-TEX;n:type:ShaderForge.SFN_Panner,id:96,x:32035,y:33153,varname:node_96,prsc:2,spu:1,spv:1|UVIN-7-UVOUT,DIST-98-OUT;n:type:ShaderForge.SFN_ComponentMask,id:97,x:32219,y:33153,varname:node_97,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-96-UVOUT;n:type:ShaderForge.SFN_Multiply,id:98,x:31861,y:33173,varname:node_98,prsc:2|A-21-TSL,B-23-OUT;n:type:ShaderForge.SFN_If,id:121,x:32884,y:33368,varname:node_121,prsc:2|A-143-OUT,B-142-OUT,GT-122-OUT,EQ-123-OUT,LT-123-OUT;n:type:ShaderForge.SFN_Vector1,id:122,x:32656,y:33570,varname:node_122,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:123,x:32656,y:33503,varname:node_123,prsc:2,v1:1;n:type:ShaderForge.SFN_NormalVector,id:130,x:32319,y:33407,prsc:2,pt:False;n:type:ShaderForge.SFN_Transform,id:139,x:32482,y:33407,varname:node_139,prsc:2,tffrom:1,tfto:0|IN-130-OUT;n:type:ShaderForge.SFN_ComponentMask,id:142,x:32641,y:33365,varname:node_142,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-130-OUT;n:type:ShaderForge.SFN_Slider,id:143,x:32520,y:33281,ptovrint:False,ptlb:TopDown Mask,ptin:_TopDownMask,varname:node_4948,prsc:2,min:0,cur:0.8270677,max:1;n:type:ShaderForge.SFN_NormalBlend,id:146,x:33393,y:33327,varname:node_146,prsc:2|BSE-3-RGB,DTL-147-RGB;n:type:ShaderForge.SFN_Tex2d,id:147,x:33187,y:33351,varname:node_4661,prsc:2,ntxv:0,isnm:False|UVIN-152-OUT,TEX-5-TEX;n:type:ShaderForge.SFN_Panner,id:148,x:31977,y:33561,varname:node_148,prsc:2,spu:1,spv:1|UVIN-7-UVOUT,DIST-149-OUT;n:type:ShaderForge.SFN_Multiply,id:149,x:31782,y:33450,varname:node_149,prsc:2|A-98-OUT,B-150-OUT;n:type:ShaderForge.SFN_ValueProperty,id:150,x:31592,y:33559,ptovrint:False,ptlb:2nd Velocity,ptin:_2ndVelocity,varname:node_77,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_ComponentMask,id:151,x:32209,y:33720,varname:node_151,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-148-UVOUT;n:type:ShaderForge.SFN_Append,id:152,x:32420,y:33616,varname:node_152,prsc:2|A-7-U,B-151-OUT;n:type:ShaderForge.SFN_Tex2d,id:157,x:33154,y:32857,varname:node_5661,prsc:2,tex:54cb96669393c354cab800a4e2e0001c,ntxv:2,isnm:False|UVIN-152-OUT,TEX-158-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:158,x:32839,y:32652,ptovrint:False,ptlb:Diffuse Side,ptin:_DiffuseSide,varname:node_2671,glob:False,tex:54cb96669393c354cab800a4e2e0001c,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Blend,id:159,x:33460,y:32793,varname:node_159,prsc:2,blmd:10,clmp:True|SRC-29-RGB,DST-157-RGB;n:type:ShaderForge.SFN_Blend,id:167,x:33429,y:32995,varname:node_167,prsc:2,blmd:10,clmp:True|SRC-29-A,DST-157-A;n:type:ShaderForge.SFN_Multiply,id:168,x:33626,y:33208,varname:node_168,prsc:2|A-194-OUT,B-169-OUT;n:type:ShaderForge.SFN_ValueProperty,id:169,x:33604,y:33361,ptovrint:False,ptlb:Opacity Power,ptin:_OpacityPower,varname:node_4306,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Lerp,id:191,x:33690,y:32779,varname:node_191,prsc:2|A-159-OUT,B-312-OUT,T-121-OUT;n:type:ShaderForge.SFN_Tex2d,id:192,x:33342,y:32570,varname:node_5440,prsc:2,ntxv:0,isnm:False|UVIN-251-UVOUT,TEX-304-TEX;n:type:ShaderForge.SFN_Lerp,id:194,x:33690,y:32979,varname:node_194,prsc:2|A-167-OUT,B-330-OUT,T-121-OUT;n:type:ShaderForge.SFN_Lerp,id:198,x:33659,y:33476,varname:node_198,prsc:2|A-146-OUT,B-317-OUT,T-121-OUT;n:type:ShaderForge.SFN_Tex2d,id:199,x:32567,y:32761,varname:node_4367,prsc:2,ntxv:3,isnm:True|UVIN-251-UVOUT,TEX-305-TEX;n:type:ShaderForge.SFN_Sin,id:250,x:32313,y:32320,varname:node_250,prsc:2|IN-266-OUT;n:type:ShaderForge.SFN_Panner,id:251,x:32596,y:32340,varname:node_251,prsc:2,spu:1,spv:1|DIST-293-OUT;n:type:ShaderForge.SFN_Multiply,id:266,x:32014,y:32502,varname:node_266,prsc:2|A-21-TSL,B-274-OUT;n:type:ShaderForge.SFN_ValueProperty,id:274,x:32014,y:32679,ptovrint:False,ptlb:Up Velocity,ptin:_UpVelocity,varname:node_439,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:293,x:32476,y:32122,varname:node_293,prsc:2|IN-250-OUT,IMIN-294-OUT,IMAX-295-OUT,OMIN-297-OUT,OMAX-296-OUT;n:type:ShaderForge.SFN_Vector1,id:294,x:32263,y:32003,varname:node_294,prsc:2,v1:-1;n:type:ShaderForge.SFN_Vector1,id:295,x:32263,y:32056,varname:node_295,prsc:2,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:296,x:32136,y:32283,ptovrint:False,ptlb:UpMove Range,ptin:_UpMoveRange,varname:node_8011,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Negate,id:297,x:32263,y:32122,varname:node_297,prsc:2|IN-296-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:304,x:33132,y:32148,ptovrint:False,ptlb:Diffuse Up,ptin:_DiffuseUp,varname:node_610,glob:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:305,x:32254,y:32679,ptovrint:False,ptlb:Normal Up,ptin:_NormalUp,varname:node_7978,glob:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:311,x:33356,y:32341,varname:node_8912,prsc:2,ntxv:0,isnm:False|UVIN-314-OUT,TEX-304-TEX;n:type:ShaderForge.SFN_Lerp,id:312,x:33576,y:32510,varname:node_312,prsc:2|A-311-RGB,B-192-RGB,T-547-OUT;n:type:ShaderForge.SFN_RemapRange,id:314,x:32826,y:32182,varname:node_314,prsc:2,frmn:0,frmx:1,tomn:1,tomx:0|IN-251-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:316,x:32611,y:32613,varname:node_2284,prsc:2,ntxv:3,isnm:True|UVIN-314-OUT,TEX-305-TEX;n:type:ShaderForge.SFN_Lerp,id:317,x:32793,y:32812,varname:node_317,prsc:2|A-316-RGB,B-199-RGB,T-547-OUT;n:type:ShaderForge.SFN_Lerp,id:330,x:33576,y:32640,varname:node_330,prsc:2|A-311-A,B-192-A,T-547-OUT;n:type:ShaderForge.SFN_ValueProperty,id:547,x:33002,y:32551,ptovrint:False,ptlb:Upmove Mix,ptin:_UpmoveMix,varname:node_1358,prsc:2,glob:False,v1:0.5;n:type:ShaderForge.SFN_Slider,id:554,x:33842,y:32448,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_88,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_ValueProperty,id:2499,x:33690,y:32930,ptovrint:False,ptlb:Metalness,ptin:_Metalness,varname:node_2499,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:6225,x:33880,y:32819,varname:node_6225,prsc:2|A-2499-OUT,B-194-OUT;n:type:ShaderForge.SFN_Multiply,id:1188,x:33893,y:33182,varname:node_1188,prsc:2|A-317-OUT,B-1398-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1398,x:33926,y:33384,ptovrint:False,ptlb:Refraction,ptin:_Refraction,varname:node_1398,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_ComponentMask,id:8197,x:33918,y:33014,varname:node_8197,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1188-OUT;proporder:143-158-5-304-305-23-150-274-296-169-547-2499-554-1398;pass:END;sub:END;*/

Shader "DLNK/Special/WaterFlow" {
    Properties {
        _TopDownMask ("TopDown Mask", Range(0, 1)) = 0.8270677
        _DiffuseSide ("Diffuse Side", 2D) = "white" {}
        _NormalSide ("Normal Side", 2D) = "white" {}
        _DiffuseUp ("Diffuse Up", 2D) = "white" {}
        _NormalUp ("Normal Up", 2D) = "white" {}
        _1stVelocity ("1st Velocity", Float ) = 1
        _2ndVelocity ("2nd Velocity", Float ) = 2
        _UpVelocity ("Up Velocity", Float ) = 0
        _UpMoveRange ("UpMove Range", Float ) = 1
        _OpacityPower ("Opacity Power", Float ) = 1
        _UpmoveMix ("Upmove Mix", Float ) = 0.5
        _Metalness ("Metalness", Float ) = 0
        _Gloss ("Gloss", Range(0, 1)) = 0
        _Refraction ("Refraction", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 ps3 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _NormalSide; uniform float4 _NormalSide_ST;
            uniform float _1stVelocity;
            uniform float _TopDownMask;
            uniform float _2ndVelocity;
            uniform sampler2D _DiffuseSide; uniform float4 _DiffuseSide_ST;
            uniform float _OpacityPower;
            uniform float _UpVelocity;
            uniform float _UpMoveRange;
            uniform sampler2D _DiffuseUp; uniform float4 _DiffuseUp_ST;
            uniform sampler2D _NormalUp; uniform float4 _NormalUp_ST;
            uniform float _UpmoveMix;
            uniform float _Gloss;
            uniform float _Metalness;
            uniform float _Refraction;
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
                float4 screenPos : TEXCOORD7;
                UNITY_FOG_COORDS(8)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD9;
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
            o.screenPos = o.pos;
            return o;
        }
        float4 frag(VertexOutput i) : COLOR {
            #if UNITY_UV_STARTS_AT_TOP
                float grabSign = -_ProjectionParams.x;
            #else
                float grabSign = _ProjectionParams.x;
            #endif
            i.normalDir = normalize(i.normalDir);
            i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
            i.screenPos.y *= _ProjectionParams.x;
            float4 node_21 = _Time + _TimeEditor;
            float node_294 = (-1.0);
            float node_297 = (-1*_UpMoveRange);
            float2 node_251 = (i.uv0+(node_297 + ( (sin((node_21.r*_UpVelocity)) - node_294) * (_UpMoveRange - node_297) ) / (1.0 - node_294))*float2(1,1));
            float2 node_314 = (node_251*-1.0+1.0);
            float4 node_2284 = tex2D(_NormalUp,TRANSFORM_TEX(node_314, _NormalUp));
            float4 node_4367 = tex2D(_NormalUp,TRANSFORM_TEX(node_251, _NormalUp));
            float3 node_317 = lerp(node_2284.rgb,node_4367.rgb,_UpmoveMix);
            float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (node_317*_Refraction).rg;
            float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
            float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/// Vectors:
            float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
            float node_98 = (node_21.r*_1stVelocity);
            float2 node_24 = float2(i.uv0.r,(i.uv0+node_98*float2(1,1)).g);
            float4 node_5935 = tex2D(_NormalSide,TRANSFORM_TEX(node_24, _NormalSide));
            float2 node_152 = float2(i.uv0.r,(i.uv0+(node_98*_2ndVelocity)*float2(1,1)).g);
            float4 node_4661 = tex2D(_NormalSide,TRANSFORM_TEX(node_152, _NormalSide));
            float3 node_146_nrm_base = node_5935.rgb + float3(0,0,1);
            float3 node_146_nrm_detail = node_4661.rgb * float3(-1,-1,1);
            float3 node_146_nrm_combined = node_146_nrm_base*dot(node_146_nrm_base, node_146_nrm_detail)/node_146_nrm_base.z - node_146_nrm_detail;
            float3 node_146 = node_146_nrm_combined;
            float node_121_if_leA = step(_TopDownMask,i.normalDir.g);
            float node_121_if_leB = step(i.normalDir.g,_TopDownMask);
            float node_123 = 1.0;
            float node_121 = lerp((node_121_if_leA*node_123)+(node_121_if_leB*0.0),node_123,node_121_if_leA*node_121_if_leB);
            float3 node_198 = lerp(node_146,node_317,node_121);
            float3 normalLocal = node_198;
            float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
            float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
            float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
            float3 lightColor = _LightColor0.rgb;
            float3 halfDirection = normalize(viewDirection+lightDirection);
// Lighting:
            float attenuation = 1;
            float3 attenColor = attenuation * _LightColor0.xyz;
            float Pi = 3.141592654;
            float InvPi = 0.31830988618;
///// Gloss:
            float gloss = _Gloss;
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
            float4 node_5058 = tex2D(_DiffuseSide,TRANSFORM_TEX(node_24, _DiffuseSide));
            float4 node_5661 = tex2D(_DiffuseSide,TRANSFORM_TEX(node_152, _DiffuseSide));
            float4 node_8912 = tex2D(_DiffuseUp,TRANSFORM_TEX(node_314, _DiffuseUp));
            float4 node_5440 = tex2D(_DiffuseUp,TRANSFORM_TEX(node_251, _DiffuseUp));
            float3 diffuseColor = lerp(saturate(( node_5661.rgb > 0.5 ? (1.0-(1.0-2.0*(node_5661.rgb-0.5))*(1.0-node_5058.rgb)) : (2.0*node_5661.rgb*node_5058.rgb) )),lerp(node_8912.rgb,node_5440.rgb,_UpmoveMix),node_121); // Need this for specular when using metallic
            float specularMonochrome;
            float3 specularColor;
            float node_194 = lerp(saturate(( node_5661.a > 0.5 ? (1.0-(1.0-2.0*(node_5661.a-0.5))*(1.0-node_5058.a)) : (2.0*node_5661.a*node_5058.a) )),lerp(node_8912.a,node_5440.a,_UpmoveMix),node_121);
            diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, (_Metalness*node_194), specularColor, specularMonochrome );
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
            NdotL = max(0.0,dot( normalDirection, lightDirection ));
            half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
            float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
            float3 indirectDiffuse = float3(0,0,0);
            indirectDiffuse += gi.indirect.diffuse;
            float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
// Final Color:
            float3 finalColor = diffuse + specular;
            float node_168 = (node_194*_OpacityPower);
            fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,node_168),1);
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
        ZWrite Off
        
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
        #pragma multi_compile_fwdadd
        #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
        #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
        #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
        #pragma multi_compile_fog
        #pragma exclude_renderers xbox360 ps3 
        #pragma target 3.0
        uniform sampler2D _GrabTexture;
        uniform float4 _TimeEditor;
        uniform sampler2D _NormalSide; uniform float4 _NormalSide_ST;
        uniform float _1stVelocity;
        uniform float _TopDownMask;
        uniform float _2ndVelocity;
        uniform sampler2D _DiffuseSide; uniform float4 _DiffuseSide_ST;
        uniform float _OpacityPower;
        uniform float _UpVelocity;
        uniform float _UpMoveRange;
        uniform sampler2D _DiffuseUp; uniform float4 _DiffuseUp_ST;
        uniform sampler2D _NormalUp; uniform float4 _NormalUp_ST;
        uniform float _UpmoveMix;
        uniform float _Gloss;
        uniform float _Metalness;
        uniform float _Refraction;
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
            float4 screenPos : TEXCOORD7;
            LIGHTING_COORDS(8,9)
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
            o.screenPos = o.pos;
            TRANSFER_VERTEX_TO_FRAGMENT(o)
            return o;
        }
        float4 frag(VertexOutput i) : COLOR {
            #if UNITY_UV_STARTS_AT_TOP
                float grabSign = -_ProjectionParams.x;
            #else
                float grabSign = _ProjectionParams.x;
            #endif
            i.normalDir = normalize(i.normalDir);
            i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
            i.screenPos.y *= _ProjectionParams.x;
            float4 node_21 = _Time + _TimeEditor;
            float node_294 = (-1.0);
            float node_297 = (-1*_UpMoveRange);
            float2 node_251 = (i.uv0+(node_297 + ( (sin((node_21.r*_UpVelocity)) - node_294) * (_UpMoveRange - node_297) ) / (1.0 - node_294))*float2(1,1));
            float2 node_314 = (node_251*-1.0+1.0);
            float4 node_2284 = tex2D(_NormalUp,TRANSFORM_TEX(node_314, _NormalUp));
            float4 node_4367 = tex2D(_NormalUp,TRANSFORM_TEX(node_251, _NormalUp));
            float3 node_317 = lerp(node_2284.rgb,node_4367.rgb,_UpmoveMix);
            float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (node_317*_Refraction).rg;
            float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
            float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/// Vectors:
            float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
            float node_98 = (node_21.r*_1stVelocity);
            float2 node_24 = float2(i.uv0.r,(i.uv0+node_98*float2(1,1)).g);
            float4 node_5935 = tex2D(_NormalSide,TRANSFORM_TEX(node_24, _NormalSide));
            float2 node_152 = float2(i.uv0.r,(i.uv0+(node_98*_2ndVelocity)*float2(1,1)).g);
            float4 node_4661 = tex2D(_NormalSide,TRANSFORM_TEX(node_152, _NormalSide));
            float3 node_146_nrm_base = node_5935.rgb + float3(0,0,1);
            float3 node_146_nrm_detail = node_4661.rgb * float3(-1,-1,1);
            float3 node_146_nrm_combined = node_146_nrm_base*dot(node_146_nrm_base, node_146_nrm_detail)/node_146_nrm_base.z - node_146_nrm_detail;
            float3 node_146 = node_146_nrm_combined;
            float node_121_if_leA = step(_TopDownMask,i.normalDir.g);
            float node_121_if_leB = step(i.normalDir.g,_TopDownMask);
            float node_123 = 1.0;
            float node_121 = lerp((node_121_if_leA*node_123)+(node_121_if_leB*0.0),node_123,node_121_if_leA*node_121_if_leB);
            float3 node_198 = lerp(node_146,node_317,node_121);
            float3 normalLocal = node_198;
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
            float gloss = _Gloss;
            float specPow = exp2( gloss * 10.0+1.0);
// Specular:
            float NdotL = max(0, dot( normalDirection, lightDirection ));
            float LdotH = max(0.0,dot(lightDirection, halfDirection));
            float4 node_5058 = tex2D(_DiffuseSide,TRANSFORM_TEX(node_24, _DiffuseSide));
            float4 node_5661 = tex2D(_DiffuseSide,TRANSFORM_TEX(node_152, _DiffuseSide));
            float4 node_8912 = tex2D(_DiffuseUp,TRANSFORM_TEX(node_314, _DiffuseUp));
            float4 node_5440 = tex2D(_DiffuseUp,TRANSFORM_TEX(node_251, _DiffuseUp));
            float3 diffuseColor = lerp(saturate(( node_5661.rgb > 0.5 ? (1.0-(1.0-2.0*(node_5661.rgb-0.5))*(1.0-node_5058.rgb)) : (2.0*node_5661.rgb*node_5058.rgb) )),lerp(node_8912.rgb,node_5440.rgb,_UpmoveMix),node_121); // Need this for specular when using metallic
            float specularMonochrome;
            float3 specularColor;
            float node_194 = lerp(saturate(( node_5661.a > 0.5 ? (1.0-(1.0-2.0*(node_5661.a-0.5))*(1.0-node_5058.a)) : (2.0*node_5661.a*node_5058.a) )),lerp(node_8912.a,node_5440.a,_UpmoveMix),node_121);
            diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, (_Metalness*node_194), specularColor, specularMonochrome );
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
            float node_168 = (node_194*_OpacityPower);
            return fixed4(finalColor * node_168,0);
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
        uniform float4 _TimeEditor;
        uniform float _1stVelocity;
        uniform float _TopDownMask;
        uniform float _2ndVelocity;
        uniform sampler2D _DiffuseSide; uniform float4 _DiffuseSide_ST;
        uniform float _UpVelocity;
        uniform float _UpMoveRange;
        uniform sampler2D _DiffuseUp; uniform float4 _DiffuseUp_ST;
        uniform float _UpmoveMix;
        uniform float _Gloss;
        uniform float _Metalness;
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
            
            float4 node_21 = _Time + _TimeEditor;
            float node_98 = (node_21.r*_1stVelocity);
            float2 node_24 = float2(i.uv0.r,(i.uv0+node_98*float2(1,1)).g);
            float4 node_5058 = tex2D(_DiffuseSide,TRANSFORM_TEX(node_24, _DiffuseSide));
            float2 node_152 = float2(i.uv0.r,(i.uv0+(node_98*_2ndVelocity)*float2(1,1)).g);
            float4 node_5661 = tex2D(_DiffuseSide,TRANSFORM_TEX(node_152, _DiffuseSide));
            float node_294 = (-1.0);
            float node_297 = (-1*_UpMoveRange);
            float2 node_251 = (i.uv0+(node_297 + ( (sin((node_21.r*_UpVelocity)) - node_294) * (_UpMoveRange - node_297) ) / (1.0 - node_294))*float2(1,1));
            float2 node_314 = (node_251*-1.0+1.0);
            float4 node_8912 = tex2D(_DiffuseUp,TRANSFORM_TEX(node_314, _DiffuseUp));
            float4 node_5440 = tex2D(_DiffuseUp,TRANSFORM_TEX(node_251, _DiffuseUp));
            float node_121_if_leA = step(_TopDownMask,i.normalDir.g);
            float node_121_if_leB = step(i.normalDir.g,_TopDownMask);
            float node_123 = 1.0;
            float node_121 = lerp((node_121_if_leA*node_123)+(node_121_if_leB*0.0),node_123,node_121_if_leA*node_121_if_leB);
            float3 diffColor = lerp(saturate(( node_5661.rgb > 0.5 ? (1.0-(1.0-2.0*(node_5661.rgb-0.5))*(1.0-node_5058.rgb)) : (2.0*node_5661.rgb*node_5058.rgb) )),lerp(node_8912.rgb,node_5440.rgb,_UpmoveMix),node_121);
            float specularMonochrome;
            float3 specColor;
            float node_194 = lerp(saturate(( node_5661.a > 0.5 ? (1.0-(1.0-2.0*(node_5661.a-0.5))*(1.0-node_5058.a)) : (2.0*node_5661.a*node_5058.a) )),lerp(node_8912.a,node_5440.a,_UpmoveMix),node_121);
            diffColor = DiffuseAndSpecularFromMetallic( diffColor, (_Metalness*node_194), specColor, specularMonochrome );
            float roughness = 1.0 - _Gloss;
            o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
            
            return UnityMetaFragment( o );
        }
        ENDCG
    }
}
FallBack "Diffuse"
CustomEditor "ShaderForgeMaterialInspector"
}
