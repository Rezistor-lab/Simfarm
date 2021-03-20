#include "worldWindow.h"

worldWindow::worldWindow()
{
	/*_worldSize = glm::vec2{ 2,4 };
	_world = std::vector<Tile>(_worldSize.x* _worldSize.y);*/
	_map = new WorldMap;
}

void worldWindow::OnLoad()
{
	_map->LoadBuffers();
	fprintf(stdout, "OnLoad");
}


void worldWindow::OnUpdate(float diff, const glm::mat4& projectionMatrix, const glm::mat4& view)
{
	_map->Update(diff, projectionMatrix, view);
}

void worldWindow::OnDraw(float diff)
{	
	_map->Draw();
}

void worldWindow::OnUnload()
{
	_map->Release();
	delete _map;
}