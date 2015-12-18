#version 430
layout (binding=5) uniform sampler2D tex;
layout (binding=6) uniform sampler2D stex;
layout (binding=7) uniform sampler2D wtex;
uniform vec3 ViewPosition;
out vec4 frag_color;

in vec3 normal;
in vec3 world_pos;

uniform vec3 LightPosition = vec3(30);
uniform vec3 Ka = vec3(0.0, 0.2, 0.0);
uniform vec3 Kd = vec3(0.6, 0.8, 0.6);
uniform vec3 Ks = vec3(0.5, 0.5, 0.8);
uniform float Shininess =1;
uniform vec3 LightColor = vec3(1);
uniform vec3 SpecularColor = vec3(1);

void main()
{
	vec4 texcolor;
	
	

    float x = abs(normal.x);
    float y = abs(normal.y);
    float z = abs(normal.z);
	float limit = 21;
	float wlimit =19;
    if(x > y && x > z)
    {
		texcolor = texture(tex, vec2(world_pos.z, world_pos.y));
		if(length(world_pos) > limit){
			texcolor = texture(stex, vec2(world_pos.z, world_pos.y));
		}
		if(length(world_pos) < wlimit){
			texcolor = texture(wtex, vec2(world_pos.z, world_pos.y));
		}
    }
    if(y > x && y > z)
    {
		texcolor = texture(tex, vec2(world_pos.x, world_pos.z));
	 if(length(world_pos) > limit){
			texcolor = texture(stex, vec2(world_pos.x, world_pos.z));
		}
		if(length(world_pos) < wlimit){
			texcolor = texture(wtex, vec2(world_pos.x, world_pos.z));
		}
	}
    if(z > y && z > x)
    {
		texcolor = texture(tex, vec2(world_pos.x, world_pos.y));
		if(length(world_pos) > limit){
			texcolor = texture(stex, vec2(world_pos.x, world_pos.y));
		}
		if(length(world_pos) < wlimit){
			texcolor = texture(wtex, vec2(world_pos.x, world_pos.y));
		}
    }
	
	vec3 viewVector = normalize(ViewPosition - world_pos.xyz);
    vec3 lightVector = normalize(LightPosition - world_pos.xyz);

	float lightNormalCos = max(dot(normalize(normal), lightVector), 0.0);
	vec3 diffuse_color = Kd*lightNormalCos*LightColor*texcolor.xyz;
	//vec3 diffuse_color = Kd*lightNormalCos*LightColor;

	float specularNormalCos = pow(max(0.0, dot(normalize(reflect(-lightVector,normalize(normal))),normalize(viewVector))), Shininess);
	vec3 specular_color = Ks*SpecularColor * specularNormalCos*(texcolor.xyz);
 
    //frag_color = vec4(Ka*(color_bump/2+0.5), 1.0) + vec4(diffuse_color, 1.0) + vec4(specular_color, 1.0);
    frag_color = vec4(Ka, 1.0)*texcolor + vec4(diffuse_color, 1.0) + vec4(specular_color, 1.0);
	
	//frag_color = vec4(normalize(normal)*0.5 +0.5,1);
	//frag_color = vec4(vec3(texture(noiseTex, world_pos).r),1);
	//frag_color = texcolor;

}
