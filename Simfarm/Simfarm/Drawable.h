#pragma once
#include <GL/glew.h>
#include <glm/glm.hpp>
#include "utils.h"

class Drawable
{
protected:
	virtual unsigned int LoadShader() = 0;
	virtual void LoadVertexBuffer() = 0;
	virtual void LoadIndexBuffer() = 0;
	virtual void ShaderBeforeDraw() = 0;
	virtual void Update(float delta, const glm::mat4& projectionMatrix, const glm::mat4& view) = 0;

public:
	void LoadBuffers()
	{
		glGenVertexArrays(1, &_vertexArrayID);
		glBindVertexArray(_vertexArrayID);

		_shaderProgramID = LoadShader();

		glGenBuffers(1, &_vertexbuffer);
		glBindBuffer(GL_ARRAY_BUFFER, _vertexbuffer);
		LoadVertexBuffer();
		glEnableVertexAttribArray(0);

		glGenBuffers(1, &_indicesBuffer);
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, _indicesBuffer);
		LoadIndexBuffer();

		Unbind();
	}

	void Release()
	{
		glDeleteBuffers(1, &_vertexbuffer);
		glDeleteBuffers(1, &_indicesBuffer);
		glDeleteVertexArrays(1, &_vertexArrayID);
		if (_shaderProgramID != 0) 
		{
			glDeleteProgram(_shaderProgramID);
		}
	}

	void Draw()
	{
		if (_shaderProgramID != 0)
		{
			glUseProgram(_shaderProgramID);
			ShaderBeforeDraw();
		}

		glBindVertexArray(_vertexArrayID);
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, _indicesBuffer);

		glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);
		
		Unbind();
	}

private:
	void Unbind()
	{
		glBindVertexArray(0);
		glUseProgram(0);
		glBindBuffer(GL_ARRAY_BUFFER, 0);
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
	}

private:
	unsigned int _vertexbuffer;
	unsigned int _indicesBuffer;
	unsigned int _vertexArrayID;
	unsigned int _shaderProgramID;
};