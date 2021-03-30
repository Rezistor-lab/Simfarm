#pragma once
#include <GL/glew.h>
#include <glm/glm.hpp>
#include <vector>

class VertexBuffer
{
public:
	VertexBuffer(const void* buffer, unsigned int size)
	{
		glGenVertexArrays(1, &_vertexArrayID);
		glBindVertexArray(_vertexArrayID);
		glGenBuffers(1, &_vertexbuffer);
		glBindBuffer(GL_ARRAY_BUFFER, _vertexbuffer);

		glBufferData(GL_ARRAY_BUFFER, size, buffer, GL_STATIC_DRAW);
	}

	~VertexBuffer()
	{
		glDeleteBuffers(1, &_vertexbuffer);
		glDeleteVertexArrays(1, &_vertexArrayID);
	}

	void Bind() const
	{
		glBindVertexArray(_vertexArrayID);
	}

private:
	unsigned int _vertexbuffer;
	unsigned int _vertexArrayID;
};

