#pragma once

#include <GL/glew.h>
#include <glm/glm.hpp>
#include "VertexBuffer.h"
#include "IndexBuffer.h"
#include "Shader.h"

class Renderer
{
public:
	void Render(const VertexBuffer* vb, const IndexBuffer* ib, const Shader* shader) const;
};