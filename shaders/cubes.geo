#version 450
// #extension GL_ARB_arrays_of_arrays : enable
//#extension GL_ARB_shading_language_420pack : enable

uniform mat4 model_to_clip_matrix;

//layout (std430, binding=2) buffer tri_table
//{
//  int [256][16] triTable;
//};

vec3 normalDiffx = vec3(2.2,0,0);
vec3 normalDiffy = vec3(0,2.2,0);
vec3 normalDiffz = vec3(0,0,2.2);
layout(points) in;
//layout(points, max_vertices = 1) out;
//layout(points, max_vertices = 15) out;
layout(triangle_strip, max_vertices = 15) out;


layout (binding=0) uniform isampler2D triTableTex;
layout (binding=3) uniform sampler3D noiseTex;
layout (binding=4) uniform sampler3D noiseTex2;

uniform vec3 vertDecals[8];

out vec3 normal;
out vec3 world_pos;


float Perlin3D( vec3 p ){
	return texture(noiseTex, p).r;
}
float Perlin3D2( vec3 p ){
	return texture(noiseTex2, p).r;
}


vec3 cubePos(int i){
	return gl_in[0].gl_Position.xyz + vertDecals[i];
}

float density(vec3 pos){


	float rad = 5;

	float density = rad - length(pos +vec3(0,-5,0) - vec3(0, -rad, 0));
	//float density = -pos.y;
	density +=15;						

	vec3 cpos = pos +20;


	density +=   Perlin3D(cpos*1.21)   *0.25; 
	density +=   Perlin3D2(cpos*0.404)  *0.16;   
	density +=   Perlin3D(cpos*0.504)  *0.5;   
	density +=   Perlin3D2(cpos*0.353)  *0.3250;
	density +=   Perlin3D(cpos*0.253)  *1.00;
	density +=   Perlin3D2(cpos*0.109)  *0.750;
	density +=   Perlin3D(cpos*0.129)  *2.00;
	density +=   Perlin3D2(cpos*0.0421) *1.50;  
	density +=   Perlin3D(cpos*0.0621) *3.00;  

	if(length(pos) <18.8)
		return 0.5;
								     
	//density += Perlin3D(pos.xyz*2.17).x*0.75;  
	//density += Perlin3D(pos.xyz*0.98).x*1.7;  
	//density += Perlin3D(pos.xyz*0.2).x*3.15;  
	
	return density;
}


float cubeVal(int i){
	return density(cubePos(i));
}

int triTableValue(int i, int j){
	return texelFetch(triTableTex, ivec2(j, i), 0).r;
	//return triTable[i][j];
}

vec3 vertexInterp(vec3 v0, float l0, vec3 v1, float l1){
	return mix(v0, v1, 
	//0
	(-l0)/(l1-l0)
	);
}

//void main()
//{
//    float density = cubeVal(0);
//	if(density > 0){
//		gl_Position =model_to_clip_matrix *  gl_in[0].gl_Position;
//		EmitVertex();
//		EndPrimitive();
//	}
//}

void main()
{
	int cubeindex=0;

	float cubeVal0 = cubeVal(0);
	float cubeVal1 = cubeVal(1);
	float cubeVal2 = cubeVal(2);
	float cubeVal3 = cubeVal(3);
	float cubeVal4 = cubeVal(4);
	float cubeVal5 = cubeVal(5);
	float cubeVal6 = cubeVal(6);
	float cubeVal7 = cubeVal(7);

	cubeindex =  int(cubeVal0 < 0);
	cubeindex += int(cubeVal1 < 0)*2;
	cubeindex += int(cubeVal2 < 0)*4;
	cubeindex += int(cubeVal3 < 0)*8;
	cubeindex += int(cubeVal4 < 0)*16;
	cubeindex += int(cubeVal5 < 0)*32;
	cubeindex += int(cubeVal6 < 0)*64;
	cubeindex += int(cubeVal7 < 0)*128;

	if (cubeindex ==0 || cubeindex == 255)
		return;

	//Cube is entirely in/out of the surface
	if (cubeindex ==0 || cubeindex == 255)
		return;

	vec3 vertlist[12];

	//Find the vertices where the surface intersects the cube
	vertlist[0] =  vertexInterp(cubePos(0), cubeVal0, cubePos(1), cubeVal1);
	vertlist[1] =  vertexInterp(cubePos(1), cubeVal1, cubePos(2), cubeVal2);
	vertlist[2] =  vertexInterp(cubePos(2), cubeVal2, cubePos(3), cubeVal3);
	vertlist[3] =  vertexInterp(cubePos(3), cubeVal3, cubePos(0), cubeVal0);
	vertlist[4] =  vertexInterp(cubePos(4), cubeVal4, cubePos(5), cubeVal5);
	vertlist[5] =  vertexInterp(cubePos(5), cubeVal5, cubePos(6), cubeVal6);
	vertlist[6] =  vertexInterp(cubePos(6), cubeVal6, cubePos(7), cubeVal7);
	vertlist[7] =  vertexInterp(cubePos(7), cubeVal7, cubePos(4), cubeVal4);
	vertlist[8] =  vertexInterp(cubePos(0), cubeVal0, cubePos(4), cubeVal4);
	vertlist[9] =  vertexInterp(cubePos(1), cubeVal1, cubePos(5), cubeVal5);
	vertlist[10] = vertexInterp(cubePos(2), cubeVal2, cubePos(6), cubeVal6);
	vertlist[11] = vertexInterp(cubePos(3), cubeVal3, cubePos(7), cubeVal7);
	int i=0;
	vec3 vert;
	while(true){
		vec4 position;
		if(triTableValue(cubeindex, i)!=-1 ){
			world_pos = vertlist[triTableValue(cubeindex, i)];
			

			normal =normalize(
			-vec3(
			density(world_pos +normalDiffx)-density(world_pos-normalDiffx),
			density(world_pos +normalDiffy)-density(world_pos-normalDiffy),
			density(world_pos +normalDiffz)-density(world_pos-normalDiffz)
			));
			position= vec4(world_pos, 1);
			gl_Position = model_to_clip_matrix * position;
			EmitVertex();

			world_pos = vertlist[triTableValue(cubeindex, i+1)];
			
			normal =normalize(
			-vec3(
			density(world_pos +normalDiffx)-density(world_pos-normalDiffx),
			density(world_pos +normalDiffy)-density(world_pos-normalDiffy),
			density(world_pos +normalDiffz)-density(world_pos-normalDiffz)
			));
			position= vec4(world_pos, 1);
			gl_Position = model_to_clip_matrix * position;
			EmitVertex();

			world_pos = vertlist[triTableValue(cubeindex, i+2)];
			
			normal =normalize(
			-vec3(
			density(world_pos +normalDiffx)-density(world_pos-normalDiffx),
			density(world_pos +normalDiffy)-density(world_pos-normalDiffy),
			density(world_pos +normalDiffz)-density(world_pos-normalDiffz)
			));
			position= vec4(world_pos, 1);
			gl_Position = model_to_clip_matrix * position;
			EmitVertex();

			EndPrimitive();
		}else{
			break;
		}

		i=i+3;
	}
}

