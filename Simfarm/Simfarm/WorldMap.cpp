#include "WorldMap.h"

WorldMap::WorldMap(Renderer* renderer)
{
	std::vector<float> vb{
		-0.5f, -0.5f, 0.0f,
		0.5f, -0.5f, 0.0f,
		0.5f,  0.5f, 0.0f,
		-0.5f,  0.5f, 0.0f
	};
	m_vertexBuffer = new VertexBuffer(vb.data(), vb.size()*sizeof(float));
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(float) * 3, (void*)0);
	glEnableVertexAttribArray(0);

	m_indexBuffer = new IndexBuffer({
		0,1,2,
		2,3,0
	});
	m_shader = new Shader("shaders\\SimpleVertexShader.vertexshader", "shaders\\SimpleFragmentShader.fragmentshader");
	m_renderer = renderer;
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
}

void WorldMap::Update(float diff, const glm::mat4& projectionMatrix, const glm::mat4& view)
{
	m_mvp = projectionMatrix * view * glm::mat4(1.0f);
}

void WorldMap::Draw()
{
	glUniformMatrix4fv(m_mvpMatrixID, 1, GL_FALSE, &m_mvp[0][0]);
	m_renderer->Render(m_vertexBuffer, m_indexBuffer, m_shader);
}

