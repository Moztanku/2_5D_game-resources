#shader vertex
#version 330 core

layout(location = 0) in vec2 position;

uniform mat4 projection;

void main()
{
    gl_Position = projection * vec4(position, 0.0, 1.0);
}

#shader fragment
#version 330 core

layout(location = 0) out vec4 color;

uniform vec2 distance;

void main()
{
    float c = distance.x / 10.f;
    color = vec4(c, 0.0, 0.0, 1.0);
}