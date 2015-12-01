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

layout (location = 0) out vec4 light_contribution;

float shadowSampler(sampler2DShadow tex, vec3 norm3){
    int size = 3;
    float sum = 0;
    for(int i = -size/2; i<size/2; i++){
        for(int j = -size/2; j<size/2; j++){
            sum += texture(tex,vec3(norm3.x+i*ShadowMapTexelSize.x,norm3.y+j*ShadowMapTexelSize.y,norm3.z));
        }
    }
    return sum/(size*size);
}

void main()
{
    vec2 postion_texcoords = gl_FragCoord.xy*invRes;
    vec3 normal =normalize (texture(normalAndSpecularBuffer, postion_texcoords).rgb*2-1);
    float specular = texture(normalAndSpecularBuffer, postion_texcoords).a;
    float depth = texture(depthBuffer, postion_texcoords).x;
    vec3 ssposition = vec3(postion_texcoords, depth)*2-1;
    vec4 wposition = ViewProjectionInverse*vec4(ssposition,1);
    wposition= wposition/wposition.w;

    vec4 shadowViewPosition = shadowViewProjection*wposition;
    shadowViewPosition=shadowViewPosition/shadowViewPosition.w;
    float isShadow = shadowSampler(shadowMap, shadowViewPosition.xyz*0.5+0.5);
    // float isShadow = texture(shadowMap, shadowViewPosition.xyz*0.5+0.5);


    vec3 viewVector = normalize(ViewPosition - wposition.xyz);
    vec3 LightVector = normalize(LightPosition-wposition.xyz);

    float lightNormalCos = max(0.0, dot(normal, LightVector));
    vec3 diffuse_color = LightColor * lightNormalCos ;
    vec3 specular_color = specular * pow(max(0, dot(reflect(-LightVector, normal), viewVector)), 100) * LightColor;


    float light_fallof =
        max(0, dot(LightDirection, -LightVector)-LightAngleFalloff)
        *LightIntensity
        /dot(LightPosition-wposition.xyz,LightPosition-wposition.xyz);

    light_contribution = vec4(diffuse_color+specular_color,1.0)*light_fallof*isShadow;
    // light_contribution = vec4 (vec3(1)*isShadow,1);

}
