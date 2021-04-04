#include "WorldMap.h"

WorldMap::WorldMap(Renderer* renderer)
	: m_renderer(renderer), m_mvp(glm::mat4(1.0f))
{
	m_texture = new Texture("res\\textures\\tilemap.png");
	float tw = 1 / 16.0f;
	float th = 1 / 16.0f;
	std::vector<float> vb{
		-1.0f, -1.0f, 0.0f,0.0f,//0 * tw + 0.0f, 0 * th + 0.0f, //bottom left
		1.0f, -1.0f, 1.0f,0.0f,//0 * tw + tw, 0 * th + 0.0f, //bottom right
		1.0f,  1.0f, 1.0f,1.0f,//0 * tw + tw, 0 * th + th, //top right
		-1.0f,  1.0f, 0.0f,1.0f//0 * tw + 0.0f, 0 * th + th //top left
	};
	m_vertexBuffer = new VertexBuffer(vb.data(), vb.size()*sizeof(float));
	m_vertexBuffer->PushAttrib<float>(2);
	m_vertexBuffer->PushAttrib<float>(2);
	m_vertexBuffer->BuildAttribs();

	m_indexBuffer = new IndexBuffer({
		0,1,2,
		2,3,0
	});
	m_shader = new Shader("res\\shaders\\SimpleVertexShader.vertexshader", "res\\shaders\\SimpleFragmentShader.fragmentshader");
	m_shader->CacheUniform("u_mvp");
	m_shader->CacheUniform("u_Texture");
}

WorldMap::~WorldMap()
{
	if (m_vertexBuffer) {
		delete m_vertexBuffer;
	}
	if (m_indexBuffer) {
		delete m_indexBuffer;
	}
	if (m_shader) {
		delete m_shader;
	}
	if (m_texture) {
		delete m_texture;
	}
}

void WorldMap::Update(float diff, const glm::mat4& projectionMatrix, const glm::mat4& view)
{
	m_mvp = projectionMatrix * view * glm::mat4(1.0f);
}

void WorldMap::Draw()
{
	m_texture->Bind(0);
	glUniformMatrix4fv(m_shader->UnformId("u_mvp"), 1, GL_FALSE, &m_mvp[0][0]);
	glUniform1i(m_shader->UnformId("u_Texture"), 0);
	m_renderer->Render(m_vertexBuffer, m_indexBuffer, m_shader);
}

