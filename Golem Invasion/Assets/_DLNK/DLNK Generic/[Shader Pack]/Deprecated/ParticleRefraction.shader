// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.04 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.04;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:1,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:False,dith:2,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:34284,y:32720,varname:node_1,prsc:2|diff-18-OUT,spec-26-OUT,gloss-27-OUT,normal-14-OUT,alpha-24-OUT,refract-4789-OUT,voffset-168-OUT;n:type:ShaderForge.SFN_TexCoord,id:5,x:32852,y:32711,varname:node_5,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:6,x:33055,y:32834,varname:node_6,prsc:2|A-5-UVOUT,B-7-OUT;n:type:ShaderForge.SFN_Vector1,id:7,x:32852,y:32868,varname:node_7,prsc:2,v1:1;n:type:ShaderForge.SFN_Tex2d,id:8,x:33277,y:32800,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_8709,prsc:2,ntxv:3,isnm:True|UVIN-6-OUT;n:type:ShaderForge.SFN_Multiply,id:9,x:33633,y:33039,varname:node_9,prsc:2|A-12-OUT,B-32-OUT;n:type:ShaderForge.SFN_ComponentMask,id:12,x:33337,y:33008,varname:node_12,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8-RGB;n:type:ShaderForge.SFN_Multiply,id:13,x:33255,y:33198,varname:node_13,prsc:2|A-16-OUT,B-17-OUT;n:type:ShaderForge.SFN_Lerp,id:14,x:33706,y:32861,varname:node_14,prsc:2|A-15-OUT,B-8-RGB,T-16-OUT;n:type:ShaderForge.SFN_Vector3,id:15,x:33461,y:32635,varname:node_15,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Slider,id:16,x:32913,y:33170,ptovrint:False,ptlb:Refraction Power,ptin:_RefractionPower,varname:node_5085,prsc:2,min:0,cur:1,max:20;n:type:ShaderForge.SFN_Vector1,id:17,x:33071,y:33261,varname:node_17,prsc:2,v1:0.2;n:type:ShaderForge.SFN_ConstantLerp,id:18,x:33752,y:32597,varname:node_18,prsc:2,a:0,b:1|IN-25-OUT;n:type:ShaderForge.SFN_Fresnel,id:20,x:33423,y:32474,varname:node_20,prsc:2;n:type:ShaderForge.SFN_Slider,id:23,x:33429,y:32354,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_5474,prsc:2,min:0,cur:0.4285714,max:1;n:type:ShaderForge.SFN_Multiply,id:24,x:33848,y:32448,varname:node_24,prsc:2|A-23-OUT,B-25-OUT;n:type:ShaderForge.SFN_OneMinus,id:25,x:33586,y:32456,varname:node_25,prsc:2|IN-20-OUT;n:type:ShaderForge.SFN_ValueProperty,id:26,x:33706,y:32759,ptovrint:False,ptlb:Specular,ptin:_Specular,varname:node_9457,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:27,x:33841,y:32808,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_6663,prsc:2,glob:False,v1:0.5;n:type:ShaderForge.SFN_Fresnel,id:31,x:33241,y:33432,varname:node_31,prsc:2|EXP-35-OUT;n:type:ShaderForge.SFN_Lerp,id:32,x:33458,y:33184,varname:node_32,prsc:2|A-13-OUT,B-34-OUT,T-31-OUT;n:type:ShaderForge.SFN_Vector1,id:34,x:33003,y:33403,varname:node_34,prsc:2,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:35,x:33040,y:33496,ptovrint:False,ptlb:Refraction Fresnel,ptin:_RefractionFresnel,varname:node_9736,prsc:2,glob:False,v1:0.2;n:type:ShaderForge.SFN_Multiply,id:162,x:33965,y:33251,varname:node_162,prsc:2|A-179-OUT,B-164-A;n:type:ShaderForge.SFN_Tex2d,id:164,x:33728,y:33351,ptovrint:False,ptlb:Vertex Disp,ptin:_VertexDisp,varname:node_1173,prsc:2,ntxv:0,isnm:False|UVIN-6-OUT;n:type:ShaderForge.SFN_ValueProperty,id:165,x:33965,y:33416,ptovrint:False,ptlb:Offset Power,ptin:_OffsetPower,varname:node_4923,prsc:2,glob:False,v1:0.5;n:type:ShaderForge.SFN_SwitchProperty,id:166,x:34071,y:33050,ptovrint:False,ptlb:V Offset On,ptin:_VOffsetOn,varname:node_8972,prsc:2,on:True|A-167-OUT,B-168-OUT;n:type:ShaderForge.SFN_Vector1,id:167,x:33909,y:32988,varname:node_167,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:168,x:34148,y:33212,varname:node_168,prsc:2|A-162-OUT,B-165-OUT;n:type:ShaderForge.SFN_NormalVector,id:179,x:33819,y:33150,prsc:2,pt:False;n:type:ShaderForge.SFN_Time,id:181,x:32626,y:33619,varname:node_181,prsc:2;n:type:ShaderForge.SFN_Min,id:183,x:32888,y:33538,varname:node_183,prsc:2|A-181-TSL,B-187-OUT;n:type:ShaderForge.SFN_ValueProperty,id:187,x:32778,y:33975,ptovrint:False,ptlb:Reflect End,ptin:_ReflectEnd,varname:node_345,prsc:2,glob:False,v1:100;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:188,x:32977,y:33756,varname:node_188,prsc:2|IN-183-OUT,IMIN-189-OUT,IMAX-187-OUT,OMIN-190-OUT,OMAX-189-OUT;n:type:ShaderForge.SFN_Vector1,id:189,x:32806,y:33823,varname:node_189,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:190,x:32806,y:33876,varname:node_190,prsc:2,v1:1;n:type:ShaderForge.SFN_ComponentMask,id:4789,x:33779,y:33029,varname:node_4789,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9-OUT;proporder:8-16-23-26-27-35-166-164-165-187;pass:END;sub:END;*/

Shader "DLNK/Particles/ParticleRefraction" {
    Properties {
        _Normal ("Normal", 2D) = "bump" {}
        _RefractionPower ("Refraction Power", Range(0, 20)) = 1
        _Opacity ("Opacity", Range(0, 1)) = 0.4285714
        _Specular ("Specular", Float ) = 1
        _Gloss ("Gloss", Float ) = 0.5
        _RefractionFresnel ("Refraction Fresnel", Float ) = 0.2
        [MaterialToggle] _VOffsetOn ("V Offset On", Float ) = 0
        _VertexDisp ("Vertex Disp", 2D) = "white" {}
        _OffsetPower ("Offset Power", Float ) = 0.5
        _ReflectEnd ("Reflect End", Float ) = 100
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers xbox360 ps3 flash 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _LightColor0;
            uniform sampler2D _GrabTexture;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _RefractionPower;
            uniform float _Opacity;
            uniform float _Specular;
            uniform float _Gloss;
            uniform float _RefractionFresnel;
            uniform sampler2D _VertexDisp; uniform float4 _VertexDisp_ST;
            uniform float _OffsetPower;
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
                float4 screenPos : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float2 node_6 = (o.uv0*1.0);
                float4 _VertexDisp_var = tex2Dlod(_VertexDisp,float4(TRANSFORM_TEX(node_6, _VertexDisp),0.0,0));
                float3 node_168 = ((v.normal*_VertexDisp_var.a)*_OffsetPower);
                v.vertex.xyz += node_168;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                o.screenPos = o.pos;
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 node_6 = (i.uv0*1.0);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_6, _Normal)));
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (_Normal_var.rgb.rg*lerp((_RefractionPower*0.2),0.0,pow(1.0-max(0,dot(normalDirection, viewDirection)),_RefractionFresnel))).rg;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalLocal = lerp(float3(0,0,1),_Normal_var.rgb,_RefractionPower);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_Specular,_Specular,_Specular);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow);
                float3 specular = directSpecular * specularColor;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 indirectDiffuse = float3(0,0,0);
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float node_25 = (1.0 - (1.0-max(0,dot(normalDirection, viewDirection))));
                float node_18 = lerp(0,1,node_25);
                float3 diffuse = (directDiffuse + indirectDiffuse) * float3(node_18,node_18,node_18);
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(lerp(sceneColor.rgb, finalColor,(_Opacity*node_25)),1);
            }
            ENDCG
        }
        Pass {
            Name "ForwardAdd"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            Fog { Color (0,0,0,0) }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma exclude_renderers xbox360 ps3 flash 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _LightColor0;
            uniform sampler2D _GrabTexture;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _RefractionPower;
            uniform float _Opacity;
            uniform float _Specular;
            uniform float _Gloss;
            uniform float _RefractionFresnel;
            uniform sampler2D _VertexDisp; uniform float4 _VertexDisp_ST;
            uniform float _OffsetPower;
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
                float4 screenPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float2 node_6 = (o.uv0*1.0);
                float4 _VertexDisp_var = tex2Dlod(_VertexDisp,float4(TRANSFORM_TEX(node_6, _VertexDisp),0.0,0));
                float3 node_168 = ((v.normal*_VertexDisp_var.a)*_OffsetPower);
                v.vertex.xyz += node_168;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 node_6 = (i.uv0*1.0);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_6, _Normal)));
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (_Normal_var.rgb.rg*lerp((_RefractionPower*0.2),0.0,pow(1.0-max(0,dot(normalDirection, viewDirection)),_RefractionFresnel))).rg;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalLocal = lerp(float3(0,0,1),_Normal_var.rgb,_RefractionPower);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_Specular,_Specular,_Specular);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow);
                float3 specular = directSpecular * specularColor;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float node_25 = (1.0 - (1.0-max(0,dot(normalDirection, viewDirection))));
                float node_18 = lerp(0,1,node_25);
                float3 diffuse = directDiffuse * float3(node_18,node_18,node_18);
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(finalColor * (_Opacity*node_25),0);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCollector"
            Tags {
                "LightMode"="ShadowCollector"
            }
            
            Fog {Mode Off}
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCOLLECTOR
            #define SHADOW_COLLECTOR_PASS
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcollector
            #pragma exclude_renderers xbox360 ps3 flash 
            #pragma target 3.0
            #pragma glsl
            uniform sampler2D _VertexDisp; uniform float4 _VertexDisp_ST;
            uniform float _OffsetPower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_COLLECTOR;
                float2 uv0 : TEXCOORD5;
                float3 normalDir : TEXCOORD6;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                float2 node_6 = (o.uv0*1.0);
                float4 _VertexDisp_var = tex2Dlod(_VertexDisp,float4(TRANSFORM_TEX(node_6, _VertexDisp),0.0,0));
                float3 node_168 = ((v.normal*_VertexDisp_var.a)*_OffsetPower);
                v.vertex.xyz += node_168;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_COLLECTOR(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                SHADOW_COLLECTOR_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Cull Off
            Offset 1, 1
            
            Fog {Mode Off}
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma exclude_renderers xbox360 ps3 flash 
            #pragma target 3.0
            #pragma glsl
            uniform sampler2D _VertexDisp; uniform float4 _VertexDisp_ST;
            uniform float _OffsetPower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                float2 node_6 = (o.uv0*1.0);
                float4 _VertexDisp_var = tex2Dlod(_VertexDisp,float4(TRANSFORM_TEX(node_6, _VertexDisp),0.0,0));
                float3 node_168 = ((v.normal*_VertexDisp_var.a)*_OffsetPower);
                v.vertex.xyz += node_168;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
