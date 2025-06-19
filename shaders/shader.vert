#version 450

layout(location = 0) in vec2 inPosition;
layout(location = 1) in vec3 inColor;
// layout(location = 0) in dvec3 inPosition;    dvec3 is 64 bit vectors, use multiple slots. That means that the index after it must be at least 2 higher
// layout(location = 2) in vec3 inColor;

layout(location = 0) out vec3 fragColor;

void main() {
    gl_Position = vec4(inPosition, 0.0, 1.0);
    fragColor = inColor;
}
