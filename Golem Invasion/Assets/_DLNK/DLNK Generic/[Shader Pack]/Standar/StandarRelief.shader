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
/*SF_DATA;ver:1.04;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:True,lprd:True,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:2,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:958,x:33673,y:33031,varname:node_958,prsc:2|diff-9466-OUT,spec-9454-OUT,gloss-6757-OUT,normal-198-OUT,lwrap-1825-OUT,amdfl-3438-OUT,amspl-3938-OUT,difocc-2561-OUT,spcocc-2561-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:954,x:32839,y:32505,ptovrint:False,ptlb:Main Tex,ptin:_MainTex,varname:node_954,tex:32228b9a0bbb12f4e9c7009813efe71f,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8780,x:32839,y:32668,varname:node_8780,prsc:2,tex:32228b9a0bbb12f4e9c7009813efe71f,ntxv:0,isnm:False|UVIN-9428-OUT,TEX-954-TEX;n:type:ShaderForge.SFN_ValueProperty,id:2195,x:32839,y:32408,ptovrint:False,ptlb:Diffuse power,ptin:_Diffusepower,varname:node_2195,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Color,id:550,x:32839,y:32244,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_550,prsc:2,glob:False,c1:0.6397059,c2:0.6397059,c3:0.6397059,c4:1;n:type:ShaderForge.SFN_Multiply,id:9466,x:33359,y:32723,varname:node_9466,prsc:2|A-8780-RGB,B-550-RGB,C-2195-OUT;n:type:ShaderForge.SFN_Tex2d,id:806,x:33555,y:32521,ptovrint:False,ptlb:Occlusion Map,ptin:_OcclusionMap,varname:node_806,prsc:2,tex:d8b63834ea6ac034b9a64111d1b898cc,ntxv:0,isnm:False|UVIN-9428-OUT;n:type:ShaderForge.SFN_Power,id:2561,x:33774,y:32538,varname:node_2561,prsc:2|VAL-806-A,EXP-1872-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1872,x:33631,y:32721,ptovrint:False,ptlb:AO Power,ptin:_AOPower,varname:node_1872,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Fresnel,id:9285,x:34089,y:32899,varname:node_9285,prsc:2|EXP-9203-OUT;n:type:ShaderForge.SFN_Color,id:1314,x:34089,y:33082,ptovrint:False,ptlb:Rim Light Color,ptin:_RimLightColor,varname:node_1314,prsc:2,glob:False,c1:0.5147059,c2:0.5147059,c3:0.5147059,c4:1;n:type:ShaderForge.SFN_Blend,id:8065,x:34279,y:32973,varname:node_8065,prsc:2,blmd:3,clmp:True|SRC-9285-OUT,DST-1314-RGB;n:type:ShaderForge.SFN_ValueProperty,id:5539,x:34143,y:32815,ptovrint:False,ptlb:Rim Power,ptin:_RimPower,varname:node_5539,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:4025,x:33135,y:33009,ptovrint:False,ptlb:Specular Power,ptin:_SpecularPower,varname:node_4025,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Slider,id:4955,x:32433,y:33120,ptovrint:False,ptlb:Shininess,ptin:_Shininess,varname:node_4955,prsc:2,min:0,cur:0.5,max:3;n:type:ShaderForge.SFN_Tex2d,id:9374,x:32102,y:33153,varname:node_9374,prsc:2,ntxv:3,isnm:True|UVIN-9428-OUT,TEX-7104-TEX;n:type:ShaderForge.SFN_Cubemap,id:1845,x:32963,y:33355,ptovrint:False,ptlb:IBL Map,ptin:_IBLMap,varname:node_1845,prsc:2,cube:f466cf7415226e046b096197eb7341aa,pvfc:0|MIP-9338-OUT;n:type:ShaderForge.SFN_Tex2d,id:8130,x:32898,y:32927,varname:node_8130,prsc:2,ntxv:0,isnm:False|UVIN-9428-OUT,TEX-3287-TEX;n:type:ShaderForge.SFN_Multiply,id:9454,x:33340,y:32946,varname:node_9454,prsc:2|A-8130-RGB,B-4025-OUT,C-782-RGB;n:type:ShaderForge.SFN_Multiply,id:6757,x:33340,y:33100,varname:node_6757,prsc:2|A-8130-A,B-4955-OUT;n:type:ShaderForge.SFN_Multiply,id:9811,x:33159,y:33355,varname:node_9811,prsc:2|A-1845-RGB,B-1845-A,C-4948-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4948,x:32963,y:33528,ptovrint:False,ptlb:IBL Power,ptin:_IBLPower,varname:node_4948,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_RemapRange,id:9338,x:32770,y:33375,varname:node_9338,prsc:2,frmn:0,frmx:3,tomn:6,tomx:1|IN-4955-OUT;n:type:ShaderForge.SFN_Color,id:782,x:33135,y:32827,ptovrint:False,ptlb:Spec Color,ptin:_SpecColor,varname:node_782,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:1825,x:33982,y:33334,varname:node_1825,prsc:2|A-4115-RGB,B-4893-OUT,C-6266-OUT;n:type:ShaderForge.SFN_Color,id:4115,x:34200,y:33207,ptovrint:False,ptlb:LightWrap Color,ptin:_LightWrapColor,varname:node_4115,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:4893,x:34189,y:33453,ptovrint:False,ptlb:LightWrap Power,ptin:_LightWrapPower,varname:node_4893,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_ToggleProperty,id:6266,x:33982,y:33512,ptovrint:False,ptlb:LightWrap,ptin:_LightWrap,varname:node_6266,prsc:2,on:False;n:type:ShaderForge.SFN_Tex2dAsset,id:3287,x:32708,y:32960,ptovrint:False,ptlb:Metallic Gloss Map,ptin:_MetallicGlossMap,varname:node_3287,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:7104,x:31874,y:33233,ptovrint:False,ptlb:Bump Map,ptin:_BumpMap,varname:node_7104,ntxv:3,isnm:True;n:type:ShaderForge.SFN_ToggleProperty,id:9819,x:33409,y:33455,ptovrint:False,ptlb:Specular IBL,ptin:_SpecularIBL,varname:node_9819,prsc:2,on:False;n:type:ShaderForge.SFN_Multiply,id:3938,x:33409,y:33290,varname:node_3938,prsc:2|A-9811-OUT,B-9819-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9203,x:34143,y:32744,ptovrint:False,ptlb:Rim Fresnel,ptin:_RimFresnel,varname:node_9203,prsc:2,glob:False,v1:3;n:type:ShaderForge.SFN_Multiply,id:3438,x:33911,y:33115,varname:node_3438,prsc:2|A-5539-OUT,B-8065-OUT;n:type:ShaderForge.SFN_Lerp,id:198,x:32670,y:33255,varname:node_198,prsc:2|A-3503-OUT,B-9374-RGB,T-3047-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3047,x:32472,y:33366,ptovrint:False,ptlb:Bump Scale,ptin:_BumpScale,varname:node_3047,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Vector3,id:3503,x:32472,y:33255,varname:node_3503,prsc:2,v1:0.5,v2:0.5,v3:1;n:type:ShaderForge.SFN_Tex2dAsset,id:306,x:31925,y:32452,ptovrint:False,ptlb:Parallax Map,ptin:_ParallaxMap,varname:node_306,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:9327,x:31903,y:32658,ptovrint:False,ptlb:Parallax,ptin:_Parallax,varname:node_9327,prsc:2,glob:False,v1:0.05;n:type:ShaderForge.SFN_Negate,id:2865,x:32063,y:32658,varname:node_2865,prsc:2|IN-9327-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4975,x:31903,y:32743,ptovrint:False,ptlb:Quality,ptin:_Quality,varname:node_4975,prsc:2,glob:False,v1:50;n:type:ShaderForge.SFN_Transform,id:3272,x:31925,y:32266,varname:node_3272,prsc:2,tffrom:0,tfto:2|IN-5382-OUT;n:type:ShaderForge.SFN_ViewVector,id:5382,x:31734,y:32283,varname:node_5382,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:3906,x:31903,y:32826,varname:node_3906,prsc:2,uv:0;n:type:ShaderForge.SFN_Code,id:7682,x:32246,y:32347,varname:node_7682,prsc:2,code:dgBpAGUAdwBEAGkAcgAgAD0AIABuAG8AcgBtAGEAbABpAHoAZQAoAHYAaQBlAHcARABpAHIAKQA7AAoAZgBsAG8AYQB0ADMAIABwACAAPQAgAGYAbABvAGEAdAAzACgAVQBWACwAIAAwACkAOwAKAGYAbABvAGEAdAAzACAAbgBlAHcAVgBpAGUAdwAgAD0AIABuAG8AcgBtAGEAbABpAHoAZQAoAHYAaQBlAHcARABpAHIAIAAqACAALQAxACkAOwAKAG4AZQB3AFYAaQBlAHcALgB6ACAAPQAgAGEAYgBzACgAbgBlAHcAVgBpAGUAdwAuAHoAKQA7AAoACgBmAGwAbwBhAHQAIABkAGUAcAB0AGgAQgBpAGEAcwAgAD0AIAAxAC4AMAAgAC0AIABuAGUAdwBWAGkAZQB3AC4AegA7AAoAZABlAHAAdABoAEIAaQBhAHMAIAAqAD0AIABkAGUAcAB0AGgAQgBpAGEAcwA7AAoAZABlAHAAdABoAEIAaQBhAHMAIAAqAD0AIABkAGUAcAB0AGgAQgBpAGEAcwA7AAoAZABlAHAAdABoAEIAaQBhAHMAIAA9ACAAMQAuADAAIAAtACAAZABlAHAAdABoAEIAaQBhAHMAIAAqACAAZABlAHAAdABoAEIAaQBhAHMAOwAKAAoAbgBlAHcAVgBpAGUAdwAuAHgAeQAgACoAPQAgAGQAZQBwAHQAaABCAGkAYQBzADsACgBuAGUAdwBWAGkAZQB3AC4AeAB5ACAAKgA9ACAARABlAHAAdABoADsACgAKAGMAbwBuAHMAdAAgAGkAbgB0ACAAYgBpAG4AYQByAHkAUwBlAGEAcgBjAGgAUwB0AGUAcABzACAAPQAgADEAMAA7AAoACgBuAGUAdwBWAGkAZQB3ACAALwA9ACAAbgBlAHcAVgBpAGUAdwAuAHoAIAAqACAAbABpAG4AZQBhAHIAUwBlAGEAcgBjAGgAUwB0AGUAcABzADsACgAKAC8ALwBwAHIAbwBkAHUAYwBlAHMAIABkAGUAcAB0AGgACgBpAG4AdAAgAGkAOwAKAGYAbwByACgAIABpAD0AMAA7ACAAaQA8AGwAaQBuAGUAYQByAFMAZQBhAHIAYwBoAFMAdABlAHAAcwA7ACAAaQArACsAIAApAHsACgBmAGwAbwBhAHQAIAB0AGUAeAAgAD0AIAB0AGUAeAAyAEQAKABIAGUAaQBnAGgAdABNAGEAcAAsACAAcAAuAHgAeQApAC4AcgA7AAoAaQBmACAAKABwAC4AegA8AHQAZQB4ACkAIABwACsAPQBuAGUAdwBWAGkAZQB3ADsACgB9AAoACgBmAG8AcgAoACAAaQA9ADAAOwAgAGkAPABiAGkAbgBhAHIAeQBTAGUAYQByAGMAaABTAHQAZQBwAHMAOwAgAGkAKwArACAAKQB7AAoAbgBlAHcAVgBpAGUAdwAgACoAPQAgADAALgA1ADsACgBmAGwAbwBhAHQAIAB0AGUAeAAgAD0AIAB0AGUAeAAyAEQAKABIAGUAaQBnAGgAdABNAGEAcAAsACAAcAAuAHgAeQApAC4AcgA7AAoAaQBmACgAcAAuAHoAIAA8ACAAdABlAHgAKQAgAHAAKwA9ACAAbgBlAHcAVgBpAGUAdwA7AAoAZQBsAHMAZQAgAHAAIAAtAD0AIABuAGUAdwBWAGkAZQB3ADsACgB9AAoAcgBlAHQAdQByAG4AIABwADsA,output:2,fname:Relief,width:367,height:459,input:10,input:12,input:0,input:0,input:9,input_1_label:viewDir,input_2_label:HeightMap,input_3_label:Depth,input_4_label:linearSearchSteps,input_5_label:UV|A-3272-XYZ,B-306-TEX,C-2865-OUT,D-4975-OUT,E-3906-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:9428,x:32469,y:32872,varname:node_9428,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-7682-OUT;proporder:550-954-2195-7104-3047-3287-782-4025-4955-9819-1845-4948-1872-806-1314-5539-9203-6266-4893-4115-306-9327-4975;pass:END;sub:END;*/

Shader "DLNK/Standar/StandarRelief" {
    Properties {
        _Color ("Color", Color) = (0.6397059,0.6397059,0.6397059,1)
        _MainTex ("Main Tex", 2D) = "white" {}
        _Diffusepower ("Diffuse power", Float ) = 1
        _BumpMap ("Bump Map", 2D) = "bump" {}
        _BumpScale ("Bump Scale", Float ) = 1
        _MetallicGlossMap ("Metallic Gloss Map", 2D) = "white" {}
        _SpecColor ("Spec Color", Color) = (0.5,0.5,0.5,1)
        _SpecularPower ("Specular Power", Float ) = 1
        _Shininess ("Shininess", Range(0, 3)) = 0.5
        [MaterialToggle] _SpecularIBL ("Specular IBL", Float ) = 0
        _IBLMap ("IBL Map", Cube) = "_Skybox" {}
        _IBLPower ("IBL Power", Float ) = 2
        _AOPower ("AO Power", Float ) = 1
        _OcclusionMap ("Occlusion Map", 2D) = "white" {}
        _RimLightColor ("Rim Light Color", Color) = (0.5147059,0.5147059,0.5147059,1)
        _RimPower ("Rim Power", Float ) = 1
        _RimFresnel ("Rim Fresnel", Float ) = 3
        [MaterialToggle] _LightWrap ("LightWrap", Float ) = 0
        _LightWrapPower ("LightWrap Power", Float ) = 2
        _LightWrapColor ("LightWrap Color", Color) = (0.5,0.5,0.5,1)
        _ParallaxMap ("Parallax Map", 2D) = "white" {}
        _Parallax ("Parallax", Float ) = 0.05
        _Quality ("Quality", Float ) = 50
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
            #pragma glsl
            #ifndef LIGHTMAP_OFF
                // float4 unity_LightmapST;
                // sampler2D unity_Lightmap;
                #ifndef DIRLIGHTMAP_OFF
                    // sampler2D unity_LightmapInd;
                #endif
            #endif
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Diffusepower;
            uniform float4 _Color;
            uniform sampler2D _OcclusionMap; uniform float4 _OcclusionMap_ST;
            uniform float _AOPower;
            uniform float4 _RimLightColor;
            uniform float _RimPower;
            uniform float _SpecularPower;
            uniform float _Shininess;
            uniform samplerCUBE _IBLMap;
            uniform float _IBLPower;
            uniform float4 _LightWrapColor;
            uniform float _LightWrapPower;
            uniform fixed _LightWrap;
            uniform sampler2D _MetallicGlossMap; uniform float4 _MetallicGlossMap_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform fixed _SpecularIBL;
            uniform float _RimFresnel;
            uniform float _BumpScale;
            uniform sampler2D _ParallaxMap; uniform float4 _ParallaxMap_ST;
            uniform float _Parallax;
            uniform float _Quality;
            float3 Relief( fixed3 viewDir , sampler2D HeightMap , float Depth , float linearSearchSteps , fixed2 UV ){
            viewDir = normalize(viewDir);
            float3 p = float3(UV, 0);
            float3 newView = normalize(viewDir * -1);
            newView.z = abs(newView.z);
            
            float depthBias = 1.0 - newView.z;
            depthBias *= depthBias;
            depthBias *= depthBias;
            depthBias = 1.0 - depthBias * depthBias;
            
            newView.xy *= depthBias;
            newView.xy *= Depth;
            
            const int binarySearchSteps = 10;
            
            newView /= newView.z * linearSearchSteps;
            
            //produces depth
            int i;
            for( i=0; i<linearSearchSteps; i++ ){
            float tex = tex2D(HeightMap, p.xy).r;
            if (p.z<tex) p+=newView;
            }
            
            for( i=0; i<binarySearchSteps; i++ ){
            newView *= 0.5;
            float tex = tex2D(HeightMap, p.xy).r;
            if(p.z < tex) p+= newView;
            else p -= newView;
            }
            return p;
            }
            
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
                float2 node_9428 = Relief( mul( tangentTransform, viewDirection ).xyz.rgb , _ParallaxMap , (-1*_Parallax) , _Quality , i.uv0 ).rg;
                float3 node_9374 = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_9428, _BumpMap)));
                float3 normalLocal = lerp(float3(0.5,0.5,1),node_9374.rgb,_BumpScale);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
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
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float4 node_8130 = tex2D(_MetallicGlossMap,TRANSFORM_TEX(node_9428, _MetallicGlossMap));
                float gloss = (node_8130.a*_Shininess);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 _OcclusionMap_var = tex2D(_OcclusionMap,TRANSFORM_TEX(node_9428, _OcclusionMap));
                float node_2561 = pow(_OcclusionMap_var.a,_AOPower);
                float3 specularAO = float3(node_2561,node_2561,node_2561);
                float4 _IBLMap_var = texCUBElod(_IBLMap,float4(viewReflectDirection,(_Shininess*-1.666667+6.0)));
                float3 specularColor = (node_8130.rgb*_SpecularPower*_SpecColor.rgb);
                #if !defined(LIGHTMAP_OFF) && defined(DIRLIGHTMAP_OFF)
                    float3 directSpecular = float3(0,0,0);
                #else
                    float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow);
                #endif
                float3 indirectSpecular = (0 + ((_IBLMap_var.rgb*_IBLMap_var.a*_IBLPower)*_SpecularIBL)) * specularAO;
                float3 specular = (directSpecular + indirectSpecular) * specularColor;
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
                NdotL = dot( normalDirection, lightDirection );
                float3 w = (_LightWrapColor.rgb*_LightWrapPower*_LightWrap)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 indirectDiffuse = float3(0,0,0);
                #ifndef LIGHTMAP_OFF
                    float3 directDiffuse = float3(0,0,0);
                #else
                    float3 directDiffuse = forwardLight * attenColor;
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
                indirectDiffuse += (_RimPower*saturate((pow(1.0-max(0,dot(normalDirection, viewDirection)),_RimFresnel)+_RimLightColor.rgb-1.0))); // Diffuse Ambient Light
                #if SHOULD_SAMPLE_SH_PROBE
                    indirectDiffuse += i.shLight; // Per-Vertex Light Probes / Spherical harmonics
                #endif
                indirectDiffuse *= float3(node_2561,node_2561,node_2561); // Diffuse AO
                float4 node_8780 = tex2D(_MainTex,TRANSFORM_TEX(node_9428, _MainTex));
                float3 diffuse = (directDiffuse + indirectDiffuse) * (node_8780.rgb*_Color.rgb*_Diffusepower);
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
            #pragma glsl
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Diffusepower;
            uniform float4 _Color;
            uniform float _SpecularPower;
            uniform float _Shininess;
            uniform float4 _LightWrapColor;
            uniform float _LightWrapPower;
            uniform fixed _LightWrap;
            uniform sampler2D _MetallicGlossMap; uniform float4 _MetallicGlossMap_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _BumpScale;
            uniform sampler2D _ParallaxMap; uniform float4 _ParallaxMap_ST;
            uniform float _Parallax;
            uniform float _Quality;
            float3 Relief( fixed3 viewDir , sampler2D HeightMap , float Depth , float linearSearchSteps , fixed2 UV ){
            viewDir = normalize(viewDir);
            float3 p = float3(UV, 0);
            float3 newView = normalize(viewDir * -1);
            newView.z = abs(newView.z);
            
            float depthBias = 1.0 - newView.z;
            depthBias *= depthBias;
            depthBias *= depthBias;
            depthBias = 1.0 - depthBias * depthBias;
            
            newView.xy *= depthBias;
            newView.xy *= Depth;
            
            const int binarySearchSteps = 10;
            
            newView /= newView.z * linearSearchSteps;
            
            //produces depth
            int i;
            for( i=0; i<linearSearchSteps; i++ ){
            float tex = tex2D(HeightMap, p.xy).r;
            if (p.z<tex) p+=newView;
            }
            
            for( i=0; i<binarySearchSteps; i++ ){
            newView *= 0.5;
            float tex = tex2D(HeightMap, p.xy).r;
            if(p.z < tex) p+= newView;
            else p -= newView;
            }
            return p;
            }
            
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
                float2 node_9428 = Relief( mul( tangentTransform, viewDirection ).xyz.rgb , _ParallaxMap , (-1*_Parallax) , _Quality , i.uv0 ).rg;
                float3 node_9374 = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_9428, _BumpMap)));
                float3 normalLocal = lerp(float3(0.5,0.5,1),node_9374.rgb,_BumpScale);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float4 node_8130 = tex2D(_MetallicGlossMap,TRANSFORM_TEX(node_9428, _MetallicGlossMap));
                float gloss = (node_8130.a*_Shininess);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = (node_8130.rgb*_SpecularPower*_SpecColor.rgb);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow);
                float3 specular = directSpecular * specularColor;
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float3 w = (_LightWrapColor.rgb*_LightWrapPower*_LightWrap)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 directDiffuse = forwardLight * attenColor;
                float4 node_8780 = tex2D(_MainTex,TRANSFORM_TEX(node_9428, _MainTex));
                float3 diffuse = directDiffuse * (node_8780.rgb*_Color.rgb*_Diffusepower);
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
