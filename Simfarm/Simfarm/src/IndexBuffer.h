#pragma once
#include <GL/glew.h>
#include <glm/glm.hpp>
#include <vector>

class IndexBuffer
{
public:
	IndexBuffer(const std::vector<unsigned int>& indices)
	{
		glGenBuffers(1, &m_indicesBuffer);
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, m_indicesBuffer);

		glBufferData(GL_ELEMENT_ARRAY_BUFFER, indices.size() * sizeof(unsigned int), indices.data(), GL_STATIC_DRAW);
		m_indexCount = indices.size();
	}
	~IndexBuffer()
	{
		glDeleteBuffers(1, &m_indicesBuffer);
	}

	inline unsigned int GetCount() const { return m_indexCount; }

	void Bind() const
	{
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, m_indicesBuffer);
	}

	const unsigned int& GetId()
	{
		return m_indicesBuffer;
	}

private:
	unsigned int m_indicesBuffer;
	unsigned int m_indexCount;
};

