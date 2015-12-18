#version 330

uniform sampler2D diffuse_texture;
uniform sampler2D specular_texture;
uniform sampler2D normal_texture;

in vec3 worldspace_normal;
in vec3 worldspace_binormal;
in vec3 worldspace_tangent;
in vec2 pass_texcoords;

layout (location = 0) out vec4 geometry_diffuse;
layout (location = 1) out vec4 geometry_specular;
layout (location = 2) out vec4 geometry_normal_and_specular;


void main()
{
	// Diffuse color
	geometry_diffuse = texture(diffuse_texture, pass_texcoords);
	if (geometry_diffuse.a < 1.0) discard;

	// Specular color
	geometry_specular = texture(specular_texture, pass_texcoords);

	// Worldspace normal
	geometry_normal_and_specular.xyz = vec3(0.0, 1.0, 0.0);
	
	// Shininess
	// geometry_normal_and_specular.a = 1.0;
}
