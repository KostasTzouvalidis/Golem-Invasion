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
/*SF_DATA;ver:0.36;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:True,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.4788062,fgcg:0.6402428,fgcb:0.9044118,fgca:1,fgde:0.02,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:32603,y:32867|diff-2-OUT,spec-17-OUT,gloss-25-OUT,normal-32-OUT,transm-69-OUT,lwrap-69-OUT,amdfl-51-OUT;n:type:ShaderForge.SFN_Lerp,id:2,x:33100,y:32583|A-4-RGB,B-11-OUT,T-3-OUT;n:type:ShaderForge.SFN_Slider,id:3,x:33275,y:32751,ptlb:Texture Power,ptin:_TexturePower,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Color,id:4,x:33275,y:32423,ptlb:Color Tint,ptin:_ColorTint,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5,x:33441,y:32583,ptlb:Diffuse,ptin:_Diffuse,tex:24364238dbb853b468186eb586e7e426,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:11,x:33275,y:32583|A-5-RGB,B-4-RGB;n:type:ShaderForge.SFN_Multiply,id:17,x:33353,y:32835|A-18-A,B-19-OUT;n:type:ShaderForge.SFN_Tex2d,id:18,x:33549,y:32799,ptlb:Specular Map,ptin:_SpecularMap,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:19,x:33549,y:32974,ptlb:Specular Level,ptin:_SpecularLevel,glob:False,v1:1;n:type:ShaderForge.SFN_Slider,id:25,x:33032,y:32847,ptlb:Gloss,ptin:_Gloss,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_Tex2d,id:31,x:33834,y:32919,ptlb:Normal Map,ptin:_NormalMap,tex:531c14f8d5cdc4e5baa83ee6e16f783a,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:32,x:33643,y:33061|A-31-RGB,B-33-OUT,T-35-OUT;n:type:ShaderForge.SFN_Vector3,id:33,x:33834,y:33079,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_ValueProperty,id:35,x:33834,y:33197,ptlb:Normal Smooth,ptin:_NormalSmooth,glob:False,v1:0;n:type:ShaderForge.SFN_Lerp,id:51,x:33157,y:33252|A-52-RGB,B-94-OUT,T-54-OUT;n:type:ShaderForge.SFN_AmbientLight,id:52,x:33360,y:33154;n:type:ShaderForge.SFN_Slider,id:54,x:33317,y:33466,ptlb:Scene/Custom Ambient,ptin:_SceneCustomAmbient,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:65,x:33795,y:33339|A-67-RGB,B-66-OUT;n:type:ShaderForge.SFN_Fresnel,id:66,x:33930,y:33430|EXP-80-OUT;n:type:ShaderForge.SFN_Color,id:67,x:33964,y:33258,ptlb:Trans Color,ptin:_TransColor,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:68,x:33767,y:33542,ptlb:Trans Power,ptin:_TransPower,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:69,x:33620,y:33374|A-65-OUT,B-68-OUT;n:type:ShaderForge.SFN_ValueProperty,id:80,x:34102,y:33367,ptlb:Trans Fresnel,ptin:_TransFresnel,glob:False,v1:2;n:type:ShaderForge.SFN_Tex2d,id:92,x:33359,y:33612,ptlb:Custom Ambient,ptin:_CustomAmbient,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:93,x:33575,y:33629,ptlb:Ambient Color,ptin:_AmbientColor,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:94,x:33155,y:33662|A-93-RGB,B-92-RGB;proporder:4-3-5-18-19-25-31-35-54-92-93-67-68-80;pass:END;sub:END;*/

Shader "DLNK/Special/SSSFake" {
    Properties {
        _ColorTint ("Color Tint", Color) = (0.5,0.5,0.5,1)
        _TexturePower ("Texture Power", Range(0, 1)) = 1
        _Diffuse ("Diffuse", 2D) = "white" {}
        _SpecularMap ("Specular Map", 2D) = "white" {}
        _SpecularLevel ("Specular Level", Float ) = 1
        _Gloss ("Gloss", Range(0, 1)) = 0.2
        _NormalMap ("Normal Map", 2D) = "bump" {}
        _NormalSmooth ("Normal Smooth", Float ) = 0
        _SceneCustomAmbient ("Scene/Custom Ambient", Range(0, 1)) = 1
        _CustomAmbient ("Custom Ambient", 2D) = "white" {}
        _AmbientColor ("Ambient Color", Color) = (0.5,0.5,0.5,1)
        _TransColor ("Trans Color", Color) = (0.5,0.5,0.5,1)
        _TransPower ("Trans Power", Float ) = 1
        _TransFresnel ("Trans Fresnel", Float ) = 2
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
            uniform float _TexturePower;
            uniform float4 _ColorTint;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _SpecularMap; uniform float4 _SpecularMap_ST;
            uniform float _SpecularLevel;
            uniform float _Gloss;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _NormalSmooth;
            uniform float _SceneCustomAmbient;
            uniform float4 _TransColor;
            uniform float _TransPower;
            uniform float _TransFresnel;
            uniform sampler2D _CustomAmbient; uniform float4 _CustomAmbient_ST;
            uniform float4 _AmbientColor;
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
                float2 node_1035 = i.uv0;
                float3 normalLocal = lerp(UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_1035.rg, _NormalMap))).rgb,float3(0,0,1),_NormalSmooth);
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
                float3 node_69 = ((_TransColor.rgb*pow(1.0-max(0,dot(normalDirection, viewDirection)),_TransFresnel))*_TransPower);
                float3 w = node_69*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 backLight = max(float3(0.0,0.0,0.0), -NdotLWrap + w ) * node_69;
                #ifndef LIGHTMAP_OFF
                    float3 diffuse = lightmap.rgb;
                #else
                    float3 diffuse = (forwardLight+backLight) * attenColor + UNITY_LIGHTMODEL_AMBIENT.rgb;
                #endif
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float node_17 = (tex2D(_SpecularMap,TRANSFORM_TEX(node_1035.rg, _SpecularMap)).a*_SpecularLevel);
                float3 specularColor = float3(node_17,node_17,node_17);
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
                diffuseLight += lerp(UNITY_LIGHTMODEL_AMBIENT.rgb,(_AmbientColor.rgb*tex2D(_CustomAmbient,TRANSFORM_TEX(node_1035.rg, _CustomAmbient)).rgb),_SceneCustomAmbient); // Diffuse Ambient Light
                finalColor += diffuseLight * lerp(_ColorTint.rgb,(tex2D(_Diffuse,TRANSFORM_TEX(node_1035.rg, _Diffuse)).rgb*_ColorTint.rgb),_TexturePower);
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
            uniform float _TexturePower;
            uniform float4 _ColorTint;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _SpecularMap; uniform float4 _SpecularMap_ST;
            uniform float _SpecularLevel;
            uniform float _Gloss;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _NormalSmooth;
            uniform float4 _TransColor;
            uniform float _TransPower;
            uniform float _TransFresnel;
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
                float2 node_1036 = i.uv0;
                float3 normalLocal = lerp(UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_1036.rg, _NormalMap))).rgb,float3(0,0,1),_NormalSmooth);
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 node_69 = ((_TransColor.rgb*pow(1.0-max(0,dot(normalDirection, viewDirection)),_TransFresnel))*_TransPower);
                float3 w = node_69*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 backLight = max(float3(0.0,0.0,0.0), -NdotLWrap + w ) * node_69;
                float3 diffuse = (forwardLight+backLight) * attenColor;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float node_17 = (tex2D(_SpecularMap,TRANSFORM_TEX(node_1036.rg, _SpecularMap)).a*_SpecularLevel);
                float3 specularColor = float3(node_17,node_17,node_17);
                float3 specular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                finalColor += diffuseLight * lerp(_ColorTint.rgb,(tex2D(_Diffuse,TRANSFORM_TEX(node_1036.rg, _Diffuse)).rgb*_ColorTint.rgb),_TexturePower);
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
