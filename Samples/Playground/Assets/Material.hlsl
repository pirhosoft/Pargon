struct VertexInput
{
	float2 Position : POSITION;
	float2 TextureCoordinate : TEXCOORD;
};

struct PixelInput
{
	float4 Position : SV_POSITION;
	float2 TextureCoordinate : TEXCOORD;
};

PixelInput VertexMain(VertexInput input)
{
	PixelInput output;

	output.Position = float4(input.Position, 0, 1);
	output.TextureCoordinate = input.TextureCoordinate;

	return output;
}

Texture2D _texture : register(t0);
SamplerState _sampler : register(s0);

float4 FragmentMain(PixelInput input) : SV_TARGET
{
	return _texture.Sample(_sampler, input.TextureCoordinate);
}
