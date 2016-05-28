﻿
// Sourced from:
// https://rauwendaal.net/2014/06/

layout(location = 0) in vec3 position;

out vec2 v_TexCoord;

const vec2 data[3] = vec2[]
(
  vec2(-1.0, -1.0),
  vec2( 3.0, -1.0),
  vec2(-1.0,  3.0)
);

void main()
{

	float x = -1.0 + float((gl_VertexID & 1) << 2);
    float y = -1.0 + float((gl_VertexID & 2) << 1);

    v_TexCoord.x = (x+1.0)*0.5;
    v_TexCoord.y = (y+1.0)*0.5;

    //gl_Position = vec4(data[gl_VertexID], 0, 1);
	gl_Position = vec4(position.xy, 0, 1);
}