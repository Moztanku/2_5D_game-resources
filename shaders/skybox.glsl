#shader vertex
#version 460 core

layout(location = 0) in vec3 position;
layout(location = 1) in vec2 texPos;

out vec2 vTexPos;

uniform mat4 uModel;
uniform mat4 uView;
uniform mat4 uProjection;

void main()
{       
    vTexPos = texPos;
    gl_Position = uProjection * uView * uModel * vec4(position.x, position.y, position.z, 1.0);
}

#shader fragment
#version 460 core

layout(location = 0) out vec4 color;

uniform sampler2D uTexture;

in vec2 vTexPos;

void main()
{
    color = texture(uTexture, vTexPos);
}