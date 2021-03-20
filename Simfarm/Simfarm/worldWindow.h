#pragma once
#include "gameWindow.h"
#include "WorldMap.h"

class worldWindow : public gameWindow
{
public:
	worldWindow();

private:
	void OnLoad();
	void OnUpdate(float diff, const glm::mat4& projectionMatrix, const glm::mat4& view);
	void OnDraw(float diff);
	void OnUnload();

private:

	WorldMap* _map;
};