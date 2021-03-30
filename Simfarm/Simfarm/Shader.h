#pragma once
#include <GL/glew.h>
#include <glm/glm.hpp>
#include "utils.h"

class Shader
{
public:
	Shader(const char* vertexShader, const char* fragmentShader)
	{
		m_programId = LoadShaders(vertexShader, fragmentShader);
	}

	~Shader()
	{
		if (m_programId != 0) {
			glDeleteProgram(m_programId);
		}
	}

	void Bind() const {
		glUseProgram(m_programId);
	}

private:
	unsigned int m_programId{ 0 };
};