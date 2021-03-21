#pragma once
#include <GL/glew.h>
#include <glm/glm.hpp>

class IndexBuffer
{
public:
	void Create()
	{
		glGenBuffers(1, &_indicesBuffer);
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, _indicesBuffer);
	}
	
	void Bind()
	{
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, _indicesBuffer);
	}

	void Unbind()
	{
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
	}

	void Release()
	{
		glDeleteBuffers(1, &_indicesBuffer);
	}

	const unsigned int& GetId()
	{
		return _indicesBuffer;
	}

private:
	unsigned int _indicesBuffer;
};

