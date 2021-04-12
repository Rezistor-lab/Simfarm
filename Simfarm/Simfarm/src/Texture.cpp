#include "Texture.h"

Texture::Texture(const std::string& path)
	:m_id(0), m_path(path), m_buffer(nullptr), m_width(0), m_height(0), m_bpp(0)
{
	stbi_set_flip_vertically_on_load(1);
	m_buffer = stbi_load(path.c_str(), &m_width, &m_height, &m_bpp, STBI_rgb_alpha);
	auto load_status = stbi_failure_reason();
	if (load_status) {
		std::cout << "Image:" << path << " load failed with error " << load_status;
	}
	glGenTextures(1, &m_id);
	glBindTexture(GL_TEXTURE_2D_ARRAY, m_id);
	int intFormat = m_bpp == 3 ? GL_RGB8 : GL_RGBA8;
	int format = m_bpp == 3 ? GL_RGB : GL_RGBA;
	glTexImage3D(GL_TEXTURE_2D_ARRAY, 0, intFormat, 16.0, 16.0, 256, 0, format, GL_UNSIGNED_BYTE, m_buffer);

	glTextureParameteri(GL_TEXTURE_2D_ARRAY, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTextureParameteri(GL_TEXTURE_2D_ARRAY, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	glTextureParameteri(GL_TEXTURE_2D_ARRAY, GL_TEXTURE_MAX_LEVEL, 4);
	glTextureParameteri(GL_TEXTURE_2D_ARRAY, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
	glTextureParameteri(GL_TEXTURE_2D_ARRAY, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

	glGenerateMipmap(GL_TEXTURE_2D_ARRAY);

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
	glBindTexture(GL_TEXTURE_2D_ARRAY, m_id);
}