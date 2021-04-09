#pragma once
#include "GameWindow.h"
#include "WorldMap.h"

class WorldWindow : public GameWindow
{
public:
	WorldWindow();
	~WorldWindow();

private:
	void OnLoad();
	void OnUpdate(float diff, const glm::mat4& projectionMatrix, const glm::mat4& view, const float& zoom);
	void OnDraw(float diff);

private:

	WorldMap* m_map{ nullptr };
	Renderer* m_renderer;
};