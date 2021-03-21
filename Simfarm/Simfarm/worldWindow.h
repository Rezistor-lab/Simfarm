#pragma once
#include "gameWindow.h"
#include "worldMap.h"

class WorldWindow : public gameWindow
{
public:
	WorldWindow();

private:
	void OnLoad();
	void OnUpdate(float diff, const glm::mat4& projectionMatrix, const glm::mat4& view);
	void OnDraw(float diff);
	void OnUnload();

private:

	WorldMap* _map;
};