#pragma once
#include <GL/glew.h>
#include <glm/glm.hpp>
#include "utils.h"
#include <unordered_map>

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

	void CacheUniform(const std::string& name)
	{
		Bind();
		m_uniformMap.emplace(name, glGetUniformLocation(m_programId, name.c_str()));
	}

	int UnformId(const std::string& name) {
		return m_uniformMap[name];
	}

private:
	unsigned int m_programId{ 0 };
	std::unordered_map<std::string, int> m_uniformMap{};
};