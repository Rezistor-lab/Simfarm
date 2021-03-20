#include "WorldMap.h"

unsigned int WorldMap::LoadShader()
{
	unsigned int shaderId = LoadShaders("shaders\\SimpleVertexShader.vertexshader", "shaders\\SimpleFragmentShader.fragmentshader");
	_mvpMatrixID = glGetUniformLocation(shaderId, "MVP");
	return shaderId;
}

void WorldMap::LoadVertexBuffer()
{
	float g_vertex_buffer_data[] = {
		-0.5f, -0.5f, 0.0f,
		0.5f, -0.5f, 0.0f,
		0.5f,  0.5f, 0.0f,
		-0.5f,  0.5f, 0.0f
	};

	glBufferData(GL_ARRAY_BUFFER, sizeof(g_vertex_buffer_data), g_vertex_buffer_data, GL_STATIC_DRAW);
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(float) * 3, (void*)0);
}

void WorldMap::Update(float diff, const glm::mat4& projectionMatrix, const glm::mat4& view)
{
	_mvp = projectionMatrix * view * glm::mat4(1.0f);
}

void WorldMap::LoadIndexBuffer()
{
	unsigned int indices[] = {
		0,1,2,
		2,3,0
	};

	glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);
}

void WorldMap::ShaderBeforeDraw()
{
	glUniformMatrix4fv(_mvpMatrixID, 1, GL_FALSE, &_mvp[0][0]);
}

