
#version 330

uniform float time_seconds;
uniform mat4 mystery_xform;

in vec3 vertex_position;

out vec3 varying_position;


void main(void)
{	
	float angle =  cos(time_seconds)*3.15;
	mat4 rotate = mat4(
					   sin(angle),-cos(angle),0,0,
					   cos(angle),sin(angle), 0,0,
						0,          0,        1,0,
						0,           0,       0,1);
	
	float offset = cos(time_seconds);
	varying_position = vertex_position *offset*5;
    gl_Position = vec4(vertex_position*offset, 1.5)*mystery_xform;
	gl_Position *= rotate;
	

}
