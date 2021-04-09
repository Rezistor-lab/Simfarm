#include "WorldWindow.h"

WorldWindow::WorldWindow()
{
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


void WorldWindow::OnUpdate(float diff, const glm::mat4& projectionMatrix, const glm::mat4& view, const float& zoom)
{
	m_map->Update(diff, projectionMatrix, view, zoom);
}

void WorldWindow::OnDraw(float diff)
{	
	m_map->Draw();
}