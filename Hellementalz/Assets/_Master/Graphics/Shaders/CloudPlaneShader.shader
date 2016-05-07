// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|diff-5275-OUT,spec-5969-OUT,alpha-7957-OUT,voffset-7809-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:32168,y:32281,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:523,x:32168,y:32601,varname:node_523,prsc:2|A-3528-OUT,B-6059-OUT;n:type:ShaderForge.SFN_DepthBlend,id:3528,x:31996,y:32545,varname:node_3528,prsc:2|DIST-6372-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6372,x:31816,y:32630,ptovrint:False,ptlb:Depth Blend,ptin:_DepthBlend,varname:node_6372,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Vector1,id:6059,x:31996,y:32667,varname:node_6059,prsc:2,v1:1.5;n:type:ShaderForge.SFN_Lerp,id:5275,x:32395,y:32489,varname:node_5275,prsc:2|A-1304-RGB,B-3877-RGB,T-523-OUT;n:type:ShaderForge.SFN_Color,id:3877,x:32168,y:32452,ptovrint:False,ptlb:Color_copy,ptin:_Color_copy,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2867647,c2:0.5573022,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:6344,x:31879,y:32898,varname:node_6344,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-1263-UVOUT,TEX-1897-TEX;n:type:ShaderForge.SFN_Panner,id:1263,x:31673,y:32851,varname:node_1263,prsc:2,spu:0.05,spv:0.06|UVIN-1334-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:1334,x:31470,y:32801,varname:node_1334,prsc:2,uv:0;n:type:ShaderForge.SFN_Append,id:7809,x:32284,y:33065,varname:node_7809,prsc:2|A-7428-OUT,B-6965-OUT,C-7428-OUT;n:type:ShaderForge.SFN_Vector1,id:7428,x:32198,y:32906,varname:node_7428,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:6965,x:32069,y:33051,varname:node_6965,prsc:2|A-6344-R,B-6967-OUT,C-4439-G;n:type:ShaderForge.SFN_Vector1,id:6967,x:31836,y:33163,varname:node_6967,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Slider,id:7957,x:32309,y:32826,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_7957,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.7,max:1;n:type:ShaderForge.SFN_Vector1,id:4074,x:32255,y:32671,varname:node_4074,prsc:2,v1:0.7;n:type:ShaderForge.SFN_Multiply,id:5969,x:32451,y:32682,varname:node_5969,prsc:2|A-4074-OUT,B-6782-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:1897,x:31510,y:33210,ptovrint:False,ptlb:node_1897,ptin:_node_1897,varname:node_1897,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4439,x:31788,y:33015,varname:node_4439,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-4050-UVOUT,TEX-1897-TEX;n:type:ShaderForge.SFN_Panner,id:4050,x:31525,y:33038,varname:node_4050,prsc:2,spu:-0.04,spv:-0.07|UVIN-1334-UVOUT;n:type:ShaderForge.SFN_Posterize,id:6782,x:32198,y:32742,varname:node_6782,prsc:2|IN-2548-OUT,STPS-5659-OUT;n:type:ShaderForge.SFN_Multiply,id:2548,x:31994,y:32742,varname:node_2548,prsc:2|A-6344-R,B-4439-G;n:type:ShaderForge.SFN_Vector1,id:5659,x:32037,y:32919,varname:node_5659,prsc:2,v1:3;proporder:1304-6372-3877-7957-1897;pass:END;sub:END;*/

Shader "Shader Forge/CloudPlaneShader" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _DepthBlend ("Depth Blend", Float ) = 0
        _Color_copy ("Color_copy", Color) = (0.2867647,0.5573022,1,1)
        _Opacity ("Opacity", Range(0, 1)) = 0.7
        _node_1897 ("node_1897", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
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
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _LightColor0;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform float _DepthBlend;
            uniform float4 _Color_copy;
            uniform float _Opacity;
            uniform sampler2D _node_1897; uniform float4 _node_1897_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 projPos : TEXCOORD3;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float node_7428 = 0.0;
                float4 node_5875 = _Time + _TimeEditor;
                float2 node_1263 = (o.uv0+node_5875.g*float2(0.05,0.06));
                float4 node_6344 = tex2Dlod(_node_1897,float4(TRANSFORM_TEX(node_1263, _node_1897),0.0,0));
                float2 node_4050 = (o.uv0+node_5875.g*float2(-0.04,-0.07));
                float4 node_4439 = tex2Dlod(_node_1897,float4(TRANSFORM_TEX(node_4050, _node_1897),0.0,0));
                v.vertex.xyz += float3(node_7428,(node_6344.r*0.2*node_4439.g),node_7428);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 0.5;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 node_5875 = _Time + _TimeEditor;
                float2 node_1263 = (i.uv0+node_5875.g*float2(0.05,0.06));
                float4 node_6344 = tex2D(_node_1897,TRANSFORM_TEX(node_1263, _node_1897));
                float2 node_4050 = (i.uv0+node_5875.g*float2(-0.04,-0.07));
                float4 node_4439 = tex2D(_node_1897,TRANSFORM_TEX(node_4050, _node_1897));
                float node_5659 = 3.0;
                float node_5969 = (0.7*floor((node_6344.r*node_4439.g) * node_5659) / (node_5659 - 1));
                float3 specularColor = float3(node_5969,node_5969,node_5969);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = lerp(_Color.rgb,_Color_copy.rgb,(saturate((sceneZ-partZ)/_DepthBlend)*1.5));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,_Opacity);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _LightColor0;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform float _DepthBlend;
            uniform float4 _Color_copy;
            uniform float _Opacity;
            uniform sampler2D _node_1897; uniform float4 _node_1897_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 projPos : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float node_7428 = 0.0;
                float4 node_5650 = _Time + _TimeEditor;
                float2 node_1263 = (o.uv0+node_5650.g*float2(0.05,0.06));
                float4 node_6344 = tex2Dlod(_node_1897,float4(TRANSFORM_TEX(node_1263, _node_1897),0.0,0));
                float2 node_4050 = (o.uv0+node_5650.g*float2(-0.04,-0.07));
                float4 node_4439 = tex2Dlod(_node_1897,float4(TRANSFORM_TEX(node_4050, _node_1897),0.0,0));
                v.vertex.xyz += float3(node_7428,(node_6344.r*0.2*node_4439.g),node_7428);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 0.5;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 node_5650 = _Time + _TimeEditor;
                float2 node_1263 = (i.uv0+node_5650.g*float2(0.05,0.06));
                float4 node_6344 = tex2D(_node_1897,TRANSFORM_TEX(node_1263, _node_1897));
                float2 node_4050 = (i.uv0+node_5650.g*float2(-0.04,-0.07));
                float4 node_4439 = tex2D(_node_1897,TRANSFORM_TEX(node_4050, _node_1897));
                float node_5659 = 3.0;
                float node_5969 = (0.7*floor((node_6344.r*node_4439.g) * node_5659) / (node_5659 - 1));
                float3 specularColor = float3(node_5969,node_5969,node_5969);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuseColor = lerp(_Color.rgb,_Color_copy.rgb,(saturate((sceneZ-partZ)/_DepthBlend)*1.5));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * _Opacity,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform sampler2D _node_1897; uniform float4 _node_1897_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float node_7428 = 0.0;
                float4 node_5330 = _Time + _TimeEditor;
                float2 node_1263 = (o.uv0+node_5330.g*float2(0.05,0.06));
                float4 node_6344 = tex2Dlod(_node_1897,float4(TRANSFORM_TEX(node_1263, _node_1897),0.0,0));
                float2 node_4050 = (o.uv0+node_5330.g*float2(-0.04,-0.07));
                float4 node_4439 = tex2Dlod(_node_1897,float4(TRANSFORM_TEX(node_4050, _node_1897),0.0,0));
                v.vertex.xyz += float3(node_7428,(node_6344.r*0.2*node_4439.g),node_7428);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
