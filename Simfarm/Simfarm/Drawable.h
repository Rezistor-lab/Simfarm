#pragma once
#include <GL/glew.h>
#include <glm/glm.hpp>
#include "utils.h"
#include "vertexBuffer.h"
#include "indexBuffer.h"

class Drawable
{
protected:
	virtual unsigned int LoadShader() = 0;
	virtual unsigned int LoadVertexBuffer() = 0;
	virtual void LoadIndexBuffer() = 0;
	virtual void ShaderBeforeDraw() = 0;
	virtual void Update(float delta, const glm::mat4& projectionMatrix, const glm::mat4& view) = 0;

public:
	void LoadBuffers()
	{
		_vertexBuffer = new VertexBuffer;
		_indexBuffer = new IndexBuffer;
		_shaderProgramID = LoadShader();

		_vertexBuffer->Create();
		_vertexBuffer->SetCount(LoadVertexBuffer());

		_indexBuffer->Create();
		LoadIndexBuffer();

		Unbind();
	}

	void Release()
	{
		_vertexBuffer->Release();
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

		_vertexBuffer->Bind();
		_indexBuffer->Bind();
		glDrawElements(GL_LINE_LOOP, _vertexBuffer->GetCount(), GL_UNSIGNED_INT, 0);
		
		Unbind();
	}

private:
	void Unbind()
	{
		_vertexBuffer->Unbind();
		_indexBuffer->Unbind();
		glUseProgram(0);
	}

private:
	unsigned int _shaderProgramID;
	VertexBuffer* _vertexBuffer;
	IndexBuffer* _indexBuffer;
};