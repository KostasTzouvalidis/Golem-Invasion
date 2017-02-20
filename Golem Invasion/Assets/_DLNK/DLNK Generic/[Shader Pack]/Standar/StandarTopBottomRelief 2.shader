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
/*SF_DATA;ver:1.04;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:True,lprd:True,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:2,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:958,x:34015,y:33218,varname:node_958,prsc:2|diff-6902-OUT,spec-8594-OUT,gloss-438-OUT,normal-198-OUT,amdfl-17-OUT,amspl-3938-OUT,difocc-9952-OUT,spcocc-9952-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:954,x:33070,y:32586,ptovrint:False,ptlb:Main Tex,ptin:_MainTex,varname:node_954,tex:6d639ef2ce2ef59419acbc0072552b5a,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8780,x:33248,y:32586,varname:node_8780,prsc:2,tex:6d639ef2ce2ef59419acbc0072552b5a,ntxv:0,isnm:False|UVIN-8520-OUT,TEX-954-TEX;n:type:ShaderForge.SFN_ValueProperty,id:2195,x:33248,y:32354,ptovrint:False,ptlb:Diffuse power,ptin:_Diffusepower,varname:node_2195,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Color,id:550,x:33248,y:32430,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_550,prsc:2,glob:False,c1:0.6397059,c2:0.6397059,c3:0.6397059,c4:1;n:type:ShaderForge.SFN_Multiply,id:9466,x:33248,y:32715,varname:node_9466,prsc:2|A-8780-RGB,B-550-RGB,C-2195-OUT;n:type:ShaderForge.SFN_Tex2d,id:806,x:34366,y:32699,ptovrint:False,ptlb:Occlusion Map,ptin:_OcclusionMap,varname:node_806,prsc:2,tex:9c7142a293d0f2345a756657824034ba,ntxv:0,isnm:False|UVIN-9428-OUT;n:type:ShaderForge.SFN_Power,id:2561,x:34114,y:32752,varname:node_2561,prsc:2|VAL-806-A,EXP-1872-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1872,x:33631,y:32721,ptovrint:False,ptlb:AO Power,ptin:_AOPower,varname:node_1872,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:4025,x:32963,y:33006,ptovrint:False,ptlb:Specular Power,ptin:_SpecularPower,varname:node_4025,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Slider,id:4955,x:32725,y:33169,ptovrint:False,ptlb:Shininess,ptin:_Shininess,varname:node_4955,prsc:2,min:0,cur:0.5,max:3;n:type:ShaderForge.SFN_Tex2d,id:9374,x:31963,y:33453,varname:node_9374,prsc:2,ntxv:3,isnm:True|UVIN-8520-OUT,TEX-7104-TEX;n:type:ShaderForge.SFN_Cubemap,id:1845,x:32909,y:33507,ptovrint:False,ptlb:IBL Map,ptin:_IBLMap,varname:node_1845,prsc:2,cube:f466cf7415226e046b096197eb7341aa,pvfc:0|MIP-9338-OUT;n:type:ShaderForge.SFN_Tex2d,id:8130,x:32803,y:32953,varname:node_8130,prsc:2,ntxv:0,isnm:False|UVIN-8520-OUT,TEX-3287-TEX;n:type:ShaderForge.SFN_Multiply,id:9454,x:33142,y:32919,varname:node_9454,prsc:2|A-8130-RGB,B-4025-OUT,C-782-RGB;n:type:ShaderForge.SFN_Multiply,id:6757,x:33059,y:33108,varname:node_6757,prsc:2|A-8130-A,B-4955-OUT;n:type:ShaderForge.SFN_Multiply,id:9811,x:33105,y:33507,varname:node_9811,prsc:2|A-1845-RGB,B-1845-A,C-4948-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4948,x:32909,y:33680,ptovrint:False,ptlb:IBL Power,ptin:_IBLPower,varname:node_4948,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_RemapRange,id:9338,x:32746,y:33528,varname:node_9338,prsc:2,frmn:0,frmx:1,tomn:6,tomx:1|IN-438-OUT;n:type:ShaderForge.SFN_Color,id:782,x:32940,y:32816,ptovrint:False,ptlb:Spec Color,ptin:_SpecColor,varname:node_782,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2dAsset,id:3287,x:32617,y:32936,ptovrint:False,ptlb:Metallic Gloss Map,ptin:_MetallicGlossMap,varname:node_3287,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:7104,x:31748,y:33363,ptovrint:False,ptlb:Bump Map,ptin:_BumpMap,varname:node_7104,ntxv:3,isnm:True;n:type:ShaderForge.SFN_ToggleProperty,id:9819,x:33355,y:33607,ptovrint:False,ptlb:Specular IBL,ptin:_SpecularIBL,varname:node_9819,prsc:2,on:False;n:type:ShaderForge.SFN_Multiply,id:3938,x:33355,y:33442,varname:node_3938,prsc:2|A-9811-OUT,B-9819-OUT;n:type:ShaderForge.SFN_Lerp,id:198,x:32478,y:33508,varname:node_198,prsc:2|A-7653-RGB,B-9374-RGB,T-2509-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:306,x:31658,y:32474,ptovrint:False,ptlb:Parallax Map,ptin:_ParallaxMap,varname:node_306,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:9327,x:31903,y:32658,ptovrint:False,ptlb:Parallax,ptin:_Parallax,varname:node_9327,prsc:2,glob:False,v1:0.05;n:type:ShaderForge.SFN_Negate,id:2865,x:31887,y:32474,varname:node_2865,prsc:2|IN-9327-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4975,x:31903,y:32743,ptovrint:False,ptlb:Quality,ptin:_Quality,varname:node_4975,prsc:2,glob:False,v1:50;n:type:ShaderForge.SFN_Transform,id:3272,x:31925,y:32266,varname:node_3272,prsc:2,tffrom:0,tfto:2|IN-5382-OUT;n:type:ShaderForge.SFN_ViewVector,id:5382,x:31734,y:32283,varname:node_5382,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:3906,x:31696,y:32856,varname:node_3906,prsc:2,uv:0;n:type:ShaderForge.SFN_Code,id:7682,x:32171,y:32334,varname:node_7682,prsc:2,code:dgBpAGUAdwBEAGkAcgAgAD0AIABuAG8AcgBtAGEAbABpAHoAZQAoAHYAaQBlAHcARABpAHIAKQA7AAoAZgBsAG8AYQB0ADMAIABwACAAPQAgAGYAbABvAGEAdAAzACgAVQBWACwAIAAwACkAOwAKAGYAbABvAGEAdAAzACAAbgBlAHcAVgBpAGUAdwAgAD0AIABuAG8AcgBtAGEAbABpAHoAZQAoAHYAaQBlAHcARABpAHIAIAAqACAALQAxACkAOwAKAG4AZQB3AFYAaQBlAHcALgB6ACAAPQAgAGEAYgBzACgAbgBlAHcAVgBpAGUAdwAuAHoAKQA7AAoACgBmAGwAbwBhAHQAIABkAGUAcAB0AGgAQgBpAGEAcwAgAD0AIAAxAC4AMAAgAC0AIABuAGUAdwBWAGkAZQB3AC4AegA7AAoAZABlAHAAdABoAEIAaQBhAHMAIAAqAD0AIABkAGUAcAB0AGgAQgBpAGEAcwA7AAoAZABlAHAAdABoAEIAaQBhAHMAIAAqAD0AIABkAGUAcAB0AGgAQgBpAGEAcwA7AAoAZABlAHAAdABoAEIAaQBhAHMAIAA9ACAAMQAuADAAIAAtACAAZABlAHAAdABoAEIAaQBhAHMAIAAqACAAZABlAHAAdABoAEIAaQBhAHMAOwAKAAoAbgBlAHcAVgBpAGUAdwAuAHgAeQAgACoAPQAgAGQAZQBwAHQAaABCAGkAYQBzADsACgBuAGUAdwBWAGkAZQB3AC4AeAB5ACAAKgA9ACAARABlAHAAdABoADsACgAKAGMAbwBuAHMAdAAgAGkAbgB0ACAAYgBpAG4AYQByAHkAUwBlAGEAcgBjAGgAUwB0AGUAcABzACAAPQAgADEAMAA7AAoACgBuAGUAdwBWAGkAZQB3ACAALwA9ACAAbgBlAHcAVgBpAGUAdwAuAHoAIAAqACAAbABpAG4AZQBhAHIAUwBlAGEAcgBjAGgAUwB0AGUAcABzADsACgAKAC8ALwBwAHIAbwBkAHUAYwBlAHMAIABkAGUAcAB0AGgACgBpAG4AdAAgAGkAOwAKAGYAbwByACgAIABpAD0AMAA7ACAAaQA8AGwAaQBuAGUAYQByAFMAZQBhAHIAYwBoAFMAdABlAHAAcwA7ACAAaQArACsAIAApAHsACgBmAGwAbwBhAHQAIAB0AGUAeAAgAD0AIAB0AGUAeAAyAEQAKABIAGUAaQBnAGgAdABNAGEAcAAsACAAcAAuAHgAeQApAC4AcgA7AAoAaQBmACAAKABwAC4AegA8AHQAZQB4ACkAIABwACsAPQBuAGUAdwBWAGkAZQB3ADsACgB9AAoACgBmAG8AcgAoACAAaQA9ADAAOwAgAGkAPABiAGkAbgBhAHIAeQBTAGUAYQByAGMAaABTAHQAZQBwAHMAOwAgAGkAKwArACAAKQB7AAoAbgBlAHcAVgBpAGUAdwAgACoAPQAgADAALgA1ADsACgBmAGwAbwBhAHQAIAB0AGUAeAAgAD0AIAB0AGUAeAAyAEQAKABIAGUAaQBnAGgAdABNAGEAcAAsACAAcAAuAHgAeQApAC4AcgA7AAoAaQBmACgAcAAuAHoAIAA8ACAAdABlAHgAKQAgAHAAKwA9ACAAbgBlAHcAVgBpAGUAdwA7AAoAZQBsAHMAZQAgAHAAIAAtAD0AIABuAGUAdwBWAGkAZQB3ADsACgB9AAoAcgBlAHQAdQByAG4AIABwADsA,output:2,fname:Relief,width:367,height:459,input:10,input:12,input:0,input:0,input:9,input_1_label:viewDir,input_2_label:HeightMap,input_3_label:Depth,input_4_label:linearSearchSteps,input_5_label:UV|A-3272-XYZ,B-306-TEX,C-2865-OUT,D-4975-OUT,E-3906-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:9428,x:32654,y:32602,varname:node_9428,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-7682-OUT;n:type:ShaderForge.SFN_NormalVector,id:3389,x:32303,y:32050,prsc:2,pt:False;n:type:ShaderForge.SFN_ComponentMask,id:3702,x:32468,y:32050,varname:node_3702,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-3389-OUT;n:type:ShaderForge.SFN_Lerp,id:6902,x:33561,y:32802,varname:node_6902,prsc:2|A-9425-OUT,B-9466-OUT,T-2509-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1982,x:32621,y:32151,ptovrint:False,ptlb:TopBottom Level,ptin:_TopBottomLevel,varname:node_1982,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Color,id:8583,x:34122,y:32255,ptovrint:False,ptlb:UpColor,ptin:_UpColor,varname:node_8583,prsc:2,glob:False,c1:0.9264706,c2:0.04087368,c3:0.04087368,c4:1;n:type:ShaderForge.SFN_Multiply,id:7023,x:33057,y:32022,varname:node_7023,prsc:2|A-6293-OUT,B-7841-OUT;n:type:ShaderForge.SFN_Clamp01,id:2509,x:33715,y:32113,varname:node_2509,prsc:2|IN-2909-OUT;n:type:ShaderForge.SFN_Blend,id:7841,x:32820,y:32038,varname:node_7841,prsc:2,blmd:10,clmp:True|SRC-3702-OUT,DST-1982-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6293,x:32881,y:31972,ptovrint:False,ptlb:TopBottom Power,ptin:_TopBottomPower,varname:node_6293,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Blend,id:6024,x:33326,y:32042,varname:node_6024,prsc:2,blmd:20,clmp:True|SRC-7023-OUT,DST-4656-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5105,x:33148,y:31863,ptovrint:False,ptlb:AO Blend Power,ptin:_AOBlendPower,varname:node_5105,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:9425,x:34312,y:32461,varname:node_9425,prsc:2|A-8583-RGB,B-2256-RGB;n:type:ShaderForge.SFN_Tex2d,id:2256,x:34294,y:32226,ptovrint:False,ptlb:Top Texture,ptin:_TopTexture,varname:node_2256,prsc:2,ntxv:0,isnm:False|UVIN-5387-OUT;n:type:ShaderForge.SFN_Lerp,id:8520,x:32852,y:32612,varname:node_8520,prsc:2|A-5387-OUT,B-9428-OUT,T-2509-OUT;n:type:ShaderForge.SFN_Lerp,id:2130,x:33426,y:33154,varname:node_2130,prsc:2|A-1766-OUT,B-6561-OUT,T-2509-OUT;n:type:ShaderForge.SFN_Append,id:6561,x:33236,y:33083,varname:node_6561,prsc:2|A-9454-OUT,B-6757-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8594,x:33615,y:33081,varname:node_8594,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-2130-OUT;n:type:ShaderForge.SFN_ComponentMask,id:438,x:33626,y:33214,varname:node_438,prsc:2,cc1:3,cc2:-1,cc3:-1,cc4:-1|IN-2130-OUT;n:type:ShaderForge.SFN_Multiply,id:2519,x:32338,y:33173,varname:node_2519,prsc:2|A-1187-RGB,B-3877-OUT,C-5656-RGB;n:type:ShaderForge.SFN_Tex2d,id:1187,x:32141,y:33007,ptovrint:False,ptlb:Top Spec Tex,ptin:_TopSpecTex,varname:node_1187,prsc:2,ntxv:0,isnm:False|UVIN-5387-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3877,x:32141,y:33193,ptovrint:False,ptlb:Top Spec,ptin:_TopSpec,varname:node_3877,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Append,id:1766,x:32568,y:33266,varname:node_1766,prsc:2|A-2519-OUT,B-1312-OUT;n:type:ShaderForge.SFN_Color,id:5656,x:32338,y:33014,ptovrint:False,ptlb:Top Spec Color,ptin:_TopSpecColor,varname:node_5656,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Slider,id:1312,x:32181,y:33339,ptovrint:False,ptlb:Top Shininess,ptin:_TopShininess,varname:node_1312,prsc:2,min:0,cur:0.5,max:3;n:type:ShaderForge.SFN_Tex2d,id:7653,x:32036,y:33632,ptovrint:False,ptlb:Top Bump,ptin:_TopBump,varname:node_7653,prsc:2,ntxv:3,isnm:True|UVIN-5387-OUT;n:type:ShaderForge.SFN_Lerp,id:9952,x:34151,y:32935,varname:node_9952,prsc:2|A-2019-OUT,B-2561-OUT,T-2509-OUT;n:type:ShaderForge.SFN_Power,id:2019,x:34381,y:33145,varname:node_2019,prsc:2|VAL-4193-A,EXP-5093-OUT;n:type:ShaderForge.SFN_Tex2d,id:4193,x:34573,y:33160,ptovrint:False,ptlb:Top AO,ptin:_TopAO,varname:node_4193,prsc:2,ntxv:0,isnm:False|UVIN-5387-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5093,x:34377,y:33084,ptovrint:False,ptlb:TopAO Power,ptin:_TopAOPower,varname:node_5093,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Power,id:4656,x:33697,y:31893,varname:node_4656,prsc:2|VAL-7158-OUT,EXP-5105-OUT;n:type:ShaderForge.SFN_Clamp01,id:7158,x:33830,y:32363,varname:node_7158,prsc:2|IN-2561-OUT;n:type:ShaderForge.SFN_Power,id:2909,x:33505,y:32094,varname:node_2909,prsc:2|VAL-6024-OUT,EXP-6293-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4921,x:31947,y:31677,varname:node_4921,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-1509-XYZ;n:type:ShaderForge.SFN_FragmentPosition,id:1509,x:31806,y:31694,varname:node_1509,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:9486,x:31806,y:31862,ptovrint:False,ptlb:World Tiling,ptin:_WorldTiling,varname:node_9486,prsc:2,glob:False,v1:5;n:type:ShaderForge.SFN_Multiply,id:5387,x:32099,y:31687,varname:node_5387,prsc:2|A-4921-OUT,B-9486-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2390,x:33617,y:33663,ptovrint:False,ptlb:Ambient IBL,ptin:_AmbientIBL,varname:node_2390,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:17,x:33698,y:33464,varname:node_17,prsc:2|A-3938-OUT,B-2390-OUT;proporder:550-954-2195-7104-3287-782-4025-4955-9819-1845-4948-2390-1872-806-306-9327-4975-8583-1982-6293-5105-2256-7653-1187-3877-5656-1312-4193-5093-9486;pass:END;sub:END;*/

Shader "DLNK/Standar/TopBottomRelief_WUV" {
    Properties {
        _Color ("Color", Color) = (0.6397059,0.6397059,0.6397059,1)
        _MainTex ("Main Tex", 2D) = "white" {}
        _Diffusepower ("Diffuse power", Float ) = 1
        _BumpMap ("Bump Map", 2D) = "bump" {}
        _MetallicGlossMap ("Metallic Gloss Map", 2D) = "white" {}
        _SpecColor ("Spec Color", Color) = (0.5,0.5,0.5,1)
        _SpecularPower ("Specular Power", Float ) = 1
        _Shininess ("Shininess", Range(0, 3)) = 0.5
        [MaterialToggle] _SpecularIBL ("Specular IBL", Float ) = 0
        _IBLMap ("IBL Map", Cube) = "_Skybox" {}
        _IBLPower ("IBL Power", Float ) = 2
        _AmbientIBL ("Ambient IBL", Float ) = 1
        _AOPower ("AO Power", Float ) = 1
        _OcclusionMap ("Occlusion Map", 2D) = "white" {}
        _ParallaxMap ("Parallax Map", 2D) = "white" {}
        _Parallax ("Parallax", Float ) = 0.05
        _Quality ("Quality", Float ) = 50
        _UpColor ("UpColor", Color) = (0.9264706,0.04087368,0.04087368,1)
        _TopBottomLevel ("TopBottom Level", Float ) = 1
        _TopBottomPower ("TopBottom Power", Float ) = 1
        _AOBlendPower ("AO Blend Power", Float ) = 1
        _TopTexture ("Top Texture", 2D) = "white" {}
        _TopBump ("Top Bump", 2D) = "bump" {}
        _TopSpecTex ("Top Spec Tex", 2D) = "white" {}
        _TopSpec ("Top Spec", Float ) = 1
        _TopSpecColor ("Top Spec Color", Color) = (0.5,0.5,0.5,1)
        _TopShininess ("Top Shininess", Range(0, 3)) = 0.5
        _TopAO ("Top AO", 2D) = "white" {}
        _TopAOPower ("TopAO Power", Float ) = 1
        _WorldTiling ("World Tiling", Float ) = 5
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
            uniform float _SpecularPower;
            uniform float _Shininess;
            uniform samplerCUBE _IBLMap;
            uniform float _IBLPower;
            uniform sampler2D _MetallicGlossMap; uniform float4 _MetallicGlossMap_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform fixed _SpecularIBL;
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
            
            uniform float _TopBottomLevel;
            uniform float4 _UpColor;
            uniform float _TopBottomPower;
            uniform float _AOBlendPower;
            uniform sampler2D _TopTexture; uniform float4 _TopTexture_ST;
            uniform sampler2D _TopSpecTex; uniform float4 _TopSpecTex_ST;
            uniform float _TopSpec;
            uniform float4 _TopSpecColor;
            uniform float _TopShininess;
            uniform sampler2D _TopBump; uniform float4 _TopBump_ST;
            uniform sampler2D _TopAO; uniform float4 _TopAO_ST;
            uniform float _TopAOPower;
            uniform float _WorldTiling;
            uniform float _AmbientIBL;
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
                float2 node_5387 = (i.posWorld.rgb.rb*_WorldTiling);
                float3 _TopBump_var = UnpackNormal(tex2D(_TopBump,TRANSFORM_TEX(node_5387, _TopBump)));
                float2 node_9428 = Relief( mul( tangentTransform, viewDirection ).xyz.rgb , _ParallaxMap , (-1*_Parallax) , _Quality , i.uv0 ).rg;
                float4 _OcclusionMap_var = tex2D(_OcclusionMap,TRANSFORM_TEX(node_9428, _OcclusionMap));
                float node_2561 = pow(_OcclusionMap_var.a,_AOPower);
                float node_2509 = saturate(pow(saturate((pow(saturate(node_2561),_AOBlendPower)/(_TopBottomPower*saturate(( _TopBottomLevel > 0.5 ? (1.0-(1.0-2.0*(_TopBottomLevel-0.5))*(1.0-i.normalDir.g)) : (2.0*_TopBottomLevel*i.normalDir.g) ))))),_TopBottomPower));
                float2 node_8520 = lerp(node_5387,node_9428,node_2509);
                float3 node_9374 = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_8520, _BumpMap)));
                float3 normalLocal = lerp(_TopBump_var.rgb,node_9374.rgb,node_2509);
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
                float4 _TopSpecTex_var = tex2D(_TopSpecTex,TRANSFORM_TEX(node_5387, _TopSpecTex));
                float4 node_8130 = tex2D(_MetallicGlossMap,TRANSFORM_TEX(node_8520, _MetallicGlossMap));
                float4 node_2130 = lerp(float4((_TopSpecTex_var.rgb*_TopSpec*_TopSpecColor.rgb),_TopShininess),float4((node_8130.rgb*_SpecularPower*_SpecColor.rgb),(node_8130.a*_Shininess)),node_2509);
                float node_438 = node_2130.a;
                float gloss = node_438;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 _TopAO_var = tex2D(_TopAO,TRANSFORM_TEX(node_5387, _TopAO));
                float node_9952 = lerp(pow(_TopAO_var.a,_TopAOPower),node_2561,node_2509);
                float3 specularAO = float3(node_9952,node_9952,node_9952);
                float4 _IBLMap_var = texCUBElod(_IBLMap,float4(viewReflectDirection,(node_438*-5.0+6.0)));
                float3 node_3938 = ((_IBLMap_var.rgb*_IBLMap_var.a*_IBLPower)*_SpecularIBL);
                float3 specularColor = node_2130.rgb;
                #if !defined(LIGHTMAP_OFF) && defined(DIRLIGHTMAP_OFF)
                    float3 directSpecular = float3(0,0,0);
                #else
                    float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow);
                #endif
                float3 indirectSpecular = (0 + node_3938) * specularAO;
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
                indirectDiffuse += (node_3938*_AmbientIBL); // Diffuse Ambient Light
                #if SHOULD_SAMPLE_SH_PROBE
                    indirectDiffuse += i.shLight; // Per-Vertex Light Probes / Spherical harmonics
                #endif
                indirectDiffuse *= float3(node_9952,node_9952,node_9952); // Diffuse AO
                float4 _TopTexture_var = tex2D(_TopTexture,TRANSFORM_TEX(node_5387, _TopTexture));
                float4 node_8780 = tex2D(_MainTex,TRANSFORM_TEX(node_8520, _MainTex));
                float3 diffuse = (directDiffuse + indirectDiffuse) * lerp((_UpColor.rgb*_TopTexture_var.rgb),(node_8780.rgb*_Color.rgb*_Diffusepower),node_2509);
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
            uniform sampler2D _OcclusionMap; uniform float4 _OcclusionMap_ST;
            uniform float _AOPower;
            uniform float _SpecularPower;
            uniform float _Shininess;
            uniform sampler2D _MetallicGlossMap; uniform float4 _MetallicGlossMap_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
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
            
            uniform float _TopBottomLevel;
            uniform float4 _UpColor;
            uniform float _TopBottomPower;
            uniform float _AOBlendPower;
            uniform sampler2D _TopTexture; uniform float4 _TopTexture_ST;
            uniform sampler2D _TopSpecTex; uniform float4 _TopSpecTex_ST;
            uniform float _TopSpec;
            uniform float4 _TopSpecColor;
            uniform float _TopShininess;
            uniform sampler2D _TopBump; uniform float4 _TopBump_ST;
            uniform float _WorldTiling;
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
                float2 node_5387 = (i.posWorld.rgb.rb*_WorldTiling);
                float3 _TopBump_var = UnpackNormal(tex2D(_TopBump,TRANSFORM_TEX(node_5387, _TopBump)));
                float2 node_9428 = Relief( mul( tangentTransform, viewDirection ).xyz.rgb , _ParallaxMap , (-1*_Parallax) , _Quality , i.uv0 ).rg;
                float4 _OcclusionMap_var = tex2D(_OcclusionMap,TRANSFORM_TEX(node_9428, _OcclusionMap));
                float node_2561 = pow(_OcclusionMap_var.a,_AOPower);
                float node_2509 = saturate(pow(saturate((pow(saturate(node_2561),_AOBlendPower)/(_TopBottomPower*saturate(( _TopBottomLevel > 0.5 ? (1.0-(1.0-2.0*(_TopBottomLevel-0.5))*(1.0-i.normalDir.g)) : (2.0*_TopBottomLevel*i.normalDir.g) ))))),_TopBottomPower));
                float2 node_8520 = lerp(node_5387,node_9428,node_2509);
                float3 node_9374 = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_8520, _BumpMap)));
                float3 normalLocal = lerp(_TopBump_var.rgb,node_9374.rgb,node_2509);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float4 _TopSpecTex_var = tex2D(_TopSpecTex,TRANSFORM_TEX(node_5387, _TopSpecTex));
                float4 node_8130 = tex2D(_MetallicGlossMap,TRANSFORM_TEX(node_8520, _MetallicGlossMap));
                float4 node_2130 = lerp(float4((_TopSpecTex_var.rgb*_TopSpec*_TopSpecColor.rgb),_TopShininess),float4((node_8130.rgb*_SpecularPower*_SpecColor.rgb),(node_8130.a*_Shininess)),node_2509);
                float node_438 = node_2130.a;
                float gloss = node_438;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = node_2130.rgb;
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow);
                float3 specular = directSpecular * specularColor;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _TopTexture_var = tex2D(_TopTexture,TRANSFORM_TEX(node_5387, _TopTexture));
                float4 node_8780 = tex2D(_MainTex,TRANSFORM_TEX(node_8520, _MainTex));
                float3 diffuse = directDiffuse * lerp((_UpColor.rgb*_TopTexture_var.rgb),(node_8780.rgb*_Color.rgb*_Diffusepower),node_2509);
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
