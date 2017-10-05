//
// Simple passthrough fragment shader
//
varying vec2 v_texcoord;

uniform float time;
uniform float wave_amount;
uniform float wave_distortion;
uniform float wave_speed;
uniform float pixelH;
uniform float pixelW;

void main()
{
	vec2 offsetx;
	offsetx.x = pixelW;
	vec2 offsety;
	offsety.y = pixelH;

    vec2 uv = v_texcoord;
	uv.x = uv.x + cos(uv.y * wave_amount + time * wave_speed) / wave_distortion;
	uv.y = uv.y + sin(uv.x * wave_amount + time * wave_speed) / wave_distortion;
	
	gl_FragColor = texture2D(gm_BaseTexture, uv);
}
