// Zadanie 2.1.3 - Modyfikacja programu cieniuj¹cego wierzcho³ki i piksele
struct VertexIn
{
    float3 PosL : POSITION;
//TODO - Dodaj kolor
    float3 ColL : COLOR;
};

struct VertexOut
{
    float4 PosH : SV_POSITION;
//TODO - Dodaj kolor
    float3 ColH : COLOR;
};

// Zadanie 2.2.5 - Tworzenie obiektu reprezentuj¹cego macierz widoku i projekcji
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

// Zadanie 2.2.5 - Modyfikacja programu cieniuj¹cego wierzcho³ki
// Zamiast umieszczonej ponizej statycznej macierzy - wykorzystaj macierze zapisane przez ciebie w buforze stalych
    float4 worldPos = mul(float4(vin.PosL, 1.0f), gWorldMatrix);
    float4 viewPos = mul(worldPos, gViewMatrix);
    float4 projPos = mul(viewPos, gProjMatrix);

// Transform to homogeneous clip space.
    vout.PosH = projPos;

    vout.ColH = vin.ColL;

    return vout;
}

float4 PS_Main(VertexOut pin) : SV_Target
{
// Zadanie 2.1.3 - Wyœwietlanie koloru
    return float4(pin.ColH, 1.0f);
}