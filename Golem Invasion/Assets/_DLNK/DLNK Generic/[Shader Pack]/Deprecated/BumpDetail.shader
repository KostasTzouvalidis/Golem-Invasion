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
/*SF_DATA;ver:0.34;sub:START;pass:START;ps:flbk:Bumped Specular,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:True,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,blpr:0,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:32426,y:33135|diff-4-OUT,spec-77-OUT,gloss-266-OUT,normal-43-OUT;n:type:ShaderForge.SFN_Tex2d,id:2,x:33233,y:32634,ptlb:Difuse Main,ptin:_DifuseMain,tex:523a5471de7b9b3459fac5b88b30e36e,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:3,x:33179,y:32795,ptlb:Color Tint,ptin:_ColorTint,glob:False,c1:0.6323529,c2:0.6323529,c3:0.6323529,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:4,x:32826,y:32722,ptlb:UseTint,ptin:_UseTint,on:True|A-33-OUT,B-6-OUT;n:type:ShaderForge.SFN_Multiply,id:6,x:33012,y:32802|A-3-RGB,B-33-OUT;n:type:ShaderForge.SFN_Blend,id:33,x:33023,y:32634,blmd:1,clmp:True|SRC-35-RGB,DST-2-RGB;n:type:ShaderForge.SFN_Tex2d,id:35,x:33179,y:32431,ptlb:Difuse Detail,ptin:_DifuseDetail,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False|UVIN-54-OUT;n:type:ShaderForge.SFN_Tex2d,id:41,x:33148,y:33062,ptlb:Normal Main,ptin:_NormalMain,tex:643a27832d73f5245bbd785e166d8af5,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:42,x:33149,y:33232,ptlb:Normal Detail,ptin:_NormalDetail,tex:cddd45a79ece8ef42827b38dc52531da,ntxv:3,isnm:True|UVIN-54-OUT;n:type:ShaderForge.SFN_NormalBlend,id:43,x:32927,y:33182|BSE-41-RGB,DTL-42-RGB;n:type:ShaderForge.SFN_Multiply,id:54,x:33417,y:32976|A-55-OUT,B-56-UVOUT;n:type:ShaderForge.SFN_ValueProperty,id:55,x:33602,y:32915,ptlb:Detail Tiling,ptin:_DetailTiling,glob:False,v1:3;n:type:ShaderForge.SFN_TexCoord,id:56,x:33599,y:33027,uv:0;n:type:ShaderForge.SFN_Tex2d,id:68,x:33376,y:33411,ptlb:Specular Map,ptin:_SpecularMap,tex:2a1987d5c345c33458a30aaf6379ca6e,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:69,x:33359,y:33580,ptlb:Specular Color,ptin:_SpecularColor,glob:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:70,x:33359,y:33260|A-35-A,B-68-A;n:type:ShaderForge.SFN_SwitchProperty,id:71,x:33169,y:33487,ptlb:Detail Spec,ptin:_DetailSpec,on:True|A-68-A,B-70-OUT;n:type:ShaderForge.SFN_Multiply,id:74,x:32994,y:33487|A-71-OUT,B-69-RGB;n:type:ShaderForge.SFN_ValueProperty,id:76,x:32994,y:33645,ptlb:Specular Level,ptin:_SpecularLevel,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:77,x:32796,y:33451|A-74-OUT,B-76-OUT;n:type:ShaderForge.SFN_ValueProperty,id:266,x:32842,y:33113,ptlb:Gloss,ptin:_Gloss,glob:False,v1:0.5;proporder:2-3-4-35-41-42-55-68-69-71-76-266;pass:END;sub:END;*/

Shader "DLNK/Basic/BumpDetail" {
    Properties {
        _DifuseMain ("Difuse Main", 2D) = "white" {}
        _ColorTint ("Color Tint", Color) = (0.6323529,0.6323529,0.6323529,1)
        [MaterialToggle] _UseTint ("UseTint", Float ) = 0.1925504
        _DifuseDetail ("Difuse Detail", 2D) = "white" {}
        _NormalMain ("Normal Main", 2D) = "bump" {}
        _NormalDetail ("Normal Detail", 2D) = "bump" {}
        _DetailTiling ("Detail Tiling", Float ) = 3
        _SpecularMap ("Specular Map", 2D) = "white" {}
        _SpecularColor ("Specular Color", Color) = (1,1,1,1)
        [MaterialToggle] _DetailSpec ("Detail Spec", Float ) = 0.122353
        _SpecularLevel ("Specular Level", Float ) = 1
        _Gloss ("Gloss", Float ) = 0.5
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
            uniform sampler2D _DifuseMain; uniform float4 _DifuseMain_ST;
            uniform float4 _ColorTint;
            uniform fixed _UseTint;
            uniform sampler2D _DifuseDetail; uniform float4 _DifuseDetail_ST;
            uniform sampler2D _NormalMain; uniform float4 _NormalMain_ST;
            uniform sampler2D _NormalDetail; uniform float4 _NormalDetail_ST;
            uniform float _DetailTiling;
            uniform sampler2D _SpecularMap; uniform float4 _SpecularMap_ST;
            uniform float4 _SpecularColor;
            uniform fixed _DetailSpec;
            uniform float _SpecularLevel;
            uniform float _Gloss;
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
                float2 node_282 = i.uv0;
                float2 node_54 = (_DetailTiling*i.uv0.rg);
                float3 node_43_nrm_base = UnpackNormal(tex2D(_NormalMain,TRANSFORM_TEX(node_282.rg, _NormalMain))).rgb + float3(0,0,1);
                float3 node_43_nrm_detail = UnpackNormal(tex2D(_NormalDetail,TRANSFORM_TEX(node_54, _NormalDetail))).rgb * float3(-1,-1,1);
                float3 node_43_nrm_combined = node_43_nrm_base*dot(node_43_nrm_base, node_43_nrm_detail)/node_43_nrm_base.z - node_43_nrm_detail;
                float3 node_43 = node_43_nrm_combined;
                float3 normalLocal = node_43;
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
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float4 node_68 = tex2D(_SpecularMap,TRANSFORM_TEX(node_282.rg, _SpecularMap));
                float4 node_35 = tex2D(_DifuseDetail,TRANSFORM_TEX(node_54, _DifuseDetail));
                float3 specularColor = ((lerp( node_68.a, (node_35.a*node_68.a), _DetailSpec )*_SpecularColor.rgb)*_SpecularLevel);
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
                float3 node_33 = saturate((node_35.rgb*tex2D(_DifuseMain,TRANSFORM_TEX(node_282.rg, _DifuseMain)).rgb));
                finalColor += diffuseLight * lerp( node_33, (_ColorTint.rgb*node_33), _UseTint );
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
            uniform sampler2D _DifuseMain; uniform float4 _DifuseMain_ST;
            uniform float4 _ColorTint;
            uniform fixed _UseTint;
            uniform sampler2D _DifuseDetail; uniform float4 _DifuseDetail_ST;
            uniform sampler2D _NormalMain; uniform float4 _NormalMain_ST;
            uniform sampler2D _NormalDetail; uniform float4 _NormalDetail_ST;
            uniform float _DetailTiling;
            uniform sampler2D _SpecularMap; uniform float4 _SpecularMap_ST;
            uniform float4 _SpecularColor;
            uniform fixed _DetailSpec;
            uniform float _SpecularLevel;
            uniform float _Gloss;
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
                float2 node_283 = i.uv0;
                float2 node_54 = (_DetailTiling*i.uv0.rg);
                float3 node_43_nrm_base = UnpackNormal(tex2D(_NormalMain,TRANSFORM_TEX(node_283.rg, _NormalMain))).rgb + float3(0,0,1);
                float3 node_43_nrm_detail = UnpackNormal(tex2D(_NormalDetail,TRANSFORM_TEX(node_54, _NormalDetail))).rgb * float3(-1,-1,1);
                float3 node_43_nrm_combined = node_43_nrm_base*dot(node_43_nrm_base, node_43_nrm_detail)/node_43_nrm_base.z - node_43_nrm_detail;
                float3 node_43 = node_43_nrm_combined;
                float3 normalLocal = node_43;
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
                float4 node_68 = tex2D(_SpecularMap,TRANSFORM_TEX(node_283.rg, _SpecularMap));
                float4 node_35 = tex2D(_DifuseDetail,TRANSFORM_TEX(node_54, _DifuseDetail));
                float3 specularColor = ((lerp( node_68.a, (node_35.a*node_68.a), _DetailSpec )*_SpecularColor.rgb)*_SpecularLevel);
                float3 specular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                float3 node_33 = saturate((node_35.rgb*tex2D(_DifuseMain,TRANSFORM_TEX(node_283.rg, _DifuseMain)).rgb));
                finalColor += diffuseLight * lerp( node_33, (_ColorTint.rgb*node_33), _UseTint );
                finalColor += specular;
/// Final Color:
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Bumped Specular"
    CustomEditor "ShaderForgeMaterialInspector"
}
