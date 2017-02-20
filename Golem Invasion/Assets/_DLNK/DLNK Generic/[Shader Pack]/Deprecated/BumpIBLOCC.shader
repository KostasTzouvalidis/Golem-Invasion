// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'

// Upgrade NOTE: commented out 'float4 unity_LightmapST', a built-in variable
// Upgrade NOTE: commented out 'sampler2D unity_Lightmap', a built-in variable
// Upgrade NOTE: commented out 'sampler2D unity_LightmapInd', a built-in variable
// Upgrade NOTE: replaced tex2D unity_Lightmap with UNITY_SAMPLE_TEX2D
// Upgrade NOTE: replaced tex2D unity_LightmapInd with UNITY_SAMPLE_TEX2D_SAMPLER

// Shader created with Shader Forge Beta 0.34 
// Shader Forge (c) Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.34;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:False,mssp:True,lmpd:True,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,blpr:0,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:32377,y:32922|diff-38-OUT,spec-107-OUT,gloss-25-OUT,normal-56-OUT,amdfl-84-OUT;n:type:ShaderForge.SFN_Color,id:2,x:33260,y:32730,ptlb:Color Tint,ptin:_ColorTint,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:3,x:33260,y:32978,ptlb:Specular Map,ptin:_SpecularMap,tex:5533d6b5f2cbd6d499fa1dc0c34585f5,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4,x:33260,y:32550,ptlb:Diffuse Main,ptin:_DiffuseMain,tex:35b4aa6df2606eb4c9ee433ecb2979bb,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5,x:32295,y:32520,ptlb:Ambient Oclussion,ptin:_AmbientOclussion,tex:8974c7b8aacdfdb41b7a98e5235e24a1,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:6,x:32112,y:32537|A-7-OUT,B-5-A,T-8-OUT;n:type:ShaderForge.SFN_Vector1,id:7,x:32295,y:32449,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:8,x:32295,y:32692,ptlb:Oclussion Power,ptin:_OclussionPower,glob:False,v1:1;n:type:ShaderForge.SFN_Lerp,id:9,x:33077,y:32978|A-3-A,B-10-OUT,T-11-OUT;n:type:ShaderForge.SFN_Vector1,id:10,x:33260,y:32901,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:11,x:33260,y:33159,ptlb:Specular Smooth,ptin:_SpecularSmooth,glob:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:17,x:32904,y:32978|A-9-OUT,B-19-OUT;n:type:ShaderForge.SFN_ValueProperty,id:19,x:33095,y:33159,ptlb:Specular Level,ptin:_SpecularLevel,glob:False,v1:1;n:type:ShaderForge.SFN_Slider,id:25,x:33095,y:33256,ptlb:Gloss,ptin:_Gloss,min:0,cur:0,max:1;n:type:ShaderForge.SFN_ValueProperty,id:33,x:32295,y:32763,ptlb:Oclussion Smooth,ptin:_OclussionSmooth,glob:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:34,x:33086,y:32550|A-35-OUT,B-4-RGB;n:type:ShaderForge.SFN_SwitchProperty,id:35,x:32112,y:32828,ptlb:Enable AO,ptin:_EnableAO,on:True|A-37-OUT,B-131-OUT;n:type:ShaderForge.SFN_Vector1,id:37,x:32295,y:32828,v1:1;n:type:ShaderForge.SFN_Multiply,id:38,x:33086,y:32730|A-34-OUT,B-2-RGB;n:type:ShaderForge.SFN_Multiply,id:50,x:32904,y:33102|A-17-OUT,B-35-OUT;n:type:ShaderForge.SFN_Lerp,id:56,x:33616,y:32754|A-58-RGB,B-57-OUT,T-59-OUT;n:type:ShaderForge.SFN_Vector3,id:57,x:33802,y:32918,v1:0,v2:0,v3:0.9;n:type:ShaderForge.SFN_Tex2d,id:58,x:33802,y:32754,ptlb:Normal Map,ptin:_NormalMap,tex:362d1bb7db063224b86700c3a7a6b8e4,ntxv:3,isnm:True;n:type:ShaderForge.SFN_ValueProperty,id:59,x:33802,y:33037,ptlb:Normal Power,ptin:_NormalPower,glob:False,v1:0;n:type:ShaderForge.SFN_Cubemap,id:65,x:33260,y:33460,ptlb:IBL,ptin:_IBL,cube:f466cf7415226e046b096197eb7341aa,pvfc:4;n:type:ShaderForge.SFN_AmbientLight,id:66,x:33268,y:33606;n:type:ShaderForge.SFN_Multiply,id:73,x:33118,y:33606|A-66-RGB,B-74-OUT;n:type:ShaderForge.SFN_Slider,id:74,x:33118,y:33779,ptlb:Scene AL,ptin:_SceneAL,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:75,x:32922,y:33529|A-77-OUT,B-73-OUT;n:type:ShaderForge.SFN_ValueProperty,id:76,x:33260,y:33372,ptlb:IBL Power,ptin:_IBLPower,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:77,x:33118,y:33470|A-76-OUT,B-65-RGB;n:type:ShaderForge.SFN_SwitchProperty,id:78,x:32922,y:33391,ptlb:Custom Ambient,ptin:_CustomAmbient,on:False|A-66-RGB,B-75-OUT;n:type:ShaderForge.SFN_Multiply,id:84,x:32751,y:33391|A-78-OUT,B-35-OUT;n:type:ShaderForge.SFN_Color,id:106,x:32904,y:32836,ptlb:Specular Tint,ptin:_SpecularTint,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:107,x:32727,y:32978|A-106-RGB,B-50-OUT;n:type:ShaderForge.SFN_Blend,id:131,x:32112,y:32658,blmd:5,clmp:True|SRC-6-OUT,DST-33-OUT;proporder:2-4-106-3-19-11-25-58-59-35-5-8-33-78-74-65-76;pass:END;sub:END;*/

Shader "DLNK/Basic/BumpIBLOCC" {
    Properties {
        _ColorTint ("Color Tint", Color) = (0.5,0.5,0.5,1)
        _DiffuseMain ("Diffuse Main", 2D) = "white" {}
        _SpecularTint ("Specular Tint", Color) = (0.5,0.5,0.5,1)
        _SpecularMap ("Specular Map", 2D) = "white" {}
        _SpecularLevel ("Specular Level", Float ) = 1
        _SpecularSmooth ("Specular Smooth", Float ) = 0
        _Gloss ("Gloss", Range(0, 1)) = 0
        _NormalMap ("Normal Map", 2D) = "bump" {}
        _NormalPower ("Normal Power", Float ) = 0
        [MaterialToggle] _EnableAO ("Enable AO", Float ) = 0.8627451
        _AmbientOclussion ("Ambient Oclussion", 2D) = "white" {}
        _OclussionPower ("Oclussion Power", Float ) = 1
        _OclussionSmooth ("Oclussion Smooth", Float ) = 0
        [MaterialToggle] _CustomAmbient ("Custom Ambient", Float ) = 0.09025621
        _SceneAL ("Scene AL", Range(0, 1)) = 0
        _IBL ("IBL", Cube) = "_Skybox" {}
        _IBLPower ("IBL Power", Float ) = 1
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
            uniform float4 _ColorTint;
            uniform sampler2D _SpecularMap; uniform float4 _SpecularMap_ST;
            uniform sampler2D _DiffuseMain; uniform float4 _DiffuseMain_ST;
            uniform sampler2D _AmbientOclussion; uniform float4 _AmbientOclussion_ST;
            uniform float _OclussionPower;
            uniform float _SpecularSmooth;
            uniform float _SpecularLevel;
            uniform float _Gloss;
            uniform float _OclussionSmooth;
            uniform fixed _EnableAO;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _NormalPower;
            uniform samplerCUBE _IBL;
            uniform float _SceneAL;
            uniform float _IBLPower;
            uniform fixed _CustomAmbient;
            uniform float4 _SpecularTint;
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
                float2 node_384 = i.uv0;
                float3 normalLocal = lerp(UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_384.rg, _NormalMap))).rgb,float3(0,0,0.9),_NormalPower);
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
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
                    float3 diffuse = max( 0.0, NdotL) * attenColor;
                #endif
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float node_35 = lerp( 1.0, saturate(max(lerp(0.0,tex2D(_AmbientOclussion,TRANSFORM_TEX(node_384.rg, _AmbientOclussion)).a,_OclussionPower),_OclussionSmooth)), _EnableAO );
                float3 specularColor = (_SpecularTint.rgb*((lerp(tex2D(_SpecularMap,TRANSFORM_TEX(node_384.rg, _SpecularMap)).a,1.0,_SpecularSmooth)*_SpecularLevel)*node_35));
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
                float4 node_66 = UNITY_LIGHTMODEL_AMBIENT;
                diffuseLight += (lerp( node_66.rgb, ((_IBLPower*texCUBE(_IBL,viewReflectDirection).rgb)+(node_66.rgb*_SceneAL)), _CustomAmbient )*node_35); // Diffuse Ambient Light
                finalColor += diffuseLight * ((node_35*tex2D(_DiffuseMain,TRANSFORM_TEX(node_384.rg, _DiffuseMain)).rgb)*_ColorTint.rgb);
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
            uniform float4 _ColorTint;
            uniform sampler2D _SpecularMap; uniform float4 _SpecularMap_ST;
            uniform sampler2D _DiffuseMain; uniform float4 _DiffuseMain_ST;
            uniform sampler2D _AmbientOclussion; uniform float4 _AmbientOclussion_ST;
            uniform float _OclussionPower;
            uniform float _SpecularSmooth;
            uniform float _SpecularLevel;
            uniform float _Gloss;
            uniform float _OclussionSmooth;
            uniform fixed _EnableAO;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _NormalPower;
            uniform float4 _SpecularTint;
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
                float2 node_385 = i.uv0;
                float3 normalLocal = lerp(UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_385.rg, _NormalMap))).rgb,float3(0,0,0.9),_NormalPower);
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
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float node_35 = lerp( 1.0, saturate(max(lerp(0.0,tex2D(_AmbientOclussion,TRANSFORM_TEX(node_385.rg, _AmbientOclussion)).a,_OclussionPower),_OclussionSmooth)), _EnableAO );
                float3 specularColor = (_SpecularTint.rgb*((lerp(tex2D(_SpecularMap,TRANSFORM_TEX(node_385.rg, _SpecularMap)).a,1.0,_SpecularSmooth)*_SpecularLevel)*node_35));
                float3 specular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                finalColor += diffuseLight * ((node_35*tex2D(_DiffuseMain,TRANSFORM_TEX(node_385.rg, _DiffuseMain)).rgb)*_ColorTint.rgb);
                finalColor += specular;
/// Final Color:
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
