#include "worldWindow.h"

WorldWindow::WorldWindow()
{
	/*_worldSize = glm::vec2{ 2,4 };
	_world = std::vector<Tile>(_worldSize.x* _worldSize.y);*/
	_map = new WorldMap;
}

void WorldWindow::OnLoad()
{
	_map->LoadBuffers();
	fprintf(stdout, "OnLoad");
}


void WorldWindow::OnUpdate(float diff, const glm::mat4& projectionMatrix, const glm::mat4& view)
{
	_map->Update(diff, projectionMatrix, view);
}

void WorldWindow::OnDraw(float diff)
{	
	_map->Draw();
}

void WorldWindow::OnUnload()
{
	_map->Release();
	delete _map;
}