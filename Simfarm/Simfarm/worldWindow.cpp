#include "WorldWindow.h"

WorldWindow::WorldWindow()
{
	/*_worldSize = glm::vec2{ 2,4 };
	_world = std::vector<Tile>(_worldSize.x* _worldSize.y);*/
	m_renderer = new Renderer;
}
WorldWindow::~WorldWindow()
{
	if (m_renderer) {
		delete m_renderer;
	}
	if (m_map) {
		delete m_map;
	}
}

void WorldWindow::OnLoad()
{
	m_map = new WorldMap(m_renderer);
	fprintf(stdout, "OnLoad");
}


void WorldWindow::OnUpdate(float diff, const glm::mat4& projectionMatrix, const glm::mat4& view)
{
	m_map->Update(diff, projectionMatrix, view);
}

void WorldWindow::OnDraw(float diff)
{	
	m_map->Draw();
}