#pragma once
#include <GL/glew.h>
#include <glm/glm.hpp>
#include <vector>

class VertexBuffer
{
private:
	struct Element{
		int count;
		unsigned int type;
		unsigned char normalized;
		unsigned int size;
	};

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

	template<typename T>
	void PushAttrib(int count)
	{
		static_assert(false);
	}

	template<>
	void PushAttrib<float>(int count)
	{
		m_elements.push_back({ count, GL_FLOAT, GL_FALSE, sizeof(float) });
		m_stride += sizeof(float) *count;
	}

	void BuildAttribs()
	{
		unsigned int offset = 0;
		for (unsigned int i = 0; i < m_elements.size(); i++) {
			const auto& el = m_elements[i];
			glEnableVertexAttribArray(i);
			glVertexAttribPointer(i, el.count, el.type, el.normalized, m_stride, (const void*)offset);
			offset += el.count*el.size;
		}
	}

private:
	unsigned int _vertexbuffer{ 0 };
	unsigned int _vertexArrayID{ 0 };
	std::vector<Element> m_elements{};
	int m_stride{ 0 };
};

