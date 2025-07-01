struct VertexIn
{
    float3 PosL : POSITION;
    float3 ColL : COLOR;
};

struct VertexOut
{
    float4 PosH : SV_POSITION;
    float3 ColH : COLOR;
};

cbuffer cbCamera : register(b0)
{
    float4x4 gViewMatrix;
    float4x4 gProjMatrix;
};

cbuffer cbCamera : register(b1)
{
    float4x4 gWorldMatrix;
};

VertexOut VS_Main(VertexIn vin)
{
    VertexOut vout;

    float4 worldPos = mul(float4(vin.PosL, 1.0f), gWorldMatrix);
    float4 viewPos = mul(worldPos, gViewMatrix);
    float4 projPos = mul(viewPos, gProjMatrix);

    vout.PosH = projPos;

    vout.ColH = vin.ColL;

    return vout;
}

float4 PS_Main(VertexOut pin) : SV_Target
{
    return float4(pin.ColH, 1.0f);
}