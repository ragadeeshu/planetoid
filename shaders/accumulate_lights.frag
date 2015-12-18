#version 330

uniform sampler2D depthBuffer;
uniform sampler2D normalAndSpecularBuffer;
uniform sampler2DShadow shadowMap;

uniform vec2 invRes;

uniform mat4 ViewProjectionInverse;
uniform mat4 ViewProjection;
uniform vec3 ViewPosition;
uniform mat4 shadowViewProjection;

uniform vec3 LightColor;
uniform vec3 LightPosition;
uniform vec3 LightDirection;
uniform float LightIntensity;
uniform float LightAngleFalloff;

uniform vec2 ShadowMapTexelSize;

layout (location = 0) out vec4 light_diffuse_contribution;
layout (location = 1) out vec4 light_specular_contribution;


void main()
{
    light_diffuse_contribution  = vec4(0.0, 0.0, 0.0,1.0);
    light_specular_contribution = vec4(0.0, 0.0, 0.0,1.0);
}
