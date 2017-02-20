// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'

// Upgrade NOTE: commented out 'float4 unity_LightmapST', a built-in variable
// Upgrade NOTE: commented out 'sampler2D unity_Lightmap', a built-in variable
// Upgrade NOTE: commented out 'sampler2D unity_LightmapInd', a built-in variable
// Upgrade NOTE: replaced tex2D unity_Lightmap with UNITY_SAMPLE_TEX2D
// Upgrade NOTE: replaced tex2D unity_LightmapInd with UNITY_SAMPLE_TEX2D_SAMPLER

// Shader created with Shader Forge Beta 0.36 
// Shader Forge (c) Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.36;sub:START;pass:START;ps:flbk:Parallax Specular,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:True,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.4788062,fgcg:0.6402428,fgcb:0.9044118,fgca:1,fgde:0.02,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:32682,y:32822|diff-12-OUT,spec-38-OUT,gloss-48-OUT,normal-14-OUT;n:type:ShaderForge.SFN_Multiply,id:2,x:33150,y:32487|A-6-RGB,B-4-RGB;n:type:ShaderForge.SFN_Tex2d,id:3,x:32419,y:32755,ptlb:Oclussion Map,ptin:_OclussionMap,tex:2d2e2dedca63f4c478a353f3dd676f24,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4,x:33365,y:32538,ptlb:Diffuse Map,ptin:_DiffuseMap,tex:d12b866fa50f9ca45b1d378389d1aab1,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5,x:33541,y:33108,ptlb:Specular Map,ptin:_SpecularMap,tex:7b6b4d4685c68b24db029314a5692dd7,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:6,x:33365,y:32379,ptlb:Color Tint,ptin:_ColorTint,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7,x:33582,y:32714,ptlb:Normal Map,ptin:_NormalMap,tex:83e6f7327321c9f4bae44d9454336823,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:8,x:32192,y:32820|A-9-OUT,B-3-A,T-10-OUT;n:type:ShaderForge.SFN_Vector1,id:9,x:32419,y:32913,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:10,x:32419,y:32988,ptlb:Oclussion Power,ptin:_OclussionPower,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:12,x:33150,y:32636|A-8-OUT,B-2-OUT;n:type:ShaderForge.SFN_Vector3,id:13,x:33582,y:32870,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Lerp,id:14,x:33379,y:32835|A-7-RGB,B-13-OUT,T-15-OUT;n:type:ShaderForge.SFN_ValueProperty,id:15,x:33582,y:32981,ptlb:Normal Smooth,ptin:_NormalSmooth,glob:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:16,x:33349,y:33138|A-5-A,B-18-OUT;n:type:ShaderForge.SFN_ValueProperty,id:18,x:33541,y:33290,ptlb:Specular Level,ptin:_SpecularLevel,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:38,x:33060,y:33147|A-8-OUT,B-72-OUT;n:type:ShaderForge.SFN_Slider,id:44,x:33212,y:32987,ptlb:Gloss,ptin:_Gloss,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_SwitchProperty,id:45,x:33049,y:32887,ptlb:Use Gloss Map,ptin:_UseGlossMap,on:False|A-47-OUT,B-46-A;n:type:ShaderForge.SFN_Tex2d,id:46,x:33201,y:32801,ptlb:Gloss Map,ptin:_GlossMap,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector1,id:47,x:33124,y:33057,v1:1;n:type:ShaderForge.SFN_Multiply,id:48,x:32962,y:33002|A-45-OUT,B-44-OUT;n:type:ShaderForge.SFN_Multiply,id:72,x:33214,y:33207|A-16-OUT,B-73-RGB;n:type:ShaderForge.SFN_Color,id:73,x:33744,y:33203,ptlb:Specular Color,ptin:_SpecularColor,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;proporder:6-4-7-15-73-5-18-44-45-46-3-10;pass:END;sub:END;*/

Shader "DLNK/Basic/BumpedOclussion" {
    Properties {
        _ColorTint ("Color Tint", Color) = (0.5,0.5,0.5,1)
        _DiffuseMap ("Diffuse Map", 2D) = "white" {}
        _NormalMap ("Normal Map", 2D) = "bump" {}
        _NormalSmooth ("Normal Smooth", Float ) = 0
        _SpecularColor ("Specular Color", Color) = (0.5,0.5,0.5,1)
        _SpecularMap ("Specular Map", 2D) = "white" {}
        _SpecularLevel ("Specular Level", Float ) = 1
        _Gloss ("Gloss", Range(0, 1)) = 0.2
        [MaterialToggle] _UseGlossMap ("Use Gloss Map", Float ) = 1
        _GlossMap ("Gloss Map", 2D) = "white" {}
        _OclussionMap ("Oclussion Map", 2D) = "white" {}
        _OclussionPower ("Oclussion Power", Float ) = 1
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
            uniform sampler2D _OclussionMap; uniform float4 _OclussionMap_ST;
            uniform sampler2D _DiffuseMap; uniform float4 _DiffuseMap_ST;
            uniform sampler2D _SpecularMap; uniform float4 _SpecularMap_ST;
            uniform float4 _ColorTint;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _OclussionPower;
            uniform float _NormalSmooth;
            uniform float _SpecularLevel;
            uniform float _Gloss;
            uniform fixed _UseGlossMap;
            uniform sampler2D _GlossMap; uniform float4 _GlossMap_ST;
            uniform float4 _SpecularColor;
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
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(float4(v.normal,0), unity_WorldToObject).xyz;
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
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
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
/////// Normals:
                float2 node_950 = i.uv0;
                float3 normalLocal = lerp(UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_950.rg, _NormalMap))).rgb,float3(0,0,1),_NormalSmooth);
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
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
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                #ifndef LIGHTMAP_OFF
                    float3 diffuse = lightmap.rgb;
                #else
                    float3 diffuse = max( 0.0, NdotL) * attenColor + UNITY_LIGHTMODEL_AMBIENT.rgb;
                #endif
///////// Gloss:
                float gloss = (lerp( 1.0, tex2D(_GlossMap,TRANSFORM_TEX(node_950.rg, _GlossMap)).a, _UseGlossMap )*_Gloss);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float node_8 = lerp(1.0,tex2D(_OclussionMap,TRANSFORM_TEX(node_950.rg, _OclussionMap)).a,_OclussionPower);
                float3 specularColor = (node_8*((tex2D(_SpecularMap,TRANSFORM_TEX(node_950.rg, _SpecularMap)).a*_SpecularLevel)*_SpecularColor.rgb));
                float3 specular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor;
                #ifndef LIGHTMAP_OFF
                    #ifndef DIRLIGHTMAP_OFF
                        specular *= lightmap;
                    #else
                        specular *= (floor(attenuation) * _LightColor0.xyz);
                    #endif
                #else
                    specular *= (floor(attenuation) * _LightColor0.xyz);
                #endif
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                finalColor += diffuseLight * (node_8*(_ColorTint.rgb*tex2D(_DiffuseMap,TRANSFORM_TEX(node_950.rg, _DiffuseMap)).rgb));
                finalColor += specular;
/// Final Color:
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
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            #ifndef LIGHTMAP_OFF
                // float4 unity_LightmapST;
                // sampler2D unity_Lightmap;
                #ifndef DIRLIGHTMAP_OFF
                    // sampler2D unity_LightmapInd;
                #endif
            #endif
            uniform sampler2D _OclussionMap; uniform float4 _OclussionMap_ST;
            uniform sampler2D _DiffuseMap; uniform float4 _DiffuseMap_ST;
            uniform sampler2D _SpecularMap; uniform float4 _SpecularMap_ST;
            uniform float4 _ColorTint;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _OclussionPower;
            uniform float _NormalSmooth;
            uniform float _SpecularLevel;
            uniform float _Gloss;
            uniform fixed _UseGlossMap;
            uniform sampler2D _GlossMap; uniform float4 _GlossMap_ST;
            uniform float4 _SpecularColor;
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
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(float4(v.normal,0), unity_WorldToObject).xyz;
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
/////// Normals:
                float2 node_951 = i.uv0;
                float3 normalLocal = lerp(UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_951.rg, _NormalMap))).rgb,float3(0,0,1),_NormalSmooth);
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 diffuse = max( 0.0, NdotL) * attenColor;
///////// Gloss:
                float gloss = (lerp( 1.0, tex2D(_GlossMap,TRANSFORM_TEX(node_951.rg, _GlossMap)).a, _UseGlossMap )*_Gloss);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float node_8 = lerp(1.0,tex2D(_OclussionMap,TRANSFORM_TEX(node_951.rg, _OclussionMap)).a,_OclussionPower);
                float3 specularColor = (node_8*((tex2D(_SpecularMap,TRANSFORM_TEX(node_951.rg, _SpecularMap)).a*_SpecularLevel)*_SpecularColor.rgb));
                float3 specular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                finalColor += diffuseLight * (node_8*(_ColorTint.rgb*tex2D(_DiffuseMap,TRANSFORM_TEX(node_951.rg, _DiffuseMap)).rgb));
                finalColor += specular;
/// Final Color:
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Parallax Specular"
    CustomEditor "ShaderForgeMaterialInspector"
}
