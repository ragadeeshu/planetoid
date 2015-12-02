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

	mat3 tbn = mat3(worldspace_tangent,worldspace_binormal,worldspace_normal);

	// Worldspace normal
	geometry_normal_and_specular.xyz =
	 (normalize(
		// worldspace_normal
		tbn*(2*texture(normal_texture, pass_texcoords).xyz-1)
		) * 0.5 + 0.5)
	;

	// Specularity
	geometry_normal_and_specular.a =( texture(specular_texture, pass_texcoords).r
	+texture(specular_texture, pass_texcoords).g
	+texture(specular_texture, pass_texcoords).b)/3;
	geometry_specular = texture(specular_texture, pass_texcoords);
}
