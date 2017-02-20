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
/*SF_DATA;ver:0.36;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:True,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:32387,y:32744|diff-679-OUT,diffpow-420-OUT,spec-98-OUT,gloss-212-OUT,normal-155-OUT,emission-14-OUT;n:type:ShaderForge.SFN_Tex2d,id:2,x:33046,y:32346,ptlb:Difuse Main,ptin:_DifuseMain,tex:6a7478be2212563489443cb89a4ca1b0,ntxv:0,isnm:False|UVIN-629-OUT;n:type:ShaderForge.SFN_Color,id:4,x:33047,y:32511,ptlb:Color Tint ,ptin:_ColorTint,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5,x:31855,y:32974,ptlb:Oclussion,ptin:_Oclussion,tex:3bae484a9bfc62445a7416d42cd86b35,ntxv:2,isnm:False|UVIN-629-OUT,MIP-6-OUT;n:type:ShaderForge.SFN_Slider,id:6,x:32304,y:33294,ptlb:Oclussion Fade,ptin:_OclussionFade,min:0,cur:1.090226,max:5;n:type:ShaderForge.SFN_Tex2d,id:7,x:33290,y:32801,ptlb:Specular Map,ptin:_SpecularMap,tex:42f1397940386f248a3920e0db0b02bd,ntxv:1,isnm:False|UVIN-629-OUT;n:type:ShaderForge.SFN_Slider,id:8,x:32721,y:33037,ptlb:Specular Level,ptin:_SpecularLevel,min:0,cur:1.729252,max:5;n:type:ShaderForge.SFN_Color,id:9,x:33492,y:32801,ptlb:Specular Tint,ptin:_SpecularTint,glob:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Fresnel,id:13,x:33188,y:33554|EXP-107-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:14,x:32677,y:33198,ptlb:Rim On,ptin:_RimOn,on:True|A-344-OUT,B-108-OUT;n:type:ShaderForge.SFN_Parallax,id:15,x:33448,y:33170|UVIN-18-OUT,HEI-21-A,DEP-25-OUT;n:type:ShaderForge.SFN_TexCoord,id:16,x:33852,y:33176,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:17,x:33838,y:33384,ptlb:Master Tile,ptin:_MasterTile,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:18,x:33693,y:33257|A-16-UVOUT,B-17-OUT;n:type:ShaderForge.SFN_Tex2d,id:21,x:33575,y:32936,tex:3bae484a9bfc62445a7416d42cd86b35,ntxv:0,isnm:False|TEX-22-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:22,x:33773,y:32919,ptlb:Height Map,ptin:_HeightMap,glob:False,tex:3bae484a9bfc62445a7416d42cd86b35;n:type:ShaderForge.SFN_ValueProperty,id:25,x:33546,y:33346,ptlb:Height Power,ptin:_HeightPower,glob:False,v1:0.1;n:type:ShaderForge.SFN_Multiply,id:32,x:33115,y:32781|A-7-A,B-9-RGB;n:type:ShaderForge.SFN_Blend,id:40,x:33031,y:33011,blmd:1,clmp:True|SRC-42-OUT,DST-32-OUT;n:type:ShaderForge.SFN_Blend,id:42,x:32177,y:32760,blmd:5,clmp:True|SRC-741-OUT,DST-806-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:45,x:32913,y:32825,ptlb:Specular AO,ptin:_SpecularAO,on:False|A-32-OUT,B-40-OUT;n:type:ShaderForge.SFN_Multiply,id:79,x:32846,y:32448|A-2-RGB,B-4-RGB;n:type:ShaderForge.SFN_Color,id:97,x:32758,y:33717,ptlb:Rim Color,ptin:_RimColor,glob:False,c1:0.5220588,c2:0.5220588,c3:0.5220588,c4:1;n:type:ShaderForge.SFN_Multiply,id:98,x:32645,y:32853|A-690-OUT,B-8-OUT;n:type:ShaderForge.SFN_Slider,id:107,x:33341,y:33604,ptlb:Rim Fresnel,ptin:_RimFresnel,min:0,cur:3,max:6;n:type:ShaderForge.SFN_Multiply,id:108,x:32596,y:33530|A-247-OUT,B-97-RGB;n:type:ShaderForge.SFN_Multiply,id:115,x:33209,y:33348|A-13-OUT,B-42-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:116,x:33018,y:33380,ptlb:Rim AO,ptin:_RimAO,on:False|A-13-OUT,B-115-OUT;n:type:ShaderForge.SFN_Tex2d,id:122,x:33226,y:32056,ptlb:Diffuse Detail,ptin:_DiffuseDetail,tex:60bb95d2244d5d04993a9d07b4e2ad66,ntxv:0,isnm:False|UVIN-629-OUT;n:type:ShaderForge.SFN_Blend,id:125,x:32846,y:32214,blmd:10,clmp:True|SRC-128-OUT,DST-79-OUT;n:type:ShaderForge.SFN_Slider,id:127,x:33191,y:32246,ptlb:Detail Power,ptin:_DetailPower,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Blend,id:128,x:33046,y:32131,blmd:10,clmp:True|SRC-122-RGB,DST-127-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:129,x:32668,y:32360,ptlb:Color Detail,ptin:_ColorDetail,on:False|A-79-OUT,B-125-OUT;n:type:ShaderForge.SFN_Tex2d,id:130,x:33616,y:32317,ptlb:Main Normal,ptin:_MainNormal,tex:7fa013174af41554fac13bf0a70593ec,ntxv:3,isnm:True|UVIN-629-OUT;n:type:ShaderForge.SFN_Tex2d,id:131,x:33616,y:32491,ptlb:Detail Normal,ptin:_DetailNormal,tex:3482b618c6a3cf4408e051736959b41e,ntxv:3,isnm:True|UVIN-629-OUT;n:type:ShaderForge.SFN_NormalBlend,id:132,x:33379,y:32397|BSE-130-RGB,DTL-131-RGB;n:type:ShaderForge.SFN_SwitchProperty,id:155,x:33232,y:32497,ptlb:Use NormalDetail,ptin:_UseNormalDetail,on:False|A-130-RGB,B-132-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:212,x:32749,y:32689,ptlb:Use SpecularMap,ptin:_UseSpecularMap,on:False|A-213-OUT,B-214-OUT;n:type:ShaderForge.SFN_Slider,id:213,x:33186,y:32640,ptlb:Gloss,ptin:_Gloss,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Multiply,id:214,x:33060,y:32691|A-213-OUT,B-7-A;n:type:ShaderForge.SFN_Multiply,id:247,x:32837,y:33411|A-116-OUT,B-248-OUT;n:type:ShaderForge.SFN_Slider,id:248,x:32837,y:33600,ptlb:Rim Power,ptin:_RimPower,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Vector3,id:344,x:32930,y:33198,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Slider,id:420,x:32393,y:32587,ptlb:Difuse Power,ptin:_DifusePower,min:0,cur:1,max:3;n:type:ShaderForge.SFN_SwitchProperty,id:629,x:33435,y:33038,ptlb:Parallax On,ptin:_ParallaxOn,on:False|A-18-OUT,B-15-UVOUT;n:type:ShaderForge.SFN_SwitchProperty,id:679,x:32451,y:32258,ptlb:Affect AO,ptin:_AffectAO,on:False|A-129-OUT,B-680-OUT;n:type:ShaderForge.SFN_Blend,id:680,x:32480,y:32058,blmd:1,clmp:True|SRC-129-OUT,DST-42-OUT;n:type:ShaderForge.SFN_Blend,id:689,x:32881,y:32579,blmd:1,clmp:True|SRC-45-OUT,DST-122-A;n:type:ShaderForge.SFN_SwitchProperty,id:690,x:32749,y:32546,ptlb:Use Detail Alpha,ptin:_UseDetailAlpha,on:False|A-45-OUT,B-689-OUT;n:type:ShaderForge.SFN_Blend,id:741,x:31845,y:32654,blmd:10,clmp:True|SRC-743-OUT,DST-5-RGB;n:type:ShaderForge.SFN_Slider,id:743,x:32034,y:33188,ptlb:Oclussion Power,ptin:_OclussionPower,min:-5,cur:0.5,max:5;n:type:ShaderForge.SFN_Slider,id:806,x:32089,y:33013,ptlb:Oclussion Intensity,ptin:_OclussionIntensity,min:0,cur:0,max:1;proporder:17-4-2-679-129-420-122-127-130-155-131-9-7-8-690-45-213-212-629-22-25-5-743-6-806-14-116-97-107-248;pass:END;sub:END;*/

Shader "DLNK/Parallax/ParallaxDetailRimOclussion" {
    Properties {
        _MasterTile ("Master Tile", Float ) = 1
        _ColorTint ("Color Tint ", Color) = (0.5,0.5,0.5,1)
        _DifuseMain ("Difuse Main", 2D) = "white" {}
        [MaterialToggle] _AffectAO ("Affect AO", Float ) = 0.1019608
        [MaterialToggle] _ColorDetail ("Color Detail", Float ) = 0.1019608
        _DifusePower ("Difuse Power", Range(0, 3)) = 1
        _DiffuseDetail ("Diffuse Detail", 2D) = "white" {}
        _DetailPower ("Detail Power", Range(0, 1)) = 0.5
        _MainNormal ("Main Normal", 2D) = "bump" {}
        [MaterialToggle] _UseNormalDetail ("Use NormalDetail", Float ) = 0.07450981
        _DetailNormal ("Detail Normal", 2D) = "bump" {}
        _SpecularTint ("Specular Tint", Color) = (1,1,1,1)
        _SpecularMap ("Specular Map", 2D) = "gray" {}
        _SpecularLevel ("Specular Level", Range(0, 5)) = 1.729252
        [MaterialToggle] _UseDetailAlpha ("Use Detail Alpha", Float ) = 0.2784314
        [MaterialToggle] _SpecularAO ("Specular AO", Float ) = 0.2784314
        _Gloss ("Gloss", Range(0, 1)) = 0.5
        [MaterialToggle] _UseSpecularMap ("Use SpecularMap", Float ) = 0.5
        [MaterialToggle] _ParallaxOn ("Parallax On", Float ) = 0
        _HeightMap ("Height Map", 2D) = "white" {}
        _HeightPower ("Height Power", Float ) = 0.1
        _Oclussion ("Oclussion", 2D) = "black" {}
        _OclussionPower ("Oclussion Power", Range(-5, 5)) = 0.5
        _OclussionFade ("Oclussion Fade", Range(0, 5)) = 1.090226
        _OclussionIntensity ("Oclussion Intensity", Range(0, 1)) = 0
        [MaterialToggle] _RimOn ("Rim On", Float ) = 0.2610294
        [MaterialToggle] _RimAO ("Rim AO", Float ) = 1
        _RimColor ("Rim Color", Color) = (0.5220588,0.5220588,0.5220588,1)
        _RimFresnel ("Rim Fresnel", Range(0, 6)) = 3
        _RimPower ("Rim Power", Range(0, 1)) = 0.5
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
            #pragma glsl
            #ifndef LIGHTMAP_OFF
                // float4 unity_LightmapST;
                // sampler2D unity_Lightmap;
                #ifndef DIRLIGHTMAP_OFF
                    // sampler2D unity_LightmapInd;
                #endif
            #endif
            uniform sampler2D _DifuseMain; uniform float4 _DifuseMain_ST;
            uniform float4 _ColorTint;
            uniform sampler2D _Oclussion; uniform float4 _Oclussion_ST;
            uniform float _OclussionFade;
            uniform sampler2D _SpecularMap; uniform float4 _SpecularMap_ST;
            uniform float _SpecularLevel;
            uniform float4 _SpecularTint;
            uniform fixed _RimOn;
            uniform float _MasterTile;
            uniform sampler2D _HeightMap; uniform float4 _HeightMap_ST;
            uniform float _HeightPower;
            uniform fixed _SpecularAO;
            uniform float4 _RimColor;
            uniform float _RimFresnel;
            uniform fixed _RimAO;
            uniform sampler2D _DiffuseDetail; uniform float4 _DiffuseDetail_ST;
            uniform float _DetailPower;
            uniform fixed _ColorDetail;
            uniform sampler2D _MainNormal; uniform float4 _MainNormal_ST;
            uniform sampler2D _DetailNormal; uniform float4 _DetailNormal_ST;
            uniform fixed _UseNormalDetail;
            uniform fixed _UseSpecularMap;
            uniform float _Gloss;
            uniform float _RimPower;
            uniform float _DifusePower;
            uniform fixed _ParallaxOn;
            uniform fixed _AffectAO;
            uniform fixed _UseDetailAlpha;
            uniform float _OclussionPower;
            uniform float _OclussionIntensity;
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
                float2 node_18 = (i.uv0.rg*_MasterTile);
                float2 node_865 = i.uv0;
                float2 node_629 = lerp( node_18, (_HeightPower*(tex2D(_HeightMap,TRANSFORM_TEX(node_865.rg, _HeightMap)).a - 0.5)*mul(tangentTransform, viewDirection).xy + node_18).rg, _ParallaxOn );
                float3 node_130 = UnpackNormal(tex2D(_MainNormal,TRANSFORM_TEX(node_629, _MainNormal)));
                float3 node_132_nrm_base = node_130.rgb + float3(0,0,1);
                float3 node_132_nrm_detail = UnpackNormal(tex2D(_DetailNormal,TRANSFORM_TEX(node_629, _DetailNormal))).rgb * float3(-1,-1,1);
                float3 node_132_nrm_combined = node_132_nrm_base*dot(node_132_nrm_base, node_132_nrm_detail)/node_132_nrm_base.z - node_132_nrm_detail;
                float3 node_132 = node_132_nrm_combined;
                float3 normalLocal = lerp( node_130.rgb, node_132, _UseNormalDetail );
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
                    float3 diffuse = pow(max( 0.0, NdotL), _DifusePower) * attenColor + UNITY_LIGHTMODEL_AMBIENT.rgb;
                #endif
////// Emissive:
                float node_13 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_RimFresnel);
                float3 node_42 = saturate(max(saturate(( tex2Dlod(_Oclussion,float4(TRANSFORM_TEX(node_629, _Oclussion),0.0,_OclussionFade)).rgb > 0.5 ? (1.0-(1.0-2.0*(tex2Dlod(_Oclussion,float4(TRANSFORM_TEX(node_629, _Oclussion),0.0,_OclussionFade)).rgb-0.5))*(1.0-_OclussionPower)) : (2.0*tex2Dlod(_Oclussion,float4(TRANSFORM_TEX(node_629, _Oclussion),0.0,_OclussionFade)).rgb*_OclussionPower) )),_OclussionIntensity));
                float3 emissive = lerp( float3(0,0,0), ((lerp( node_13, (node_13*node_42), _RimAO )*_RimPower)*_RimColor.rgb), _RimOn );
///////// Gloss:
                float4 node_7 = tex2D(_SpecularMap,TRANSFORM_TEX(node_629, _SpecularMap));
                float gloss = lerp( _Gloss, (_Gloss*node_7.a), _UseSpecularMap );
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float3 node_32 = (node_7.a*_SpecularTint.rgb);
                float3 node_45 = lerp( node_32, saturate((node_42*node_32)), _SpecularAO );
                float4 node_122 = tex2D(_DiffuseDetail,TRANSFORM_TEX(node_629, _DiffuseDetail));
                float3 specularColor = (lerp( node_45, saturate((node_45*node_122.a)), _UseDetailAlpha )*_SpecularLevel);
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
                float3 node_79 = (tex2D(_DifuseMain,TRANSFORM_TEX(node_629, _DifuseMain)).rgb*_ColorTint.rgb);
                float3 node_129 = lerp( node_79, saturate(( node_79 > 0.5 ? (1.0-(1.0-2.0*(node_79-0.5))*(1.0-saturate(( _DetailPower > 0.5 ? (1.0-(1.0-2.0*(_DetailPower-0.5))*(1.0-node_122.rgb)) : (2.0*_DetailPower*node_122.rgb) )))) : (2.0*node_79*saturate(( _DetailPower > 0.5 ? (1.0-(1.0-2.0*(_DetailPower-0.5))*(1.0-node_122.rgb)) : (2.0*_DetailPower*node_122.rgb) ))) )), _ColorDetail );
                finalColor += diffuseLight * lerp( node_129, saturate((node_129*node_42)), _AffectAO );
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
            #pragma glsl
            #ifndef LIGHTMAP_OFF
                // float4 unity_LightmapST;
                // sampler2D unity_Lightmap;
                #ifndef DIRLIGHTMAP_OFF
                    // sampler2D unity_LightmapInd;
                #endif
            #endif
            uniform sampler2D _DifuseMain; uniform float4 _DifuseMain_ST;
            uniform float4 _ColorTint;
            uniform sampler2D _Oclussion; uniform float4 _Oclussion_ST;
            uniform float _OclussionFade;
            uniform sampler2D _SpecularMap; uniform float4 _SpecularMap_ST;
            uniform float _SpecularLevel;
            uniform float4 _SpecularTint;
            uniform fixed _RimOn;
            uniform float _MasterTile;
            uniform sampler2D _HeightMap; uniform float4 _HeightMap_ST;
            uniform float _HeightPower;
            uniform fixed _SpecularAO;
            uniform float4 _RimColor;
            uniform float _RimFresnel;
            uniform fixed _RimAO;
            uniform sampler2D _DiffuseDetail; uniform float4 _DiffuseDetail_ST;
            uniform float _DetailPower;
            uniform fixed _ColorDetail;
            uniform sampler2D _MainNormal; uniform float4 _MainNormal_ST;
            uniform sampler2D _DetailNormal; uniform float4 _DetailNormal_ST;
            uniform fixed _UseNormalDetail;
            uniform fixed _UseSpecularMap;
            uniform float _Gloss;
            uniform float _RimPower;
            uniform float _DifusePower;
            uniform fixed _ParallaxOn;
            uniform fixed _AffectAO;
            uniform fixed _UseDetailAlpha;
            uniform float _OclussionPower;
            uniform float _OclussionIntensity;
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
                float2 node_18 = (i.uv0.rg*_MasterTile);
                float2 node_866 = i.uv0;
                float2 node_629 = lerp( node_18, (_HeightPower*(tex2D(_HeightMap,TRANSFORM_TEX(node_866.rg, _HeightMap)).a - 0.5)*mul(tangentTransform, viewDirection).xy + node_18).rg, _ParallaxOn );
                float3 node_130 = UnpackNormal(tex2D(_MainNormal,TRANSFORM_TEX(node_629, _MainNormal)));
                float3 node_132_nrm_base = node_130.rgb + float3(0,0,1);
                float3 node_132_nrm_detail = UnpackNormal(tex2D(_DetailNormal,TRANSFORM_TEX(node_629, _DetailNormal))).rgb * float3(-1,-1,1);
                float3 node_132_nrm_combined = node_132_nrm_base*dot(node_132_nrm_base, node_132_nrm_detail)/node_132_nrm_base.z - node_132_nrm_detail;
                float3 node_132 = node_132_nrm_combined;
                float3 normalLocal = lerp( node_130.rgb, node_132, _UseNormalDetail );
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 diffuse = pow(max( 0.0, NdotL), _DifusePower) * attenColor;
///////// Gloss:
                float4 node_7 = tex2D(_SpecularMap,TRANSFORM_TEX(node_629, _SpecularMap));
                float gloss = lerp( _Gloss, (_Gloss*node_7.a), _UseSpecularMap );
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float3 node_32 = (node_7.a*_SpecularTint.rgb);
                float3 node_42 = saturate(max(saturate(( tex2Dlod(_Oclussion,float4(TRANSFORM_TEX(node_629, _Oclussion),0.0,_OclussionFade)).rgb > 0.5 ? (1.0-(1.0-2.0*(tex2Dlod(_Oclussion,float4(TRANSFORM_TEX(node_629, _Oclussion),0.0,_OclussionFade)).rgb-0.5))*(1.0-_OclussionPower)) : (2.0*tex2Dlod(_Oclussion,float4(TRANSFORM_TEX(node_629, _Oclussion),0.0,_OclussionFade)).rgb*_OclussionPower) )),_OclussionIntensity));
                float3 node_45 = lerp( node_32, saturate((node_42*node_32)), _SpecularAO );
                float4 node_122 = tex2D(_DiffuseDetail,TRANSFORM_TEX(node_629, _DiffuseDetail));
                float3 specularColor = (lerp( node_45, saturate((node_45*node_122.a)), _UseDetailAlpha )*_SpecularLevel);
                float3 specular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                float3 node_79 = (tex2D(_DifuseMain,TRANSFORM_TEX(node_629, _DifuseMain)).rgb*_ColorTint.rgb);
                float3 node_129 = lerp( node_79, saturate(( node_79 > 0.5 ? (1.0-(1.0-2.0*(node_79-0.5))*(1.0-saturate(( _DetailPower > 0.5 ? (1.0-(1.0-2.0*(_DetailPower-0.5))*(1.0-node_122.rgb)) : (2.0*_DetailPower*node_122.rgb) )))) : (2.0*node_79*saturate(( _DetailPower > 0.5 ? (1.0-(1.0-2.0*(_DetailPower-0.5))*(1.0-node_122.rgb)) : (2.0*_DetailPower*node_122.rgb) ))) )), _ColorDetail );
                finalColor += diffuseLight * lerp( node_129, saturate((node_129*node_42)), _AffectAO );
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
