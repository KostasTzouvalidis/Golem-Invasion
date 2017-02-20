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
/*SF_DATA;ver:0.34;sub:START;pass:START;ps:flbk:Parallax Specular,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:True,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,blpr:0,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:32464,y:32831|diff-32-OUT,spec-34-OUT,gloss-35-OUT,normal-13-RGB,emission-126-OUT;n:type:ShaderForge.SFN_Blend,id:2,x:33029,y:32660,blmd:1,clmp:True|SRC-4-RGB,DST-3-RGB;n:type:ShaderForge.SFN_Color,id:3,x:33214,y:32717,ptlb:Diffuse Tint,ptin:_DiffuseTint,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:4,x:33212,y:32531,ptlb:Diffuse,ptin:_Diffuse,tex:d983bc4a506ee8442b964525077c5aca,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5,x:32648,y:32463,ptlb:Oclussion,ptin:_Oclussion,tex:d0b0f19b7c0684b45b71d7b2c95b5f14,ntxv:0,isnm:False|UVIN-19-OUT,MIP-26-OUT;n:type:ShaderForge.SFN_Tex2d,id:6,x:33407,y:32952,ptlb:Specular,ptin:_Specular,tex:4b706f414b6f5574898065ed78f7c666,ntxv:0,isnm:False|UVIN-19-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7,x:33407,y:33131,ptlb:Spec Intensity,ptin:_SpecIntensity,glob:False,v1:1;n:type:ShaderForge.SFN_Color,id:8,x:33407,y:33213,ptlb:Spec Color,ptin:_SpecColor,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Cubemap,id:9,x:32971,y:33206,ptlb:Reflection,ptin:_Reflection;n:type:ShaderForge.SFN_Fresnel,id:10,x:32971,y:33349|EXP-23-OUT;n:type:ShaderForge.SFN_Color,id:11,x:32972,y:33486,ptlb:Ref Color,ptin:_RefColor,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:12,x:32972,y:33652,ptlb:Ref Intensity,ptin:_RefIntensity,glob:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:13,x:33584,y:32762,ptlb:Normal,ptin:_Normal,tex:7f3a9352dbffc48469c43bbac966e336,ntxv:3,isnm:True|UVIN-19-OUT;n:type:ShaderForge.SFN_Tex2d,id:14,x:33641,y:33464,ptlb:Height,ptin:_Height,tex:0ec642508ae43604c907406c6221f868,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:15,x:33894,y:33756,ptlb:MasterTile,ptin:_MasterTile,glob:False,v1:1;n:type:ShaderForge.SFN_TexCoord,id:16,x:33937,y:33570,uv:0;n:type:ShaderForge.SFN_Parallax,id:17,x:33561,y:33675|UVIN-18-OUT,HEI-14-A,DEP-96-OUT;n:type:ShaderForge.SFN_Multiply,id:18,x:33753,y:33675|A-16-UVOUT,B-15-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:19,x:33428,y:33566,ptlb:Parallax On,ptin:_ParallaxOn,on:False|A-18-OUT,B-17-UVOUT;n:type:ShaderForge.SFN_Multiply,id:20,x:32782,y:33288|A-9-RGB,B-10-OUT;n:type:ShaderForge.SFN_Multiply,id:21,x:32782,y:33431|A-20-OUT,B-12-OUT;n:type:ShaderForge.SFN_Multiply,id:22,x:32782,y:33566|A-21-OUT,B-11-RGB;n:type:ShaderForge.SFN_ValueProperty,id:23,x:32972,y:33736,ptlb:Rim Power,ptin:_RimPower,glob:False,v1:4;n:type:ShaderForge.SFN_Multiply,id:24,x:33234,y:33003|A-6-A,B-7-OUT;n:type:ShaderForge.SFN_Multiply,id:25,x:33234,y:33163|A-24-OUT,B-8-RGB;n:type:ShaderForge.SFN_ValueProperty,id:26,x:32648,y:32648,ptlb:Oclussion Mip,ptin:_OclussionMip,glob:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:27,x:32648,y:32731,ptlb:Oclussion Power,ptin:_OclussionPower,glob:False,v1:0.5;n:type:ShaderForge.SFN_Blend,id:28,x:32466,y:32520,blmd:10,clmp:True|SRC-5-A,DST-27-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:29,x:32288,y:32520,ptlb:AO on,ptin:_AOon,on:True|A-30-OUT,B-28-OUT;n:type:ShaderForge.SFN_Vector1,id:30,x:32466,y:32694,v1:1;n:type:ShaderForge.SFN_Lerp,id:32,x:32863,y:32699|A-33-RGB,B-2-OUT,T-29-OUT;n:type:ShaderForge.SFN_Color,id:33,x:32926,y:32464,ptlb:Color Oclussion,ptin:_ColorOclussion,glob:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:34,x:32997,y:33003|A-29-OUT,B-25-OUT;n:type:ShaderForge.SFN_Slider,id:35,x:32842,y:32898,ptlb:Gloss,ptin:_Gloss,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:37,x:32972,y:33832,ptlb:Reflection Mask,ptin:_ReflectionMask,tex:5fb05b86ddf7c0442bacf08adcc23594,ntxv:0,isnm:False|UVIN-19-OUT;n:type:ShaderForge.SFN_ValueProperty,id:96,x:33894,y:33842,ptlb:Depth,ptin:_Depth,glob:False,v1:0.05;n:type:ShaderForge.SFN_Multiply,id:126,x:32534,y:33545|A-22-OUT,B-37-RGB;proporder:3-4-13-8-6-7-35-11-9-37-12-23-19-14-96-15-29-33-5-27-26;pass:END;sub:END;*/

Shader "DLNK/Parallax/ParallaxReflection" {
    Properties {
        _DiffuseTint ("Diffuse Tint", Color) = (0.5,0.5,0.5,1)
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Normal ("Normal", 2D) = "bump" {}
        _SpecColor ("Spec Color", Color) = (0.5,0.5,0.5,1)
        _Specular ("Specular", 2D) = "white" {}
        _SpecIntensity ("Spec Intensity", Float ) = 1
        _Gloss ("Gloss", Range(0, 1)) = 0
        _RefColor ("Ref Color", Color) = (0.5,0.5,0.5,1)
        _Reflection ("Reflection", Cube) = "_Skybox" {}
        _ReflectionMask ("Reflection Mask", 2D) = "white" {}
        _RefIntensity ("Ref Intensity", Float ) = 1
        _RimPower ("Rim Power", Float ) = 4
        [MaterialToggle] _ParallaxOn ("Parallax On", Float ) = 0
        _Height ("Height", 2D) = "white" {}
        _Depth ("Depth", Float ) = 0.05
        _MasterTile ("MasterTile", Float ) = 1
        [MaterialToggle] _AOon ("AO on", Float ) = 0.8470588
        _ColorOclussion ("Color Oclussion", Color) = (0,0,0,1)
        _Oclussion ("Oclussion", 2D) = "white" {}
        _OclussionPower ("Oclussion Power", Float ) = 0.5
        _OclussionMip ("Oclussion Mip", Float ) = 0
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
            uniform float4 _DiffuseTint;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Oclussion; uniform float4 _Oclussion_ST;
            uniform sampler2D _Specular; uniform float4 _Specular_ST;
            uniform float _SpecIntensity;
            uniform samplerCUBE _Reflection;
            uniform float4 _RefColor;
            uniform float _RefIntensity;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _Height; uniform float4 _Height_ST;
            uniform float _MasterTile;
            uniform fixed _ParallaxOn;
            uniform float _RimPower;
            uniform float _OclussionMip;
            uniform float _OclussionPower;
            uniform fixed _AOon;
            uniform float4 _ColorOclussion;
            uniform float _Gloss;
            uniform sampler2D _ReflectionMask; uniform float4 _ReflectionMask_ST;
            uniform float _Depth;
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
                float2 node_550 = i.uv0;
                float2 node_19 = lerp( node_18, (_Depth*(tex2D(_Height,TRANSFORM_TEX(node_550.rg, _Height)).a - 0.5)*mul(tangentTransform, viewDirection).xy + node_18).rg, _ParallaxOn );
                float3 normalLocal = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_19, _Normal))).rgb;
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
                    float3 diffuse = max( 0.0, NdotL) * attenColor + UNITY_LIGHTMODEL_AMBIENT.rgb;
                #endif
////// Emissive:
                float3 emissive = ((((texCUBE(_Reflection,viewReflectDirection).rgb*pow(1.0-max(0,dot(normalDirection, viewDirection)),_RimPower))*_RefIntensity)*_RefColor.rgb)*tex2D(_ReflectionMask,TRANSFORM_TEX(node_19, _ReflectionMask)).rgb);
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float node_29 = lerp( 1.0, saturate(( _OclussionPower > 0.5 ? (1.0-(1.0-2.0*(_OclussionPower-0.5))*(1.0-tex2Dlod(_Oclussion,float4(TRANSFORM_TEX(node_19, _Oclussion),0.0,_OclussionMip)).a)) : (2.0*_OclussionPower*tex2Dlod(_Oclussion,float4(TRANSFORM_TEX(node_19, _Oclussion),0.0,_OclussionMip)).a) )), _AOon );
                float3 specularColor = (node_29*((tex2D(_Specular,TRANSFORM_TEX(node_19, _Specular)).a*_SpecIntensity)*_SpecColor.rgb));
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
                finalColor += diffuseLight * lerp(_ColorOclussion.rgb,saturate((tex2D(_Diffuse,TRANSFORM_TEX(node_550.rg, _Diffuse)).rgb*_DiffuseTint.rgb)),node_29);
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
            uniform float4 _DiffuseTint;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Oclussion; uniform float4 _Oclussion_ST;
            uniform sampler2D _Specular; uniform float4 _Specular_ST;
            uniform float _SpecIntensity;
            uniform samplerCUBE _Reflection;
            uniform float4 _RefColor;
            uniform float _RefIntensity;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _Height; uniform float4 _Height_ST;
            uniform float _MasterTile;
            uniform fixed _ParallaxOn;
            uniform float _RimPower;
            uniform float _OclussionMip;
            uniform float _OclussionPower;
            uniform fixed _AOon;
            uniform float4 _ColorOclussion;
            uniform float _Gloss;
            uniform sampler2D _ReflectionMask; uniform float4 _ReflectionMask_ST;
            uniform float _Depth;
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
                float2 node_551 = i.uv0;
                float2 node_19 = lerp( node_18, (_Depth*(tex2D(_Height,TRANSFORM_TEX(node_551.rg, _Height)).a - 0.5)*mul(tangentTransform, viewDirection).xy + node_18).rg, _ParallaxOn );
                float3 normalLocal = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_19, _Normal))).rgb;
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
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
                float node_29 = lerp( 1.0, saturate(( _OclussionPower > 0.5 ? (1.0-(1.0-2.0*(_OclussionPower-0.5))*(1.0-tex2Dlod(_Oclussion,float4(TRANSFORM_TEX(node_19, _Oclussion),0.0,_OclussionMip)).a)) : (2.0*_OclussionPower*tex2Dlod(_Oclussion,float4(TRANSFORM_TEX(node_19, _Oclussion),0.0,_OclussionMip)).a) )), _AOon );
                float3 specularColor = (node_29*((tex2D(_Specular,TRANSFORM_TEX(node_19, _Specular)).a*_SpecIntensity)*_SpecColor.rgb));
                float3 specular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                finalColor += diffuseLight * lerp(_ColorOclussion.rgb,saturate((tex2D(_Diffuse,TRANSFORM_TEX(node_551.rg, _Diffuse)).rgb*_DiffuseTint.rgb)),node_29);
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
