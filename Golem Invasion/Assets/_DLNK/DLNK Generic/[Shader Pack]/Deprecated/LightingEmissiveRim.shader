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
/*SF_DATA;ver:0.34;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:True,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,blpr:0,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:32569,y:33249|diff-3-RGB,spec-77-OUT,gloss-29-OUT,normal-36-RGB,emission-96-OUT;n:type:ShaderForge.SFN_Tex2d,id:3,x:33307,y:32478,ptlb:DiffuseA,ptin:_DiffuseA,tex:d8766a4977f74f34db15ee35d1b305dc,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5,x:33377,y:32758,ptlb:Specular Map,ptin:_SpecularMap,tex:3ac616919e16f50499698e8fdefa52db,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:29,x:33217,y:33135,ptlb:Gloss,ptin:_Gloss,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Multiply,id:31,x:33112,y:32753|A-5-A,B-33-OUT;n:type:ShaderForge.SFN_Slider,id:33,x:33341,y:32978,ptlb:Specular Level,ptin:_SpecularLevel,min:0,cur:1.710526,max:5;n:type:ShaderForge.SFN_Tex2d,id:36,x:33582,y:33210,ptlb:Normal,ptin:_Normal,tex:8b8f5b3fc7b246246b0e2705ce29b2f9,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:39,x:33462,y:33566,ptlb:Emissive,ptin:_Emissive,tex:01595347170945e49ba54a6a47165773,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:40,x:33462,y:33741,ptlb:Emissive Tint,ptin:_EmissiveTint,glob:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:41,x:32909,y:33586|A-64-OUT,B-40-RGB;n:type:ShaderForge.SFN_Multiply,id:42,x:33262,y:33472|A-39-A,B-43-OUT;n:type:ShaderForge.SFN_Slider,id:43,x:33653,y:33592,ptlb:Emissive Mult,ptin:_EmissiveMult,min:0,cur:1.122554,max:5;n:type:ShaderForge.SFN_Fresnel,id:45,x:33200,y:33777|EXP-47-OUT;n:type:ShaderForge.SFN_Slider,id:47,x:33297,y:33935,ptlb:Fresnel Exp,ptin:_FresnelExp,min:0,cur:1,max:5;n:type:ShaderForge.SFN_SwitchProperty,id:56,x:32879,y:33788,ptlb:Fresnel On,ptin:_FresnelOn,on:True|A-57-OUT,B-41-OUT;n:type:ShaderForge.SFN_Multiply,id:57,x:33109,y:33640|A-42-OUT,B-40-RGB;n:type:ShaderForge.SFN_Blend,id:64,x:33074,y:33415,blmd:2,clmp:True|SRC-42-OUT,DST-45-OUT;n:type:ShaderForge.SFN_Multiply,id:77,x:32962,y:32910|A-31-OUT,B-80-RGB;n:type:ShaderForge.SFN_Color,id:80,x:33145,y:32910,ptlb:SpecularTint,ptin:_SpecularTint,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:93,x:32619,y:33851|A-56-OUT,B-131-OUT;n:type:ShaderForge.SFN_Sin,id:94,x:32879,y:33971|IN-108-OUT;n:type:ShaderForge.SFN_ValueProperty,id:95,x:33118,y:33935,ptlb:Tilt Time,ptin:_TiltTime,glob:False,v1:2;n:type:ShaderForge.SFN_SwitchProperty,id:96,x:32645,y:33684,ptlb:Tilt Emissive,ptin:_TiltEmissive,on:True|A-56-OUT,B-93-OUT;n:type:ShaderForge.SFN_Time,id:102,x:33196,y:34039;n:type:ShaderForge.SFN_Multiply,id:108,x:33022,y:34039|A-95-OUT,B-102-T;n:type:ShaderForge.SFN_Slider,id:124,x:32459,y:34209,ptlb:Range Min,ptin:_RangeMin,min:0,cur:1.428571,max:3;n:type:ShaderForge.SFN_Blend,id:131,x:32570,y:34010,blmd:3,clmp:True|SRC-194-OUT,DST-124-OUT;n:type:ShaderForge.SFN_Vector1,id:149,x:33055,y:34192,v1:1;n:type:ShaderForge.SFN_Add,id:187,x:32879,y:34129|A-94-OUT,B-149-OUT;n:type:ShaderForge.SFN_Multiply,id:194,x:32800,y:34296|A-187-OUT,B-220-OUT;n:type:ShaderForge.SFN_ValueProperty,id:220,x:33022,y:34326,ptlb:Range Tilt,ptin:_RangeTilt,glob:False,v1:0.5;proporder:3-36-5-80-33-29-39-40-43-47-56-96-95-220-124;pass:END;sub:END;*/

Shader "DLNK/Animated/EmissiveRimFade" {
    Properties {
        _DiffuseA ("DiffuseA", 2D) = "white" {}
        _Normal ("Normal", 2D) = "bump" {}
        _SpecularMap ("Specular Map", 2D) = "white" {}
        _SpecularTint ("SpecularTint", Color) = (0.5,0.5,0.5,1)
        _SpecularLevel ("Specular Level", Range(0, 5)) = 1.710526
        _Gloss ("Gloss", Range(0, 1)) = 0.5
        _Emissive ("Emissive", 2D) = "white" {}
        _EmissiveTint ("Emissive Tint", Color) = (1,1,1,1)
        _EmissiveMult ("Emissive Mult", Range(0, 5)) = 1.122554
        _FresnelExp ("Fresnel Exp", Range(0, 5)) = 1
        [MaterialToggle] _FresnelOn ("Fresnel On", Float ) = 0
        [MaterialToggle] _TiltEmissive ("Tilt Emissive", Float ) = 0
        _TiltTime ("Tilt Time", Float ) = 2
        _RangeTilt ("Range Tilt", Float ) = 0.5
        _RangeMin ("Range Min", Range(0, 3)) = 1.428571
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
            uniform float4 _TimeEditor;
            #ifndef LIGHTMAP_OFF
                // float4 unity_LightmapST;
                // sampler2D unity_Lightmap;
                #ifndef DIRLIGHTMAP_OFF
                    // sampler2D unity_LightmapInd;
                #endif
            #endif
            uniform sampler2D _DiffuseA; uniform float4 _DiffuseA_ST;
            uniform sampler2D _SpecularMap; uniform float4 _SpecularMap_ST;
            uniform float _Gloss;
            uniform float _SpecularLevel;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _Emissive; uniform float4 _Emissive_ST;
            uniform float4 _EmissiveTint;
            uniform float _EmissiveMult;
            uniform float _FresnelExp;
            uniform fixed _FresnelOn;
            uniform float4 _SpecularTint;
            uniform float _TiltTime;
            uniform fixed _TiltEmissive;
            uniform float _RangeMin;
            uniform float _RangeTilt;
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
                float2 node_435 = i.uv0;
                float3 normalLocal = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_435.rg, _Normal))).rgb;
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
////// Emissive:
                float node_42 = (tex2D(_Emissive,TRANSFORM_TEX(node_435.rg, _Emissive)).a*_EmissiveMult);
                float3 node_56 = lerp( (node_42*_EmissiveTint.rgb), (saturate((1.0-((1.0-pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelExp))/node_42)))*_EmissiveTint.rgb), _FresnelOn );
                float4 node_102 = _Time + _TimeEditor;
                float3 emissive = lerp( node_56, (node_56*saturate((((sin((_TiltTime*node_102.g))+1.0)*_RangeTilt)+_RangeMin-1.0))), _TiltEmissive );
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float3 specularColor = ((tex2D(_SpecularMap,TRANSFORM_TEX(node_435.rg, _SpecularMap)).a*_SpecularLevel)*_SpecularTint.rgb);
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
                finalColor += diffuseLight * tex2D(_DiffuseA,TRANSFORM_TEX(node_435.rg, _DiffuseA)).rgb;
                finalColor += specular;
                finalColor += emissive;
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
            uniform float4 _TimeEditor;
            #ifndef LIGHTMAP_OFF
                // float4 unity_LightmapST;
                // sampler2D unity_Lightmap;
                #ifndef DIRLIGHTMAP_OFF
                    // sampler2D unity_LightmapInd;
                #endif
            #endif
            uniform sampler2D _DiffuseA; uniform float4 _DiffuseA_ST;
            uniform sampler2D _SpecularMap; uniform float4 _SpecularMap_ST;
            uniform float _Gloss;
            uniform float _SpecularLevel;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _Emissive; uniform float4 _Emissive_ST;
            uniform float4 _EmissiveTint;
            uniform float _EmissiveMult;
            uniform float _FresnelExp;
            uniform fixed _FresnelOn;
            uniform float4 _SpecularTint;
            uniform float _TiltTime;
            uniform fixed _TiltEmissive;
            uniform float _RangeMin;
            uniform float _RangeTilt;
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
                float2 node_436 = i.uv0;
                float3 normalLocal = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_436.rg, _Normal))).rgb;
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
                float3 specularColor = ((tex2D(_SpecularMap,TRANSFORM_TEX(node_436.rg, _SpecularMap)).a*_SpecularLevel)*_SpecularTint.rgb);
                float3 specular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                finalColor += diffuseLight * tex2D(_DiffuseA,TRANSFORM_TEX(node_436.rg, _DiffuseA)).rgb;
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
