#shader vertex
#version 330 core

layout(location = 0) in vec2 position;

uniform mat4 u_projection;

void main()
{

    gl_Position = u_projection * vec4(position, 0.0, 1.0);
}

#shader fragment
#version 330 core

layout(location = 0) out vec4 color;

uniform vec4 u_color;

void main()
{
    color = u_color;
}