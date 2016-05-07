// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|diff-5201-OUT,spec-3231-OUT,gloss-1561-OUT,normal-3085-OUT,emission-2519-OUT;n:type:ShaderForge.SFN_Slider,id:358,x:32257,y:32482,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5042735,max:1;n:type:ShaderForge.SFN_Lerp,id:2009,x:32184,y:32482,varname:node_2009,prsc:2|A-2947-RGB,B-9543-RGB,T-9116-OUT;n:type:ShaderForge.SFN_Tex2d,id:2947,x:31984,y:32314,varname:node_2947,prsc:2,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False|UVIN-7179-UVOUT,TEX-9534-TEX;n:type:ShaderForge.SFN_Tex2d,id:9543,x:31984,y:32482,varname:node_9543,prsc:2,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False|UVIN-119-UVOUT,TEX-9534-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:9534,x:31397,y:32322,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_9534,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:6016,x:31397,y:32499,varname:node_6016,prsc:2|A-8808-UVOUT,B-6814-OUT;n:type:ShaderForge.SFN_Add,id:5265,x:31397,y:32661,varname:node_5265,prsc:2|A-8808-UVOUT,B-1252-OUT;n:type:ShaderForge.SFN_TexCoord,id:8808,x:31041,y:32239,varname:node_8808,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:6814,x:31041,y:32428,varname:node_6814,prsc:2|A-6459-OUT,B-5761-OUT;n:type:ShaderForge.SFN_Multiply,id:6459,x:30801,y:32372,varname:node_6459,prsc:2|A-4544-OUT,B-9171-OUT;n:type:ShaderForge.SFN_RemapRange,id:4544,x:30542,y:32248,varname:node_4544,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:0.5|IN-1479-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1479,x:30304,y:32244,varname:node_1479,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-6669-RGB;n:type:ShaderForge.SFN_Tex2d,id:6669,x:29966,y:32158,ptovrint:False,ptlb:Flowmap,ptin:_Flowmap,varname:node_6669,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:9171,x:30542,y:32440,varname:node_9171,prsc:2|A-6674-OUT,B-629-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6674,x:30304,y:32440,ptovrint:False,ptlb:Flow Power,ptin:_FlowPower,varname:node_6674,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Vector1,id:629,x:30304,y:32523,varname:node_629,prsc:2,v1:-1;n:type:ShaderForge.SFN_Tex2d,id:4936,x:31984,y:32723,varname:node_4936,prsc:2,tex:bbab0a6f7bae9cf42bf057d8ee2755f6,ntxv:0,isnm:False|UVIN-6984-UVOUT,TEX-3695-TEX;n:type:ShaderForge.SFN_Lerp,id:3085,x:32204,y:32872,varname:node_3085,prsc:2|A-4936-RGB,B-2487-RGB,T-9116-OUT;n:type:ShaderForge.SFN_Tex2d,id:2487,x:31984,y:32931,varname:node_2487,prsc:2,tex:bbab0a6f7bae9cf42bf057d8ee2755f6,ntxv:0,isnm:False|UVIN-6010-UVOUT,TEX-3695-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:3695,x:31397,y:32835,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_3695,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bbab0a6f7bae9cf42bf057d8ee2755f6,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Multiply,id:1252,x:31053,y:32614,varname:node_1252,prsc:2|A-6459-OUT,B-1439-OUT;n:type:ShaderForge.SFN_Frac,id:1439,x:30778,y:32803,varname:node_1439,prsc:2|IN-4633-OUT;n:type:ShaderForge.SFN_Frac,id:5761,x:30778,y:32607,varname:node_5761,prsc:2|IN-458-OUT;n:type:ShaderForge.SFN_Multiply,id:458,x:30286,y:32811,varname:node_458,prsc:2|A-9568-TSL,B-6507-OUT;n:type:ShaderForge.SFN_Time,id:9568,x:30107,y:32728,varname:node_9568,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:6507,x:30107,y:32882,ptovrint:False,ptlb:Flow Speed,ptin:_FlowSpeed,varname:node_6507,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Add,id:4633,x:30456,y:32942,varname:node_4633,prsc:2|A-458-OUT,B-4080-OUT;n:type:ShaderForge.SFN_Vector1,id:4080,x:30107,y:32959,varname:node_4080,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Subtract,id:4774,x:30836,y:33025,varname:node_4774,prsc:2|A-1454-OUT,B-5761-OUT;n:type:ShaderForge.SFN_Vector1,id:1454,x:30836,y:33159,varname:node_1454,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Divide,id:1393,x:31053,y:33025,varname:node_1393,prsc:2|A-4774-OUT,B-1454-OUT;n:type:ShaderForge.SFN_Abs,id:9116,x:31223,y:33008,varname:node_9116,prsc:2|IN-1393-OUT;n:type:ShaderForge.SFN_Set,id:5544,x:30505,y:32144,varname:FlowMapValues,prsc:2|IN-1479-G;n:type:ShaderForge.SFN_Append,id:3193,x:31355,y:33191,varname:node_3193,prsc:2|A-3117-OUT,B-414-OUT;n:type:ShaderForge.SFN_Vector1,id:3117,x:31143,y:33261,varname:node_3117,prsc:2,v1:0;n:type:ShaderForge.SFN_Get,id:414,x:31169,y:33171,varname:node_414,prsc:2|IN-5544-OUT;n:type:ShaderForge.SFN_Tex2d,id:8265,x:31984,y:33167,ptovrint:False,ptlb:Gloss Texture,ptin:_GlossTexture,varname:node_8265,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-6612-OUT;n:type:ShaderForge.SFN_Panner,id:4236,x:31532,y:33191,varname:node_4236,prsc:2,spu:0,spv:0.1|UVIN-3193-OUT;n:type:ShaderForge.SFN_Multiply,id:6612,x:31809,y:33167,varname:node_6612,prsc:2|A-4236-UVOUT,B-8652-OUT;n:type:ShaderForge.SFN_Vector1,id:8652,x:31532,y:33352,varname:node_8652,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Panner,id:7179,x:31698,y:32381,varname:node_7179,prsc:2,spu:0,spv:0.1|UVIN-6016-OUT;n:type:ShaderForge.SFN_Panner,id:6984,x:31698,y:32712,varname:node_6984,prsc:2,spu:0,spv:0.1|UVIN-6016-OUT;n:type:ShaderForge.SFN_Panner,id:119,x:31698,y:32545,varname:node_119,prsc:2,spu:0,spv:0.1|UVIN-5265-OUT;n:type:ShaderForge.SFN_Panner,id:6010,x:31698,y:32874,varname:node_6010,prsc:2,spu:0,spv:0.1|UVIN-5265-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:6296,x:32952,y:31977,varname:node_6296,prsc:2,chbt:0|M-7790-OUT,R-4901-RGB,G-4485-RGB,B-7545-RGB;n:type:ShaderForge.SFN_Multiply,id:7790,x:32723,y:31632,varname:node_7790,prsc:2|A-9653-OUT,B-9653-OUT;n:type:ShaderForge.SFN_Tex2d,id:4901,x:32360,y:31863,varname:node_4901,prsc:2,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False|UVIN-9563-OUT,TEX-9534-TEX;n:type:ShaderForge.SFN_Tex2d,id:4485,x:32360,y:31987,varname:node_4485,prsc:2,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False|UVIN-1929-OUT,TEX-9534-TEX;n:type:ShaderForge.SFN_Tex2d,id:7545,x:32360,y:32117,varname:node_7545,prsc:2,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:3,isnm:True|UVIN-1576-OUT,TEX-9534-TEX;n:type:ShaderForge.SFN_Abs,id:9653,x:31793,y:31630,varname:node_9653,prsc:2|IN-8305-OUT;n:type:ShaderForge.SFN_Append,id:402,x:31793,y:31751,varname:node_402,prsc:2|A-886-Y,B-886-Z;n:type:ShaderForge.SFN_Append,id:1049,x:31793,y:31874,varname:node_1049,prsc:2|A-886-Z,B-886-X;n:type:ShaderForge.SFN_Append,id:7809,x:31793,y:32005,varname:node_7809,prsc:2|A-886-Y,B-886-Y;n:type:ShaderForge.SFN_NormalVector,id:8305,x:31555,y:31630,prsc:2,pt:False;n:type:ShaderForge.SFN_FragmentPosition,id:886,x:31555,y:31852,varname:node_886,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8441,x:32691,y:32451,varname:node_8441,prsc:2|A-6296-OUT,B-3166-OUT;n:type:ShaderForge.SFN_Vector1,id:3166,x:32431,y:32360,varname:node_3166,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:9563,x:32088,y:31745,varname:node_9563,prsc:2|A-402-OUT,B-178-OUT;n:type:ShaderForge.SFN_Add,id:1576,x:32088,y:32013,varname:node_1576,prsc:2|A-7809-OUT,B-178-OUT;n:type:ShaderForge.SFN_Add,id:1929,x:32088,y:31882,varname:node_1929,prsc:2|A-1049-OUT,B-178-OUT;n:type:ShaderForge.SFN_Transform,id:9881,x:31774,y:32175,varname:node_9881,prsc:2,tffrom:1,tfto:0|IN-8014-OUT;n:type:ShaderForge.SFN_Append,id:8014,x:31597,y:32175,varname:node_8014,prsc:2|A-7179-UVOUT,B-5725-OUT;n:type:ShaderForge.SFN_Vector1,id:5725,x:31370,y:32140,varname:node_5725,prsc:2,v1:0;n:type:ShaderForge.SFN_ComponentMask,id:178,x:31916,y:32175,varname:node_178,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9881-XYZ;n:type:ShaderForge.SFN_Set,id:9433,x:31565,y:32591,varname:Flow,prsc:2|IN-6016-OUT;n:type:ShaderForge.SFN_Multiply,id:2519,x:32470,y:32937,varname:node_2519,prsc:2|A-2848-OUT,B-3216-OUT,C-4543-OUT;n:type:ShaderForge.SFN_Fresnel,id:5737,x:32011,y:33436,varname:node_5737,prsc:2|EXP-2461-OUT;n:type:ShaderForge.SFN_Vector1,id:2461,x:31792,y:33436,varname:node_2461,prsc:2,v1:2;n:type:ShaderForge.SFN_Vector1,id:722,x:31892,y:33352,varname:node_722,prsc:2,v1:5;n:type:ShaderForge.SFN_Slider,id:4543,x:32125,y:33090,ptovrint:False,ptlb:Emission Intensity,ptin:_EmissionIntensity,varname:node_4543,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Power,id:8879,x:32186,y:33264,varname:node_8879,prsc:2|VAL-8265-R,EXP-722-OUT;n:type:ShaderForge.SFN_Multiply,id:3216,x:32448,y:33250,varname:node_3216,prsc:2|A-8879-OUT,B-5737-OUT;n:type:ShaderForge.SFN_Vector3,id:3120,x:32417,y:33558,varname:node_3120,prsc:2,v1:1,v2:0,v3:0;n:type:ShaderForge.SFN_Vector3,id:3870,x:32417,y:33658,varname:node_3870,prsc:2,v1:0.9558824,v2:0.2570994,v3:0;n:type:ShaderForge.SFN_Vector3,id:6518,x:32417,y:33762,varname:node_6518,prsc:2,v1:0,v2:0.2482758,v3:1;n:type:ShaderForge.SFN_Vector3,id:9992,x:32417,y:33863,varname:node_9992,prsc:2,v1:0,v2:0.6689653,v3:1;n:type:ShaderForge.SFN_Lerp,id:8317,x:32624,y:33617,varname:node_8317,prsc:2|A-3120-OUT,B-6518-OUT,T-6230-OUT;n:type:ShaderForge.SFN_Lerp,id:6491,x:32624,y:33762,varname:node_6491,prsc:2|A-3870-OUT,B-9992-OUT,T-6230-OUT;n:type:ShaderForge.SFN_Slider,id:6230,x:32260,y:33982,ptovrint:False,ptlb:Dimension Shift,ptin:_DimensionShift,varname:node_6230,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:6110,x:33054,y:33413,varname:node_6110,prsc:2|A-179-OUT,B-8339-OUT,T-4996-OUT;n:type:ShaderForge.SFN_Set,id:2278,x:32965,y:33983,varname:MainColor,prsc:2|IN-4042-RGB;n:type:ShaderForge.SFN_Set,id:7522,x:32811,y:33803,varname:SecondaryColor,prsc:2|IN-6351-RGB;n:type:ShaderForge.SFN_Set,id:4857,x:32216,y:32360,varname:DiffuseR,prsc:2|IN-2009-OUT;n:type:ShaderForge.SFN_Get,id:4731,x:32583,y:33262,varname:node_4731,prsc:2|IN-4857-OUT;n:type:ShaderForge.SFN_Get,id:179,x:32810,y:33249,varname:node_179,prsc:2|IN-7522-OUT;n:type:ShaderForge.SFN_Get,id:8339,x:32805,y:33314,varname:node_8339,prsc:2|IN-2278-OUT;n:type:ShaderForge.SFN_Set,id:6560,x:33222,y:33376,varname:ColorOutput,prsc:2|IN-6110-OUT;n:type:ShaderForge.SFN_Get,id:2848,x:32204,y:33001,varname:node_2848,prsc:2|IN-6560-OUT;n:type:ShaderForge.SFN_Get,id:5201,x:32556,y:32611,varname:node_5201,prsc:2|IN-6560-OUT;n:type:ShaderForge.SFN_Multiply,id:4996,x:32826,y:33367,varname:node_4996,prsc:2|A-4731-OUT,B-2446-OUT,C-8287-OUT;n:type:ShaderForge.SFN_Vector1,id:2446,x:32604,y:33314,varname:node_2446,prsc:2,v1:2;n:type:ShaderForge.SFN_Fresnel,id:8039,x:32281,y:33468,varname:node_8039,prsc:2;n:type:ShaderForge.SFN_OneMinus,id:8287,x:32617,y:33402,varname:node_8287,prsc:2|IN-8039-OUT;n:type:ShaderForge.SFN_Multiply,id:1561,x:32470,y:32804,varname:node_1561,prsc:2|A-2291-OUT,B-8265-R;n:type:ShaderForge.SFN_Slider,id:2291,x:32018,y:32809,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_2291,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4832794,max:1;n:type:ShaderForge.SFN_Multiply,id:3231,x:32450,y:32678,varname:node_3231,prsc:2|A-358-OUT,B-5252-OUT;n:type:ShaderForge.SFN_OneMinus,id:5252,x:32231,y:32613,varname:node_5252,prsc:2|IN-8265-R;n:type:ShaderForge.SFN_Color,id:4042,x:32617,y:33963,ptovrint:False,ptlb:Primary Color,ptin:_PrimaryColor,varname:node_4042,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:6351,x:32606,y:34132,ptovrint:False,ptlb:Secondary Color,ptin:_SecondaryColor,varname:_PrimaryColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;proporder:6230-9534-8265-2291-358-6674-6507-6669-3695-4543-6351-4042;pass:END;sub:END;*/

Shader "Lone Hero Studios/Rising Islands/ColoredGoo" {
    Properties {
        _DimensionShift ("Dimension Shift", Range(0, 1)) = 0
        _Diffuse ("Diffuse", 2D) = "white" {}
        _GlossTexture ("Gloss Texture", 2D) = "white" {}
        _Gloss ("Gloss", Range(0, 1)) = 0.4832794
        _Metallic ("Metallic", Range(0, 1)) = 0.5042735
        _FlowPower ("Flow Power", Float ) = 5
        _FlowSpeed ("Flow Speed", Float ) = 1
        _Flowmap ("Flowmap", 2D) = "white" {}
        _Normal ("Normal", 2D) = "bump" {}
        _EmissionIntensity ("Emission Intensity", Range(0, 1)) = 1
        _SecondaryColor ("Secondary Color", Color) = (0.5,0.5,0.5,1)
        _PrimaryColor ("Primary Color", Color) = (0.5,0.5,0.5,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _Metallic;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Flowmap; uniform float4 _Flowmap_ST;
            uniform float _FlowPower;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _FlowSpeed;
            uniform sampler2D _GlossTexture; uniform float4 _GlossTexture_ST;
            uniform float _EmissionIntensity;
            uniform float _Gloss;
            uniform float4 _PrimaryColor;
            uniform float4 _SecondaryColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_7488 = _Time + _TimeEditor;
                float4 _Flowmap_var = tex2D(_Flowmap,TRANSFORM_TEX(i.uv0, _Flowmap));
                float2 node_1479 = _Flowmap_var.rgb.rg;
                float2 node_6459 = ((node_1479*1.0+-0.5)*(_FlowPower*(-1.0)));
                float4 node_9568 = _Time + _TimeEditor;
                float node_458 = (node_9568.r*_FlowSpeed);
                float node_5761 = frac(node_458);
                float2 node_6016 = (i.uv0+(node_6459*node_5761));
                float2 node_6984 = (node_6016+node_7488.g*float2(0,0.1));
                float3 node_4936 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_6984, _Normal)));
                float2 node_5265 = (i.uv0+(node_6459*frac((node_458+0.5))));
                float2 node_6010 = (node_5265+node_7488.g*float2(0,0.1));
                float3 node_2487 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_6010, _Normal)));
                float node_1454 = 0.5;
                float node_9116 = abs(((node_1454-node_5761)/node_1454));
                float3 normalLocal = lerp(node_4936.rgb,node_2487.rgb,node_9116);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float FlowMapValues = node_1479.g;
                float2 node_6612 = ((float2(0.0,FlowMapValues)+node_7488.g*float2(0,0.1))*0.5);
                float4 _GlossTexture_var = tex2D(_GlossTexture,TRANSFORM_TEX(node_6612, _GlossTexture));
                float gloss = (_Gloss*_GlossTexture_var.r);
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                d.boxMax[0] = unity_SpecCube0_BoxMax;
                d.boxMin[0] = unity_SpecCube0_BoxMin;
                d.probePosition[0] = unity_SpecCube0_ProbePosition;
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.boxMax[1] = unity_SpecCube1_BoxMax;
                d.boxMin[1] = unity_SpecCube1_BoxMin;
                d.probePosition[1] = unity_SpecCube1_ProbePosition;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 SecondaryColor = _SecondaryColor.rgb;
                float3 MainColor = _PrimaryColor.rgb;
                float2 node_7179 = (node_6016+node_7488.g*float2(0,0.1));
                float4 node_2947 = tex2D(_Diffuse,TRANSFORM_TEX(node_7179, _Diffuse));
                float2 node_119 = (node_5265+node_7488.g*float2(0,0.1));
                float4 node_9543 = tex2D(_Diffuse,TRANSFORM_TEX(node_119, _Diffuse));
                float3 DiffuseR = lerp(node_2947.rgb,node_9543.rgb,node_9116);
                float3 ColorOutput = lerp(SecondaryColor,MainColor,(DiffuseR*2.0*(1.0 - (1.0-max(0,dot(normalDirection, viewDirection))))));
                float3 diffuseColor = ColorOutput; // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, (_Metallic*(1.0 - _GlossTexture_var.r)), specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * (UNITY_PI / 4) );
                float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = (ColorOutput*(pow(_GlossTexture_var.r,5.0)*pow(1.0-max(0,dot(normalDirection, viewDirection)),2.0))*_EmissionIntensity);
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
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
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _Metallic;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Flowmap; uniform float4 _Flowmap_ST;
            uniform float _FlowPower;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _FlowSpeed;
            uniform sampler2D _GlossTexture; uniform float4 _GlossTexture_ST;
            uniform float _EmissionIntensity;
            uniform float _Gloss;
            uniform float4 _PrimaryColor;
            uniform float4 _SecondaryColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_8493 = _Time + _TimeEditor;
                float4 _Flowmap_var = tex2D(_Flowmap,TRANSFORM_TEX(i.uv0, _Flowmap));
                float2 node_1479 = _Flowmap_var.rgb.rg;
                float2 node_6459 = ((node_1479*1.0+-0.5)*(_FlowPower*(-1.0)));
                float4 node_9568 = _Time + _TimeEditor;
                float node_458 = (node_9568.r*_FlowSpeed);
                float node_5761 = frac(node_458);
                float2 node_6016 = (i.uv0+(node_6459*node_5761));
                float2 node_6984 = (node_6016+node_8493.g*float2(0,0.1));
                float3 node_4936 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_6984, _Normal)));
                float2 node_5265 = (i.uv0+(node_6459*frac((node_458+0.5))));
                float2 node_6010 = (node_5265+node_8493.g*float2(0,0.1));
                float3 node_2487 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_6010, _Normal)));
                float node_1454 = 0.5;
                float node_9116 = abs(((node_1454-node_5761)/node_1454));
                float3 normalLocal = lerp(node_4936.rgb,node_2487.rgb,node_9116);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float FlowMapValues = node_1479.g;
                float2 node_6612 = ((float2(0.0,FlowMapValues)+node_8493.g*float2(0,0.1))*0.5);
                float4 _GlossTexture_var = tex2D(_GlossTexture,TRANSFORM_TEX(node_6612, _GlossTexture));
                float gloss = (_Gloss*_GlossTexture_var.r);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 SecondaryColor = _SecondaryColor.rgb;
                float3 MainColor = _PrimaryColor.rgb;
                float2 node_7179 = (node_6016+node_8493.g*float2(0,0.1));
                float4 node_2947 = tex2D(_Diffuse,TRANSFORM_TEX(node_7179, _Diffuse));
                float2 node_119 = (node_5265+node_8493.g*float2(0,0.1));
                float4 node_9543 = tex2D(_Diffuse,TRANSFORM_TEX(node_119, _Diffuse));
                float3 DiffuseR = lerp(node_2947.rgb,node_9543.rgb,node_9116);
                float3 ColorOutput = lerp(SecondaryColor,MainColor,(DiffuseR*2.0*(1.0 - (1.0-max(0,dot(normalDirection, viewDirection))))));
                float3 diffuseColor = ColorOutput; // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, (_Metallic*(1.0 - _GlossTexture_var.r)), specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * (UNITY_PI / 4) );
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _Metallic;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Flowmap; uniform float4 _Flowmap_ST;
            uniform float _FlowPower;
            uniform float _FlowSpeed;
            uniform sampler2D _GlossTexture; uniform float4 _GlossTexture_ST;
            uniform float _EmissionIntensity;
            uniform float _Gloss;
            uniform float4 _PrimaryColor;
            uniform float4 _SecondaryColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float3 SecondaryColor = _SecondaryColor.rgb;
                float3 MainColor = _PrimaryColor.rgb;
                float4 node_7369 = _Time + _TimeEditor;
                float4 _Flowmap_var = tex2D(_Flowmap,TRANSFORM_TEX(i.uv0, _Flowmap));
                float2 node_1479 = _Flowmap_var.rgb.rg;
                float2 node_6459 = ((node_1479*1.0+-0.5)*(_FlowPower*(-1.0)));
                float4 node_9568 = _Time + _TimeEditor;
                float node_458 = (node_9568.r*_FlowSpeed);
                float node_5761 = frac(node_458);
                float2 node_6016 = (i.uv0+(node_6459*node_5761));
                float2 node_7179 = (node_6016+node_7369.g*float2(0,0.1));
                float4 node_2947 = tex2D(_Diffuse,TRANSFORM_TEX(node_7179, _Diffuse));
                float2 node_5265 = (i.uv0+(node_6459*frac((node_458+0.5))));
                float2 node_119 = (node_5265+node_7369.g*float2(0,0.1));
                float4 node_9543 = tex2D(_Diffuse,TRANSFORM_TEX(node_119, _Diffuse));
                float node_1454 = 0.5;
                float node_9116 = abs(((node_1454-node_5761)/node_1454));
                float3 DiffuseR = lerp(node_2947.rgb,node_9543.rgb,node_9116);
                float3 ColorOutput = lerp(SecondaryColor,MainColor,(DiffuseR*2.0*(1.0 - (1.0-max(0,dot(normalDirection, viewDirection))))));
                float FlowMapValues = node_1479.g;
                float2 node_6612 = ((float2(0.0,FlowMapValues)+node_7369.g*float2(0,0.1))*0.5);
                float4 _GlossTexture_var = tex2D(_GlossTexture,TRANSFORM_TEX(node_6612, _GlossTexture));
                o.Emission = (ColorOutput*(pow(_GlossTexture_var.r,5.0)*pow(1.0-max(0,dot(normalDirection, viewDirection)),2.0))*_EmissionIntensity);
                
                float3 diffColor = ColorOutput;
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, (_Metallic*(1.0 - _GlossTexture_var.r)), specColor, specularMonochrome );
                float roughness = 1.0 - (_Gloss*_GlossTexture_var.r);
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
