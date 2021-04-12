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
		unsigned int offset;
	};

public:
	VertexBuffer(const void* buffer, unsigned int size)
	{
		glGenVertexArrays(1, &_vertexArrayID);
		glBindVertexArray(_vertexArrayID);

		NewBuffer(buffer, size);
	}

	~VertexBuffer()
	{
		for (unsigned int i = 0; i < _vertexbuffer.size(); i++) {
			glDeleteBuffers(1, &(_vertexbuffer[i]));
		}
		glDeleteVertexArrays(1, &_vertexArrayID);
	}

	void NewBuffer(const void* buffer, unsigned int size)
	{
		unsigned int tempId;
		glGenBuffers(1, &tempId);
		glBindBuffer(GL_ARRAY_BUFFER, tempId);
		_vertexbuffer.push_back(tempId);

		glBufferData(GL_ARRAY_BUFFER, size, buffer, GL_STATIC_DRAW);
		m_stride = 0;
	}

	void Bind() const
	{
		glBindVertexArray(_vertexArrayID);
	}

	template<typename T>
	void PushAttrib(int count, unsigned char normalized)
	{
		static_assert(false);
	}

	template<>
	void PushAttrib<float>(int count, unsigned char normalized)
	{
		m_elements.push_back({ count, GL_FLOAT, normalized, sizeof(float), unsigned(m_stride) });
		m_stride += sizeof(float) *count;
	}

	template<>
	void PushAttrib<int>(int count, unsigned char normalized)
	{
		m_elements.push_back({ count, GL_INT, normalized, sizeof(int), unsigned(m_stride) });
		m_stride += sizeof(int) * count;
	}

	void BuildAttribs()
	{
		Bind();
		for (unsigned int i = m_lastAttribPointer; i < m_elements.size(); i++) {
			const auto& el = m_elements[i];
			glVertexAttribPointer(i, el.count, el.type, el.normalized, m_stride, (const void*)el.offset);
			glEnableVertexAttribArray(i);
			m_lastAttribPointer = i+1;
		}
	}

private:
	unsigned int _vertexArrayID{ 0 };
	std::vector<unsigned int> _vertexbuffer{};
	std::vector<Element> m_elements{};
	int m_stride{ 0 };
	int m_lastAttribPointer{ 0 };
};

