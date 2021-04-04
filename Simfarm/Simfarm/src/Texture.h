#pragma once

#include "Renderer.h"
#include "vendor\stb_image.h"

class Texture
{
public:
	Texture(const std::string& path);
	~Texture();

	void Bind(unsigned int slot=0) const;
	int Width() const { return m_width; };
	int Height() const { return m_height; };
private:
	unsigned int m_id;
	std::string m_path;
	unsigned char* m_buffer;
	int m_width, m_height, m_bpp;
};

