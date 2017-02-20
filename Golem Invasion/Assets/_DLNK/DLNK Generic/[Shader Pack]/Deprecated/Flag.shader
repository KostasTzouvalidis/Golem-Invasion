// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'

// Shader created with Shader Forge Beta 0.36 
// Shader Forge (c) Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.36;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:1,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:2,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.4788062,fgcg:0.6402428,fgcb:0.9044118,fgca:1,fgde:0.02,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:32584,y:33366|diff-134-OUT,spec-128-OUT,gloss-202-OUT,normal-178-OUT,amdfl-1143-OUT,clip-10-OUT,voffset-294-OUT;n:type:ShaderForge.SFN_Tex2d,id:6,x:33394,y:32051,ptlb:Diffuse Detail,ptin:_DiffuseDetail,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7,x:33569,y:32635,ptlb:Flag mask,ptin:_Flagmask,tex:f1605cb747f9bd24aac85f053bb00125,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8,x:33605,y:32324,tex:2a2b148f89d7930489b90c0daa16c350,ntxv:0,isnm:False|TEX-227-TEX;n:type:ShaderForge.SFN_Tex2d,id:9,x:33103,y:33164,ptlb:Flag Shape,ptin:_FlagShape,tex:d20e250b1a9516e4699051fe5499e978,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:10,x:32954,y:33217|A-9-A,B-11-OUT;n:type:ShaderForge.SFN_ValueProperty,id:11,x:33093,y:33356,ptlb:Cutout,ptin:_Cutout,glob:False,v1:1;n:type:ShaderForge.SFN_Color,id:14,x:33794,y:32383,ptlb:Color A,ptin:_ColorA,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:15,x:33794,y:32548,ptlb:Color B,ptin:_ColorB,glob:False,c1:1,c2:0.08088237,c3:0.08088237,c4:1;n:type:ShaderForge.SFN_Color,id:16,x:33794,y:32215,ptlb:Color Icon,ptin:_ColorIcon,glob:False,c1:0.5367647,c2:0.5974644,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:17,x:33359,y:32465|A-61-OUT,B-16-RGB,T-8-A;n:type:ShaderForge.SFN_Lerp,id:61,x:33576,y:32486|A-14-RGB,B-15-RGB,T-7-A;n:type:ShaderForge.SFN_ValueProperty,id:112,x:33625,y:32883,ptlb:Spec A,ptin:_SpecA,glob:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:114,x:33625,y:32967,ptlb:Spec B,ptin:_SpecB,glob:False,v1:0.3;n:type:ShaderForge.SFN_ValueProperty,id:116,x:33625,y:33048,ptlb:Spec Icon,ptin:_SpecIcon,glob:False,v1:0.5;n:type:ShaderForge.SFN_Lerp,id:117,x:33454,y:32883|A-112-OUT,B-114-OUT,T-7-A;n:type:ShaderForge.SFN_Lerp,id:118,x:33287,y:32944|A-117-OUT,B-116-OUT,T-8-A;n:type:ShaderForge.SFN_Slider,id:119,x:33778,y:33162,ptlb:Gloss,ptin:_Gloss,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:128,x:33095,y:32888|A-118-OUT,B-132-OUT;n:type:ShaderForge.SFN_Lerp,id:129,x:33067,y:32090|A-6-RGB,B-130-RGB,T-131-OUT;n:type:ShaderForge.SFN_Color,id:130,x:33556,y:32079,ptlb:Color,ptin:_Color,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Slider,id:131,x:33394,y:31967,ptlb:Diffuse Power,ptin:_DiffusePower,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:132,x:33213,y:32272|A-6-A,B-133-OUT;n:type:ShaderForge.SFN_Slider,id:133,x:33338,y:32257,ptlb:Tex Specular,ptin:_TexSpecular,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:134,x:32954,y:32462|A-17-OUT,B-129-OUT,C-278-OUT;n:type:ShaderForge.SFN_Tex2d,id:142,x:33993,y:32706,ptlb:Normal Map,ptin:_NormalMap,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:178,x:33770,y:32768|A-142-RGB,B-179-OUT,T-180-OUT;n:type:ShaderForge.SFN_Vector3,id:179,x:33993,y:32862,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_ValueProperty,id:180,x:33993,y:32998,ptlb:Normal Smooth,ptin:_NormalSmooth,glob:False,v1:0;n:type:ShaderForge.SFN_Lerp,id:202,x:33463,y:33202|A-119-OUT,B-205-OUT,T-8-A;n:type:ShaderForge.SFN_Slider,id:205,x:33801,y:33277,ptlb:Gloss Icon,ptin:_GlossIcon,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Tex2dAsset,id:227,x:33989,y:32372,ptlb:Icon Mask,ptin:_IconMask,glob:False,tex:2a2b148f89d7930489b90c0daa16c350;n:type:ShaderForge.SFN_Tex2d,id:246,x:33272,y:32602,tex:2a2b148f89d7930489b90c0daa16c350,ntxv:0,isnm:False|MIP-247-OUT,TEX-227-TEX;n:type:ShaderForge.SFN_ValueProperty,id:247,x:33250,y:32765,ptlb:Dirt Icon,ptin:_DirtIcon,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:248,x:33041,y:32643|A-251-OUT,B-246-A;n:type:ShaderForge.SFN_OneMinus,id:251,x:33164,y:32501|IN-8-A;n:type:ShaderForge.SFN_OneMinus,id:252,x:32870,y:32655|IN-248-OUT;n:type:ShaderForge.SFN_ValueProperty,id:254,x:32727,y:32803,ptlb:Dirt Power,ptin:_DirtPower,glob:False,v1:-1;n:type:ShaderForge.SFN_Lerp,id:278,x:32527,y:32646|A-252-OUT,B-279-OUT,T-254-OUT;n:type:ShaderForge.SFN_Vector1,id:279,x:32714,y:32710,v1:1;n:type:ShaderForge.SFN_Multiply,id:294,x:33004,y:33600|A-346-OUT,B-458-A,C-439-OUT,D-1129-OUT;n:type:ShaderForge.SFN_TexCoord,id:295,x:33801,y:33412,uv:0;n:type:ShaderForge.SFN_ConstantLerp,id:299,x:33561,y:33349,a:0,b:1|IN-295-V;n:type:ShaderForge.SFN_Panner,id:325,x:33979,y:33499,spu:1,spv:1|UVIN-295-UVOUT,DIST-332-OUT;n:type:ShaderForge.SFN_Time,id:329,x:34506,y:33583;n:type:ShaderForge.SFN_ValueProperty,id:331,x:34336,y:33773,ptlb:VOffset Velocity,ptin:_VOffsetVelocity,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:332,x:34093,y:33571|A-331-OUT,B-329-TSL;n:type:ShaderForge.SFN_OneMinus,id:346,x:33364,y:33403|IN-299-OUT;n:type:ShaderForge.SFN_ValueProperty,id:439,x:33272,y:33770,ptlb:Mult Offset,ptin:_MultOffset,glob:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:458,x:33526,y:33770,ntxv:0,isnm:False|UVIN-481-OUT,TEX-459-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:459,x:34043,y:33820,ptlb:Waves,ptin:_Waves,glob:False;n:type:ShaderForge.SFN_ComponentMask,id:480,x:33839,y:33590,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-325-UVOUT;n:type:ShaderForge.SFN_Append,id:481,x:33715,y:33590|A-295-U,B-480-OUT;n:type:ShaderForge.SFN_NormalVector,id:1129,x:33143,y:33786,pt:False;n:type:ShaderForge.SFN_AmbientLight,id:1141,x:32958,y:33768;n:type:ShaderForge.SFN_SwitchProperty,id:1143,x:32680,y:33873,ptlb:Use Custom Ambient,ptin:_UseCustomAmbient,on:False|A-1141-RGB,B-1194-OUT;n:type:ShaderForge.SFN_Color,id:1144,x:33112,y:33953,ptlb:Ambient Color,ptin:_AmbientColor,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:1145,x:32848,y:33994|A-1144-RGB,B-1146-OUT,C-1183-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1146,x:33112,y:34116,ptlb:Movement Power,ptin:_MovementPower,glob:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:1170,x:33304,y:34164|A-458-A,B-346-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1183,x:32938,y:34248,ptlb:Movement Affect,ptin:_MovementAffect,on:False|A-1184-OUT,B-1170-OUT;n:type:ShaderForge.SFN_Vector1,id:1184,x:33178,y:34407,v1:1;n:type:ShaderForge.SFN_Add,id:1194,x:32627,y:34042|A-1145-OUT,B-1195-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1195,x:32691,y:34264,ptlb:Base Ambient,ptin:_BaseAmbient,glob:False,v1:0;proporder:130-131-9-11-7-14-15-112-114-119-227-16-116-247-254-205-6-142-180-133-331-439-459-1143-1144-1146-1183-1195;pass:END;sub:END;*/

Shader "DLNK/Special/Flag" {
    Properties {
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _DiffusePower ("Diffuse Power", Range(0, 1)) = 0
        _FlagShape ("Flag Shape", 2D) = "white" {}
        _Cutout ("Cutout", Float ) = 1
        _Flagmask ("Flag mask", 2D) = "white" {}
        _ColorA ("Color A", Color) = (0.5,0.5,0.5,1)
        _ColorB ("Color B", Color) = (1,0.08088237,0.08088237,1)
        _SpecA ("Spec A", Float ) = 1
        _SpecB ("Spec B", Float ) = 0.3
        _Gloss ("Gloss", Range(0, 1)) = 1
        _IconMask ("Icon Mask", 2D) = "white" {}
        _ColorIcon ("Color Icon", Color) = (0.5367647,0.5974644,1,1)
        _SpecIcon ("Spec Icon", Float ) = 0.5
        _DirtIcon ("Dirt Icon", Float ) = 1
        _DirtPower ("Dirt Power", Float ) = -1
        _GlossIcon ("Gloss Icon", Range(0, 1)) = 0.5
        _DiffuseDetail ("Diffuse Detail", 2D) = "white" {}
        _NormalMap ("Normal Map", 2D) = "bump" {}
        _NormalSmooth ("Normal Smooth", Float ) = 0
        _TexSpecular ("Tex Specular", Range(0, 1)) = 1
        _VOffsetVelocity ("VOffset Velocity", Float ) = 1
        _MultOffset ("Mult Offset", Float ) = 1
        _Waves ("Waves", 2D) = "white" {}
        [MaterialToggle] _UseCustomAmbient ("Use Custom Ambient", Float ) = 0.08479003
        _AmbientColor ("Ambient Color", Color) = (0.5,0.5,0.5,1)
        _MovementPower ("Movement Power", Float ) = 0
        [MaterialToggle] _MovementAffect ("Movement Affect", Float ) = 1
        _BaseAmbient ("Base Ambient", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "PrePassBase"
            Tags {
                "LightMode"="PrePassBase"
            }
            Cull Off
            
            
            Fog {Mode Off}
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_PREPASSBASE
            #include "UnityCG.cginc"
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            #pragma glsl
            uniform fixed4 unity_Ambient;
            uniform float4 _TimeEditor;
            uniform sampler2D _FlagShape; uniform float4 _FlagShape_ST;
            uniform float _Cutout;
            uniform float _Gloss;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _NormalSmooth;
            uniform float _GlossIcon;
            uniform sampler2D _IconMask; uniform float4 _IconMask_ST;
            uniform float _VOffsetVelocity;
            uniform float _MultOffset;
            uniform sampler2D _Waves; uniform float4 _Waves_ST;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(float4(v.normal,0), unity_WorldToObject).xyz;
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float2 node_295 = o.uv0;
                float node_346 = (1.0 - lerp(0,1,node_295.g));
                float4 node_329 = _Time + _TimeEditor;
                float2 node_481 = float2(node_295.r,(node_295.rg+(_VOffsetVelocity*node_329.r)*float2(1,1)).g);
                float4 node_458 = tex2Dlod(_Waves,float4(TRANSFORM_TEX(node_481, _Waves),0.0,0));
                v.vertex.xyz += (node_346*node_458.a*_MultOffset*v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
/////// Normals:
                float2 node_1199 = i.uv0;
                float3 normalLocal = lerp(UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_1199.rg, _NormalMap))).rgb,float3(0,0,1),_NormalSmooth);
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                clip((tex2D(_FlagShape,TRANSFORM_TEX(node_1199.rg, _FlagShape)).a*_Cutout) - 0.5);
                float4 node_8 = tex2D(_IconMask,TRANSFORM_TEX(node_1199.rg, _IconMask));
                return fixed4( normalDirection * 0.5 + 0.5, max(lerp(_Gloss,_GlossIcon,node_8.a),0.0078125) );
            }
            ENDCG
        }
        Pass {
            Name "PrePassFinal"
            Tags {
                "LightMode"="PrePassFinal"
            }
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_PREPASSFINAL
            #include "UnityCG.cginc"
            #pragma multi_compile_prepassfinal
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            #pragma glsl
            uniform sampler2D _LightBuffer;
            #if defined (SHADER_API_XBOX360) && defined (HDR_LIGHT_PREPASS_ON)
                sampler2D _LightSpecBuffer;
            #endif
            uniform fixed4 unity_Ambient;
            uniform float4 _TimeEditor;
            uniform sampler2D _DiffuseDetail; uniform float4 _DiffuseDetail_ST;
            uniform sampler2D _Flagmask; uniform float4 _Flagmask_ST;
            uniform sampler2D _FlagShape; uniform float4 _FlagShape_ST;
            uniform float _Cutout;
            uniform float4 _ColorA;
            uniform float4 _ColorB;
            uniform float4 _ColorIcon;
            uniform float _SpecA;
            uniform float _SpecB;
            uniform float _SpecIcon;
            uniform float _Gloss;
            uniform float4 _Color;
            uniform float _DiffusePower;
            uniform float _TexSpecular;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _NormalSmooth;
            uniform float _GlossIcon;
            uniform sampler2D _IconMask; uniform float4 _IconMask_ST;
            uniform float _DirtIcon;
            uniform float _DirtPower;
            uniform float _VOffsetVelocity;
            uniform float _MultOffset;
            uniform sampler2D _Waves; uniform float4 _Waves_ST;
            uniform fixed _UseCustomAmbient;
            uniform float4 _AmbientColor;
            uniform float _MovementPower;
            uniform fixed _MovementAffect;
            uniform float _BaseAmbient;
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
                float4 projPos : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(float4(v.normal,0), unity_WorldToObject).xyz;
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float2 node_295 = o.uv0;
                float node_346 = (1.0 - lerp(0,1,node_295.g));
                float4 node_329 = _Time + _TimeEditor;
                float2 node_481 = float2(node_295.r,(node_295.rg+(_VOffsetVelocity*node_329.r)*float2(1,1)).g);
                float4 node_458 = tex2Dlod(_Waves,float4(TRANSFORM_TEX(node_481, _Waves),0.0,0));
                v.vertex.xyz += (node_346*node_458.a*_MultOffset*v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
/////// Normals:
                float2 node_1200 = i.uv0;
                float3 normalLocal = lerp(UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_1200.rg, _NormalMap))).rgb,float3(0,0,1),_NormalSmooth);
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                clip((tex2D(_FlagShape,TRANSFORM_TEX(node_1200.rg, _FlagShape)).a*_Cutout) - 0.5);
////// Lighting:
                half4 lightAccumulation = tex2Dproj(_LightBuffer, UNITY_PROJ_COORD(i.projPos));
                #if defined (SHADER_API_GLES) || defined (SHADER_API_GLES3)
                    lightAccumulation = max(lightAccumulation, half4(0.001));
                #endif
                #ifndef HDR_LIGHT_PREPASS_ON
                    lightAccumulation = -log2(lightAccumulation);
                #endif
                #if defined (SHADER_API_XBOX360) && defined (HDR_LIGHT_PREPASS_ON)
                    lightAccumulation.w = tex2Dproj (_LightSpecBuffer, UNITY_PROJ_COORD(i.projPos)).r;
                #endif
/////// Diffuse:
                float3 diffuse = lightAccumulation.rgb * 0.5 + unity_Ambient.rgb*0.5;
////// Specular:
                float4 node_7 = tex2D(_Flagmask,TRANSFORM_TEX(node_1200.rg, _Flagmask));
                float4 node_8 = tex2D(_IconMask,TRANSFORM_TEX(node_1200.rg, _IconMask));
                float4 node_6 = tex2D(_DiffuseDetail,TRANSFORM_TEX(node_1200.rg, _DiffuseDetail));
                float node_128 = (lerp(lerp(_SpecA,_SpecB,node_7.a),_SpecIcon,node_8.a)*(node_6.a*_TexSpecular));
                float3 specularColor = float3(node_128,node_128,node_128);
                float3 specular = (lightAccumulation.rgb * 2)*lightAccumulation.a * specularColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                float2 node_295 = i.uv0;
                float4 node_329 = _Time + _TimeEditor;
                float2 node_481 = float2(node_295.r,(node_295.rg+(_VOffsetVelocity*node_329.r)*float2(1,1)).g);
                float4 node_458 = tex2D(_Waves,TRANSFORM_TEX(node_481, _Waves));
                float node_346 = (1.0 - lerp(0,1,node_295.g));
                diffuseLight += lerp( UNITY_LIGHTMODEL_AMBIENT.rgb, ((_AmbientColor.rgb*_MovementPower*lerp( 1.0, (node_458.a*node_346), _MovementAffect ))+_BaseAmbient), _UseCustomAmbient ); // Diffuse Ambient Light
                finalColor += diffuseLight * (lerp(lerp(_ColorA.rgb,_ColorB.rgb,node_7.a),_ColorIcon.rgb,node_8.a)*lerp(node_6.rgb,_Color.rgb,_DiffusePower)*lerp((1.0 - ((1.0 - node_8.a)*tex2Dlod(_IconMask,float4(TRANSFORM_TEX(node_1200.rg, _IconMask),0.0,_DirtIcon)).a)),1.0,_DirtPower));
                finalColor += specular;
/// Final Color:
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _DiffuseDetail; uniform float4 _DiffuseDetail_ST;
            uniform sampler2D _Flagmask; uniform float4 _Flagmask_ST;
            uniform sampler2D _FlagShape; uniform float4 _FlagShape_ST;
            uniform float _Cutout;
            uniform float4 _ColorA;
            uniform float4 _ColorB;
            uniform float4 _ColorIcon;
            uniform float _SpecA;
            uniform float _SpecB;
            uniform float _SpecIcon;
            uniform float _Gloss;
            uniform float4 _Color;
            uniform float _DiffusePower;
            uniform float _TexSpecular;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _NormalSmooth;
            uniform float _GlossIcon;
            uniform sampler2D _IconMask; uniform float4 _IconMask_ST;
            uniform float _DirtIcon;
            uniform float _DirtPower;
            uniform float _VOffsetVelocity;
            uniform float _MultOffset;
            uniform sampler2D _Waves; uniform float4 _Waves_ST;
            uniform fixed _UseCustomAmbient;
            uniform float4 _AmbientColor;
            uniform float _MovementPower;
            uniform fixed _MovementAffect;
            uniform float _BaseAmbient;
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
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(float4(v.normal,0), unity_WorldToObject).xyz;
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float2 node_295 = o.uv0;
                float node_346 = (1.0 - lerp(0,1,node_295.g));
                float4 node_329 = _Time + _TimeEditor;
                float2 node_481 = float2(node_295.r,(node_295.rg+(_VOffsetVelocity*node_329.r)*float2(1,1)).g);
                float4 node_458 = tex2Dlod(_Waves,float4(TRANSFORM_TEX(node_481, _Waves),0.0,0));
                v.vertex.xyz += (node_346*node_458.a*_MultOffset*v.normal);
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
                float2 node_1201 = i.uv0;
                float3 normalLocal = lerp(UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_1201.rg, _NormalMap))).rgb,float3(0,0,1),_NormalSmooth);
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                clip((tex2D(_FlagShape,TRANSFORM_TEX(node_1201.rg, _FlagShape)).a*_Cutout) - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 diffuse = max( 0.0, NdotL) * attenColor + UNITY_LIGHTMODEL_AMBIENT.rgb;
///////// Gloss:
                float4 node_8 = tex2D(_IconMask,TRANSFORM_TEX(node_1201.rg, _IconMask));
                float gloss = lerp(_Gloss,_GlossIcon,node_8.a);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float4 node_7 = tex2D(_Flagmask,TRANSFORM_TEX(node_1201.rg, _Flagmask));
                float4 node_6 = tex2D(_DiffuseDetail,TRANSFORM_TEX(node_1201.rg, _DiffuseDetail));
                float node_128 = (lerp(lerp(_SpecA,_SpecB,node_7.a),_SpecIcon,node_8.a)*(node_6.a*_TexSpecular));
                float3 specularColor = float3(node_128,node_128,node_128);
                float3 specular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                float2 node_295 = i.uv0;
                float4 node_329 = _Time + _TimeEditor;
                float2 node_481 = float2(node_295.r,(node_295.rg+(_VOffsetVelocity*node_329.r)*float2(1,1)).g);
                float4 node_458 = tex2D(_Waves,TRANSFORM_TEX(node_481, _Waves));
                float node_346 = (1.0 - lerp(0,1,node_295.g));
                diffuseLight += lerp( UNITY_LIGHTMODEL_AMBIENT.rgb, ((_AmbientColor.rgb*_MovementPower*lerp( 1.0, (node_458.a*node_346), _MovementAffect ))+_BaseAmbient), _UseCustomAmbient ); // Diffuse Ambient Light
                finalColor += diffuseLight * (lerp(lerp(_ColorA.rgb,_ColorB.rgb,node_7.a),_ColorIcon.rgb,node_8.a)*lerp(node_6.rgb,_Color.rgb,_DiffusePower)*lerp((1.0 - ((1.0 - node_8.a)*tex2Dlod(_IconMask,float4(TRANSFORM_TEX(node_1201.rg, _IconMask),0.0,_DirtIcon)).a)),1.0,_DirtPower));
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
            Cull Off
            
            
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
            #pragma glsl
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _DiffuseDetail; uniform float4 _DiffuseDetail_ST;
            uniform sampler2D _Flagmask; uniform float4 _Flagmask_ST;
            uniform sampler2D _FlagShape; uniform float4 _FlagShape_ST;
            uniform float _Cutout;
            uniform float4 _ColorA;
            uniform float4 _ColorB;
            uniform float4 _ColorIcon;
            uniform float _SpecA;
            uniform float _SpecB;
            uniform float _SpecIcon;
            uniform float _Gloss;
            uniform float4 _Color;
            uniform float _DiffusePower;
            uniform float _TexSpecular;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _NormalSmooth;
            uniform float _GlossIcon;
            uniform sampler2D _IconMask; uniform float4 _IconMask_ST;
            uniform float _DirtIcon;
            uniform float _DirtPower;
            uniform float _VOffsetVelocity;
            uniform float _MultOffset;
            uniform sampler2D _Waves; uniform float4 _Waves_ST;
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
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(float4(v.normal,0), unity_WorldToObject).xyz;
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float2 node_295 = o.uv0;
                float node_346 = (1.0 - lerp(0,1,node_295.g));
                float4 node_329 = _Time + _TimeEditor;
                float2 node_481 = float2(node_295.r,(node_295.rg+(_VOffsetVelocity*node_329.r)*float2(1,1)).g);
                float4 node_458 = tex2Dlod(_Waves,float4(TRANSFORM_TEX(node_481, _Waves),0.0,0));
                v.vertex.xyz += (node_346*node_458.a*_MultOffset*v.normal);
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
                float2 node_1202 = i.uv0;
                float3 normalLocal = lerp(UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_1202.rg, _NormalMap))).rgb,float3(0,0,1),_NormalSmooth);
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                clip((tex2D(_FlagShape,TRANSFORM_TEX(node_1202.rg, _FlagShape)).a*_Cutout) - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 diffuse = max( 0.0, NdotL) * attenColor;
///////// Gloss:
                float4 node_8 = tex2D(_IconMask,TRANSFORM_TEX(node_1202.rg, _IconMask));
                float gloss = lerp(_Gloss,_GlossIcon,node_8.a);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float4 node_7 = tex2D(_Flagmask,TRANSFORM_TEX(node_1202.rg, _Flagmask));
                float4 node_6 = tex2D(_DiffuseDetail,TRANSFORM_TEX(node_1202.rg, _DiffuseDetail));
                float node_128 = (lerp(lerp(_SpecA,_SpecB,node_7.a),_SpecIcon,node_8.a)*(node_6.a*_TexSpecular));
                float3 specularColor = float3(node_128,node_128,node_128);
                float3 specular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                finalColor += diffuseLight * (lerp(lerp(_ColorA.rgb,_ColorB.rgb,node_7.a),_ColorIcon.rgb,node_8.a)*lerp(node_6.rgb,_Color.rgb,_DiffusePower)*lerp((1.0 - ((1.0 - node_8.a)*tex2Dlod(_IconMask,float4(TRANSFORM_TEX(node_1202.rg, _IconMask),0.0,_DirtIcon)).a)),1.0,_DirtPower));
                finalColor += specular;
/// Final Color:
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCollector"
            Tags {
                "LightMode"="ShadowCollector"
            }
            Cull Off
            
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
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform sampler2D _FlagShape; uniform float4 _FlagShape_ST;
            uniform float _Cutout;
            uniform float _VOffsetVelocity;
            uniform float _MultOffset;
            uniform sampler2D _Waves; uniform float4 _Waves_ST;
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
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(float4(v.normal,0), unity_WorldToObject).xyz;
                float2 node_295 = o.uv0;
                float node_346 = (1.0 - lerp(0,1,node_295.g));
                float4 node_329 = _Time + _TimeEditor;
                float2 node_481 = float2(node_295.r,(node_295.rg+(_VOffsetVelocity*node_329.r)*float2(1,1)).g);
                float4 node_458 = tex2Dlod(_Waves,float4(TRANSFORM_TEX(node_481, _Waves),0.0,0));
                v.vertex.xyz += (node_346*node_458.a*_MultOffset*v.normal);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_COLLECTOR(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float2 node_1203 = i.uv0;
                clip((tex2D(_FlagShape,TRANSFORM_TEX(node_1203.rg, _FlagShape)).a*_Cutout) - 0.5);
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
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform sampler2D _FlagShape; uniform float4 _FlagShape_ST;
            uniform float _Cutout;
            uniform float _VOffsetVelocity;
            uniform float _MultOffset;
            uniform sampler2D _Waves; uniform float4 _Waves_ST;
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
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(float4(v.normal,0), unity_WorldToObject).xyz;
                float2 node_295 = o.uv0;
                float node_346 = (1.0 - lerp(0,1,node_295.g));
                float4 node_329 = _Time + _TimeEditor;
                float2 node_481 = float2(node_295.r,(node_295.rg+(_VOffsetVelocity*node_329.r)*float2(1,1)).g);
                float4 node_458 = tex2Dlod(_Waves,float4(TRANSFORM_TEX(node_481, _Waves),0.0,0));
                v.vertex.xyz += (node_346*node_458.a*_MultOffset*v.normal);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float2 node_1204 = i.uv0;
                clip((tex2D(_FlagShape,TRANSFORM_TEX(node_1204.rg, _FlagShape)).a*_Cutout) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
