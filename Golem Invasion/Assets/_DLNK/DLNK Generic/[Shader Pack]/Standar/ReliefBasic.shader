// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.04 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.04;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:2,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:333,x:33196,y:32696,varname:node_333,prsc:2|diff-8144-RGB;n:type:ShaderForge.SFN_Code,id:2695,x:32090,y:32623,varname:node_2695,prsc:2,code:dgBpAGUAdwBEAGkAcgAgAD0AIABuAG8AcgBtAGEAbABpAHoAZQAoAHYAaQBlAHcARABpAHIAKQA7AAoAZgBsAG8AYQB0ADMAIABwACAAPQAgAGYAbABvAGEAdAAzACgAVQBWACwAIAAwACkAOwAKAGYAbABvAGEAdAAzACAAbgBlAHcAVgBpAGUAdwAgAD0AIABuAG8AcgBtAGEAbABpAHoAZQAoAHYAaQBlAHcARABpAHIAIAAqACAALQAxACkAOwAKAG4AZQB3AFYAaQBlAHcALgB6ACAAPQAgAGEAYgBzACgAbgBlAHcAVgBpAGUAdwAuAHoAKQA7AAoACgBmAGwAbwBhAHQAIABkAGUAcAB0AGgAQgBpAGEAcwAgAD0AIAAxAC4AMAAgAC0AIABuAGUAdwBWAGkAZQB3AC4AegA7AAoAZABlAHAAdABoAEIAaQBhAHMAIAAqAD0AIABkAGUAcAB0AGgAQgBpAGEAcwA7AAoAZABlAHAAdABoAEIAaQBhAHMAIAAqAD0AIABkAGUAcAB0AGgAQgBpAGEAcwA7AAoAZABlAHAAdABoAEIAaQBhAHMAIAA9ACAAMQAuADAAIAAtACAAZABlAHAAdABoAEIAaQBhAHMAIAAqACAAZABlAHAAdABoAEIAaQBhAHMAOwAKAAoAbgBlAHcAVgBpAGUAdwAuAHgAeQAgACoAPQAgAGQAZQBwAHQAaABCAGkAYQBzADsACgBuAGUAdwBWAGkAZQB3AC4AeAB5ACAAKgA9ACAARABlAHAAdABoADsACgAKAGMAbwBuAHMAdAAgAGkAbgB0ACAAYgBpAG4AYQByAHkAUwBlAGEAcgBjAGgAUwB0AGUAcABzACAAPQAgADEAMAA7AAoACgBuAGUAdwBWAGkAZQB3ACAALwA9ACAAbgBlAHcAVgBpAGUAdwAuAHoAIAAqACAAbABpAG4AZQBhAHIAUwBlAGEAcgBjAGgAUwB0AGUAcABzADsACgAKAC8ALwBwAHIAbwBkAHUAYwBlAHMAIABkAGUAcAB0AGgACgBpAG4AdAAgAGkAOwAKAGYAbwByACgAIABpAD0AMAA7ACAAaQA8AGwAaQBuAGUAYQByAFMAZQBhAHIAYwBoAFMAdABlAHAAcwA7ACAAaQArACsAIAApAHsACgBmAGwAbwBhAHQAIAB0AGUAeAAgAD0AIAB0AGUAeAAyAEQAKABIAGUAaQBnAGgAdABNAGEAcAAsACAAcAAuAHgAeQApAC4AcgA7AAoAaQBmACAAKABwAC4AegA8AHQAZQB4ACkAIABwACsAPQBuAGUAdwBWAGkAZQB3ADsACgB9AAoACgBmAG8AcgAoACAAaQA9ADAAOwAgAGkAPABiAGkAbgBhAHIAeQBTAGUAYQByAGMAaABTAHQAZQBwAHMAOwAgAGkAKwArACAAKQB7AAoAbgBlAHcAVgBpAGUAdwAgACoAPQAgADAALgA1ADsACgBmAGwAbwBhAHQAIAB0AGUAeAAgAD0AIAB0AGUAeAAyAEQAKABIAGUAaQBnAGgAdABNAGEAcAAsACAAcAAuAHgAeQApAC4AcgA7AAoAaQBmACgAcAAuAHoAIAA8ACAAdABlAHgAKQAgAHAAKwA9ACAAbgBlAHcAVgBpAGUAdwA7AAoAZQBsAHMAZQAgAHAAIAAtAD0AIABuAGUAdwBWAGkAZQB3ADsACgB9AAoAcgBlAHQAdQByAG4AIABwADsA,output:2,fname:Relief,width:506,height:514,input:10,input:12,input:0,input:0,input:9,input_1_label:viewDir,input_2_label:HeightMap,input_3_label:Depth,input_4_label:linearSearchSteps,input_5_label:UV|A-3224-XYZ,B-8608-TEX,C-1388-OUT,D-1703-OUT,E-7405-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:7405,x:31802,y:32912,varname:node_7405,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:1703,x:31802,y:32855,ptovrint:False,ptlb:Quality,ptin:_Quality,varname:node_1703,prsc:2,glob:False,v1:60;n:type:ShaderForge.SFN_ValueProperty,id:134,x:31686,y:32782,ptovrint:False,ptlb:Parallax,ptin:_Parallax,varname:node_134,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Tex2dAsset,id:8608,x:31802,y:32595,ptovrint:False,ptlb:Parallax Map,ptin:_ParallaxMap,varname:node_8608,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Transform,id:3224,x:31802,y:32391,varname:node_3224,prsc:2,tffrom:0,tfto:2|IN-2803-OUT;n:type:ShaderForge.SFN_ViewVector,id:2803,x:31621,y:32391,varname:node_2803,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:3086,x:32694,y:32638,varname:node_3086,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-2695-OUT;n:type:ShaderForge.SFN_Tex2d,id:8144,x:32902,y:32696,ptovrint:False,ptlb:Main Tex,ptin:_MainTex,varname:node_8144,prsc:2,ntxv:0,isnm:False|UVIN-3086-OUT;n:type:ShaderForge.SFN_Negate,id:1388,x:31958,y:32779,varname:node_1388,prsc:2|IN-134-OUT;proporder:1703-134-8608-8144;pass:END;sub:END;*/

Shader "DLNK/Standar/ReliefDiffuse" {
    Properties {
        _Quality ("Quality", Float ) = 60
        _Parallax ("Parallax", Float ) = 0
        _ParallaxMap ("Parallax Map", 2D) = "white" {}
        _MainTex ("Main Tex", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
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
            
            uniform float _Quality;
            uniform float _Parallax;
            uniform sampler2D _ParallaxMap; uniform float4 _ParallaxMap_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
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
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 indirectDiffuse = float3(0,0,0);
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float2 node_3086 = Relief( mul( tangentTransform, viewDirection ).xyz.rgb , _ParallaxMap , (-1*_Parallax) , _Quality , i.uv0 ).rg;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_3086, _MainTex));
                float3 diffuse = (directDiffuse + indirectDiffuse) * _MainTex_var.rgb;
/// Final Color:
                float3 finalColor = diffuse;
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
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
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
            
            uniform float _Quality;
            uniform float _Parallax;
            uniform sampler2D _ParallaxMap; uniform float4 _ParallaxMap_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
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
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float2 node_3086 = Relief( mul( tangentTransform, viewDirection ).xyz.rgb , _ParallaxMap , (-1*_Parallax) , _Quality , i.uv0 ).rg;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_3086, _MainTex));
                float3 diffuse = directDiffuse * _MainTex_var.rgb;
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
