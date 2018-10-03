
#version 330

uniform float time_seconds;

in vec3 varying_position;

out vec4 fragment_colour;
float check ;
void main(void)
{
	
	float r = varying_position.x;
	float g = varying_position.y;
	float b = varying_position.z;
	
    //fragment_colour = 0.5 + 0.5 *vec4(r, g, b, 1.0);
	int checkerSize = 6;
	check = mod(floor(checkerSize * varying_position.x) + floor(checkerSize*varying_position.y), 2.0);
	
	if(check == 0)
	{
		fragment_colour = 0.5+0.5*vec4(r,g,b,1);
		
		
	}else
	{
		fragment_colour = 0.5+0.5*vec4(1,1,1,1);
		
	}
}
