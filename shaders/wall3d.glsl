#shader vertex
#version 460 core

layout(location = 0) in vec3 position;
layout(location = 1) in vec2 texCoord;

uniform mat4 uModel;
uniform mat4 uView;
uniform mat4 uProjection;

out vec2 vTexCoord;

void main()
{       
    // // Use the fragment position as a seed for pseudo-randomness
    // vec2 seed = vec2(gl_VertexID, gl_VertexID * 3.14); 

    // // Generate pseudo-random color values between 0 and 1
    // float red = fract(sin(dot(seed, vec2(12.9898, 78.233))) * 43758.5453);
    // float green = fract(sin(dot(seed, vec2(4.898, 7.23))) * 7845.545);
    // float blue = fract(sin(dot(seed, vec2(1.234, 5.6789))) * 4234.654);

    // // Assign the pseudo-random color to the fragment shader output
    // vColor = vec4(red, green, blue, 1.0);

    vTexCoord = texCoord;
    gl_Position = uProjection * uView * uModel * vec4(position.x, position.z, position.y, 1.0);
}

#shader fragment
#version 460 core

in vec2 vTexCoord;

layout(location = 0) out vec4 color;

uniform sampler2D uTexture;

void main()
{
    color = texture(uTexture, vTexCoord);
}