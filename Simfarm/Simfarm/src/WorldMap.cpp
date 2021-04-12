#include "WorldMap.h"

WorldMap::WorldMap(Renderer* renderer)
	: m_renderer(renderer), m_mvp(glm::mat4(1.0f))
{
	m_texture = new Texture("res\\textures\\tilemap.png");
	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

	float tw = 1 / 16.0f;
	float th = 1 / 16.0f;
	std::vector<float> position{
		/*16.0f,16.0f,0.0f, tw,1.0f,//top right
		16.0f,-16.0f,0.0f, tw,1.0f - th,//bottom right
		-16.0f,-16.0f,0.0f, 0.0f,1.0f-th,//bottom left
		-16.0f,16.0f,0.0f, 0.0f,1.0f//top left*/

		16.0f,16.0f,0.0f,//top right
		16.0f,-16.0f,0.0f,//bottom right
		-16.0f,-16.0f,0.0f,//bottom left
		-16.0f,16.0f,0.0f//top left

		/*16.0f,16.0f,0.0f, tw,1.0f,//top right
		16.0f,-16.0f,0.0f, tw,1.0f - th,//bottom right
		-16.0f,-16.0f,0.0f, 0.0f,1.0f - th,//bottom left
		-16.0f,16.0f,0.0f, 0.0f,1.0f//top left*/

		//-1.0f, -1.0f, 0.0f,0.0f,//0 * tw + 0.0f, 0 * th + 0.0f, //bottom left
		//1.0f, -1.0f, 1.0f,0.0f,//0 * tw + tw, 0 * th + 0.0f, //bottom right
		//1.0f,  1.0f, 1.0f,1.0f,//0 * tw + tw, 0 * th + th, //top right
		//-1.0f,  1.0f, 0.0f,1.0f//0 * tw + 0.0f, 0 * th + th //top left
	};
	std::vector<float> uv {
		0.0f,1.0f,//top left
		0.0f,0.0f,//bottom left
		1.0f,0.0f,//bottom right
		1.0f,1.0f//top right
	};
	std::vector<int> times{
		0,0,0,0
	};

	m_vertexBuffer = new VertexBuffer(position.data(), position.size()*sizeof(float));
	m_vertexBuffer->PushAttrib<float>(3, 1);
	m_vertexBuffer->BuildAttribs();
	m_vertexBuffer->NewBuffer(uv.data(), uv.size() * sizeof(float));
	m_vertexBuffer->PushAttrib<float>(2, 1);
	m_vertexBuffer->BuildAttribs();
	m_vertexBuffer->NewBuffer(times.data(), times.size() * sizeof(int));
	m_vertexBuffer->PushAttrib<int>(1, 1);
	m_vertexBuffer->BuildAttribs();

	m_indexBuffer = new IndexBuffer({
		0,1,2,
		2,0,3
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

void WorldMap::Update(float diff, const glm::mat4& projectionMatrix, const glm::mat4& view, const float& zoom)
{
	auto model = glm::scale(glm::mat4(1.0f), glm::vec3(zoom));
	m_mvp = projectionMatrix * view * model;
}

void WorldMap::Draw()
{
	m_texture->Bind(0);
	m_shader->Bind();
	glUniformMatrix4fv(m_shader->UnformId("u_mvp"), 1, GL_FALSE, &m_mvp[0][0]);
	glUniform1i(m_shader->UnformId("u_Texture"), 0);
	m_vertexBuffer->Bind();
	m_indexBuffer->Bind();
	glDrawElements(GL_TRIANGLES, m_indexBuffer->GetCount(), GL_UNSIGNED_INT, 0);
	
	//m_renderer->Render(m_vertexBuffer, m_indexBuffer, m_shader);
}

