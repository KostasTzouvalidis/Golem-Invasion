// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

#warning Upgrade NOTE: unity_Scale shader variable was removed; replaced 'unity_Scale.w' with '1.0'
// Upgrade NOTE: commented out 'float4 unity_LightmapST', a built-in variable
// Upgrade NOTE: commented out 'sampler2D unity_Lightmap', a built-in variable
// Upgrade NOTE: commented out 'sampler2D unity_LightmapInd', a built-in variable
// Upgrade NOTE: replaced tex2D unity_Lightmap with UNITY_SAMPLE_TEX2D
// Upgrade NOTE: replaced tex2D unity_LightmapInd with UNITY_SAMPLE_TEX2D_SAMPLER

// Shader created with Shader Forge v1.04 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.04;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:True,lprd:True,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:2,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:958,x:34015,y:33218,varname:node_958,prsc:2|diff-6902-OUT,spec-5737-OUT,gloss-9294-OUT,normal-9374-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:954,x:33070,y:32586,ptovrint:False,ptlb:Main Tex,ptin:_MainTex,varname:node_954,tex:6d639ef2ce2ef59419acbc0072552b5a,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8780,x:33248,y:32586,varname:node_8780,prsc:2,tex:6d639ef2ce2ef59419acbc0072552b5a,ntxv:0,isnm:False|TEX-954-TEX;n:type:ShaderForge.SFN_Color,id:550,x:33248,y:32430,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_550,prsc:2,glob:False,c1:0.6397059,c2:0.6397059,c3:0.6397059,c4:1;n:type:ShaderForge.SFN_Multiply,id:9466,x:33248,y:32715,varname:node_9466,prsc:2|A-8780-RGB,B-550-RGB;n:type:ShaderForge.SFN_Tex2d,id:806,x:33925,y:32642,ptovrint:False,ptlb:Occlusion Map,ptin:_OcclusionMap,varname:node_806,prsc:2,tex:9c7142a293d0f2345a756657824034ba,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:4025,x:32129,y:33115,ptovrint:False,ptlb:Specular Power,ptin:_SpecularPower,varname:node_4025,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Slider,id:4955,x:31972,y:33267,ptovrint:False,ptlb:Shininess,ptin:_Shininess,varname:node_4955,prsc:2,min:0,cur:0.5,max:3;n:type:ShaderForge.SFN_Tex2d,id:9374,x:31963,y:33453,varname:node_9374,prsc:2,ntxv:3,isnm:True|TEX-7104-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:7104,x:31735,y:33453,ptovrint:False,ptlb:Bump Map,ptin:_BumpMap,varname:node_7104,ntxv:3,isnm:True;n:type:ShaderForge.SFN_NormalVector,id:3389,x:32303,y:32050,prsc:2,pt:False;n:type:ShaderForge.SFN_ComponentMask,id:3702,x:32468,y:32050,varname:node_3702,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-3389-OUT;n:type:ShaderForge.SFN_Lerp,id:6902,x:33561,y:32802,varname:node_6902,prsc:2|A-9425-OUT,B-9466-OUT,T-2509-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1982,x:32621,y:32151,ptovrint:False,ptlb:TopBottom Level,ptin:_TopBottomLevel,varname:node_1982,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Color,id:8583,x:34131,y:32463,ptovrint:False,ptlb:UpColor,ptin:_UpColor,varname:node_8583,prsc:2,glob:False,c1:0.9264706,c2:0.04087368,c3:0.04087368,c4:1;n:type:ShaderForge.SFN_Multiply,id:7023,x:33056,y:32013,varname:node_7023,prsc:2|A-6293-OUT,B-7841-OUT;n:type:ShaderForge.SFN_Clamp01,id:2509,x:33715,y:32113,varname:node_2509,prsc:2|IN-2909-OUT;n:type:ShaderForge.SFN_Blend,id:7841,x:32820,y:32038,varname:node_7841,prsc:2,blmd:10,clmp:True|SRC-3702-OUT,DST-1982-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6293,x:32881,y:31972,ptovrint:False,ptlb:TopBottom Power,ptin:_TopBottomPower,varname:node_6293,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Blend,id:6024,x:33326,y:32042,varname:node_6024,prsc:2,blmd:20,clmp:True|SRC-7023-OUT,DST-4656-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5105,x:33148,y:31863,ptovrint:False,ptlb:AO Blend Power,ptin:_AOBlendPower,varname:node_5105,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:9425,x:34359,y:32463,varname:node_9425,prsc:2|A-8583-RGB,B-2256-RGB;n:type:ShaderForge.SFN_Tex2d,id:2256,x:34294,y:32226,ptovrint:False,ptlb:Top Texture,ptin:_TopTexture,varname:node_2256,prsc:2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Power,id:4656,x:33340,y:31863,varname:node_4656,prsc:2|VAL-806-A,EXP-5105-OUT;n:type:ShaderForge.SFN_Power,id:2909,x:33505,y:32094,varname:node_2909,prsc:2|VAL-6024-OUT,EXP-6293-OUT;n:type:ShaderForge.SFN_Multiply,id:5737,x:33641,y:33069,varname:node_5737,prsc:2|A-806-A,B-4025-OUT,C-2052-OUT;n:type:ShaderForge.SFN_Multiply,id:9294,x:33641,y:33282,varname:node_9294,prsc:2|A-4955-OUT,B-806-A;n:type:ShaderForge.SFN_Vector1,id:2052,x:33190,y:33163,varname:node_2052,prsc:2,v1:0.5;proporder:550-954-7104-4025-4955-806-8583-1982-6293-5105-2256;pass:END;sub:END;*/

Shader "DLNK/Mobile/StandarTopBottom" {
    Properties {
        _Color ("Color", Color) = (0.6397059,0.6397059,0.6397059,1)
        _MainTex ("Main Tex", 2D) = "white" {}
        _BumpMap ("Bump Map", 2D) = "bump" {}
        _SpecularPower ("Specular Power", Float ) = 1
        _Shininess ("Shininess", Range(0, 3)) = 0.5
        _OcclusionMap ("Occlusion Map", 2D) = "white" {}
        _UpColor ("UpColor", Color) = (0.9264706,0.04087368,0.04087368,1)
        _TopBottomLevel ("TopBottom Level", Float ) = 1
        _TopBottomPower ("TopBottom Power", Float ) = 1
        _AOBlendPower ("AO Blend Power", Float ) = 1
        _TopTexture ("Top Texture", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH_PROBE ( defined (LIGHTMAP_OFF) )
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            #ifndef LIGHTMAP_OFF
                // float4 unity_LightmapST;
                // sampler2D unity_Lightmap;
                #ifndef DIRLIGHTMAP_OFF
                    // sampler2D unity_LightmapInd;
                #endif
            #endif
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Color;
            uniform sampler2D _OcclusionMap; uniform float4 _OcclusionMap_ST;
            uniform float _SpecularPower;
            uniform float _Shininess;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _TopBottomLevel;
            uniform float4 _UpColor;
            uniform float _TopBottomPower;
            uniform float _AOBlendPower;
            uniform sampler2D _TopTexture; uniform float4 _TopTexture_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                #ifndef LIGHTMAP_OFF
                    float2 uvLM : TEXCOORD7;
                #elif SHOULD_SAMPLE_SH_PROBE
                    float3 shLight : TEXCOORD7;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                #if SHOULD_SAMPLE_SH_PROBE
                    o.shLight = ShadeSH9(float4(mul(unity_ObjectToWorld, float4(v.normal,0)).xyz * 1.0,1)) * 0.5;
                #endif
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                #ifndef LIGHTMAP_OFF
                    o.uvLM = v.texcoord1 * unity_LightmapST.xy + unity_LightmapST.zw;
                #endif
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 node_9374 = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 normalLocal = node_9374.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                #ifndef LIGHTMAP_OFF
                    float4 lmtex = UNITY_SAMPLE_TEX2D(unity_Lightmap,i.uvLM);
                    #ifndef DIRLIGHTMAP_OFF
                        float3 lightmap = DecodeLightmap(lmtex);
                        float3 scalePerBasisVector = DecodeLightmap(UNITY_SAMPLE_TEX2D_SAMPLER(unity_LightmapInd,unity_Lightmap,i.uvLM));
                        UNITY_DIRBASIS
                        half3 normalInRnmBasis = saturate (mul (unity_DirBasis, normalLocal));
                        lightmap *= dot (normalInRnmBasis, scalePerBasisVector);
                    #else
                        float3 lightmap = DecodeLightmap(lmtex);
                    #endif
                #endif
                #ifndef LIGHTMAP_OFF
                    #ifdef DIRLIGHTMAP_OFF
                        float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                    #else
                        float3 lightDirection = normalize (scalePerBasisVector.x * unity_DirBasis[0] + scalePerBasisVector.y * unity_DirBasis[1] + scalePerBasisVector.z * unity_DirBasis[2]);
                        lightDirection = mul(lightDirection,tangentTransform); // Tangent to world
                    #endif
                #else
                    float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                #endif
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float4 _OcclusionMap_var = tex2D(_OcclusionMap,TRANSFORM_TEX(i.uv0, _OcclusionMap));
                float gloss = (_Shininess*_OcclusionMap_var.a);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float node_5737 = (_OcclusionMap_var.a*_SpecularPower*0.5);
                float3 specularColor = float3(node_5737,node_5737,node_5737);
                #if !defined(LIGHTMAP_OFF) && defined(DIRLIGHTMAP_OFF)
                    float3 directSpecular = float3(0,0,0);
                #else
                    float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow);
                #endif
                float3 specular = directSpecular * specularColor;
                #ifndef LIGHTMAP_OFF
                    #ifndef DIRLIGHTMAP_OFF
                        specular *= lightmap;
                    #else
                        specular *= (floor(attenuation) * _LightColor0.xyz);
                    #endif
                #else
                    specular *= (floor(attenuation) * _LightColor0.xyz);
                #endif
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 indirectDiffuse = float3(0,0,0);
                #ifndef LIGHTMAP_OFF
                    float3 directDiffuse = float3(0,0,0);
                #else
                    float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                #endif
                #ifndef LIGHTMAP_OFF
                    #ifdef SHADOWS_SCREEN
                        #if (defined(SHADER_API_GLES) || defined(SHADER_API_GLES3)) && defined(SHADER_API_MOBILE)
                            directDiffuse += min(lightmap.rgb, attenuation);
                        #else
                            directDiffuse += max(min(lightmap.rgb,attenuation*lmtex.rgb), lightmap.rgb*attenuation*0.5);
                        #endif
                    #else
                        directDiffuse += lightmap.rgb;
                    #endif
                #endif
                #if SHOULD_SAMPLE_SH_PROBE
                    indirectDiffuse += i.shLight; // Per-Vertex Light Probes / Spherical harmonics
                #endif
                float4 _TopTexture_var = tex2D(_TopTexture,TRANSFORM_TEX(i.uv0, _TopTexture));
                float4 node_8780 = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_2509 = saturate(pow(saturate((pow(_OcclusionMap_var.a,_AOBlendPower)/(_TopBottomPower*saturate(( _TopBottomLevel > 0.5 ? (1.0-(1.0-2.0*(_TopBottomLevel-0.5))*(1.0-i.normalDir.g)) : (2.0*_TopBottomLevel*i.normalDir.g) ))))),_TopBottomPower));
                float3 diffuse = (directDiffuse + indirectDiffuse) * lerp((_UpColor.rgb*_TopTexture_var.rgb),(node_8780.rgb*_Color.rgb),node_2509);
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ForwardAdd"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            Fog { Color (0,0,0,0) }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH_PROBE ( defined (LIGHTMAP_OFF) )
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Color;
            uniform sampler2D _OcclusionMap; uniform float4 _OcclusionMap_ST;
            uniform float _SpecularPower;
            uniform float _Shininess;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _TopBottomLevel;
            uniform float4 _UpColor;
            uniform float _TopBottomPower;
            uniform float _AOBlendPower;
            uniform sampler2D _TopTexture; uniform float4 _TopTexture_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 node_9374 = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 normalLocal = node_9374.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float4 _OcclusionMap_var = tex2D(_OcclusionMap,TRANSFORM_TEX(i.uv0, _OcclusionMap));
                float gloss = (_Shininess*_OcclusionMap_var.a);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float node_5737 = (_OcclusionMap_var.a*_SpecularPower*0.5);
                float3 specularColor = float3(node_5737,node_5737,node_5737);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow);
                float3 specular = directSpecular * specularColor;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _TopTexture_var = tex2D(_TopTexture,TRANSFORM_TEX(i.uv0, _TopTexture));
                float4 node_8780 = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_2509 = saturate(pow(saturate((pow(_OcclusionMap_var.a,_AOBlendPower)/(_TopBottomPower*saturate(( _TopBottomLevel > 0.5 ? (1.0-(1.0-2.0*(_TopBottomLevel-0.5))*(1.0-i.normalDir.g)) : (2.0*_TopBottomLevel*i.normalDir.g) ))))),_TopBottomPower));
                float3 diffuse = directDiffuse * lerp((_UpColor.rgb*_TopTexture_var.rgb),(node_8780.rgb*_Color.rgb),node_2509);
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
