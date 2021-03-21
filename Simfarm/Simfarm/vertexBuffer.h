#pragma once
#include <GL/glew.h>
#include <glm/glm.hpp>

class VertexBuffer
{
public:
	void Create()
	{
		glGenVertexArrays(1, &_vertexArrayID);
		glBindVertexArray(_vertexArrayID);
		glGenBuffers(1, &_vertexbuffer);
		glBindBuffer(GL_ARRAY_BUFFER, _vertexbuffer);
	}

	void SetCount(unsigned int count)
	{
		_count = count;
	}

	const unsigned int& GetCount()
	{
		return _count;
	}

	void Bind()
	{
		glBindVertexArray(_vertexArrayID);
	}

	void Unbind()
	{
		glBindVertexArray(0);
		glBindBuffer(GL_ARRAY_BUFFER, 0);
	}

	void Release()
	{
		glDeleteBuffers(1, &_vertexbuffer);
		glDeleteVertexArrays(1, &_vertexArrayID);
	}

private:
	unsigned int _vertexbuffer;
	unsigned int _vertexArrayID;

	unsigned int _count;
};

