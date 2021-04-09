#include "Texture.h"

Texture::Texture(const std::string& path)
	:m_id(0), m_path(path), m_buffer(nullptr), m_width(0), m_height(0), m_bpp(0)
{
	stbi_set_flip_vertically_on_load(1);
	m_buffer = stbi_load(path.c_str(), &m_width, &m_height, &m_bpp, 4);

	glGenTextures(1, &m_id);
	glBindTexture(GL_TEXTURE_2D, m_id);

	glTextureParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTextureParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	glTextureParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
	glTextureParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, m_width, m_height, 0, GL_RGBA, GL_UNSIGNED_BYTE, m_buffer);

	if (m_buffer) {
		stbi_image_free(m_buffer);
	}
}

Texture::~Texture()
{
	glDeleteTextures(1, &m_id);
}

void Texture::Bind(unsigned int slot) const
{
	glActiveTexture(GL_TEXTURE0+slot);
	glBindTexture(GL_TEXTURE_2D, m_id);
}