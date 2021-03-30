#pragma once
#include <GL/glew.h>
#include <glm/glm.hpp>
#include "utils.h"
#include "VertexBuffer.h"
#include "IndexBuffer.h"
#include "Renderer.h"

class WorldMap
{
public:
	WorldMap(Renderer* renderer);
	~WorldMap();

	void Update(float delta, const glm::mat4& projectionMatrix, const glm::mat4& view);
	void Draw();

private:
	unsigned int m_mvpMatrixID{ 0 };
	glm::mat4 m_mvp;

	VertexBuffer* m_vertexBuffer;
	IndexBuffer* m_indexBuffer;
	Shader* m_shader;
	Renderer* m_renderer;
};