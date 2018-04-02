// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Unlit/SingleColor"
{
    Properties
    {
        // Color property for material inspector, default to white
        _Color ("Main Color", Color) = (0,0,0,1) //拡散光
        _SpecColor ("Specular Color", Color) = (1,1,1,1) //鏡のような反射光
        _Emission ("Emmisive Color", Color) = (0,0,0,0) //自ら発光
        _Shininess ("Shininess", Range (0.01, 1)) = 0.7 //ツヤツヤした光沢感
        _MainTex ("Base (RGB)", 2D) = "white" {} 
    }
    SubShader
    {
        Pass
        {
            Material {
                Diffuse [_Color] //拡散光（オブジェクトの色）
                Ambient [_Color] //環境光
                Shininess [_Shininess]
                Specular [_SpecColor]
                Emission [_Emission]
            }
            Lighting On
            SeparateSpecular On
            SetTexture [_MainTex] {
                Combine texture * primary DOUBLE, texture * primary
            }


            /*
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            
            // vertex shader
            // this time instead of using "appdata" struct, just spell inputs manually,
            // and instead of returning v2f struct, also just return a single output
            // float4 clip position
            float4 vert (float4 vertex : POSITION) : SV_POSITION
            {
                return UnityObjectToClipPos(vertex);
            }

            // color from the material
            fixed4 _Color;

            // pixel shader, no inputs needed
            fixed4 frag () : SV_Target
            {
                return _Color; // just return it
            }

            ENDCG
            */

        }
    }
}
