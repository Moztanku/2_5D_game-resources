#shader vertex
#version 460 core

layout(location = 0) in vec3 position;

uniform mat4 uModel;
uniform mat4 uView;
uniform mat4 uProjection;

uniform vec3 uCamPos;
void main()
{       
    gl_Position = uProjection * uView * uModel * vec4(position.x, position.y, position.z, 1.0);
}

#shader fragment
#version 460 core

layout(location = 0) out vec4 color;

in vec3 vColor;

void main()
{
    vec3 c = vec3(0.5, 0.5, 0.5);
    color = vec4(c, 1.0);
}