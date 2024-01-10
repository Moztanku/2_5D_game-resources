#shader vertex
#version 330 core

layout(location = 0) in vec2 position;

uniform mat4 u_projection;
uniform vec2 u_PlayerPos;
uniform float u_PlayerRot;

vec2 rotate(vec2 ver, vec2 origin, float angle)
{
    float s = sin(angle);
    float c = cos(angle);

    ver -= origin;
    ver = vec2(ver.x * c - ver.y * s, ver.x * s + ver.y * c);
    ver += origin;

    return ver;
}

void main()
{
    vec2 pos = rotate(position, u_PlayerPos, -u_PlayerRot + 3.1415926535897932384626433832795 / 2.0);
    gl_Position = u_projection * vec4(pos - u_PlayerPos, 0.0, 1.0);
}

#shader fragment
#version 330 core

layout(location = 0) out vec4 color;

uniform vec4 u_color;

void main()
{
    color = u_color;
}
