#pragma once
#include <string>

#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

#include "utils.h"

class GameWindow
{
public:
	bool Initialize();
	bool Run();
	bool Clear();
	void ScrollCallback(GLFWwindow* window, double xoffset, double yoffset);

protected:
	virtual void OnLoad() = 0;
	virtual void OnUpdate(float delta, const glm::mat4& projectionMatrix, const glm::mat4& view) = 0;
	virtual void OnDraw(float delta) = 0;

	GLFWwindow* getWindow()
	{
		return window;
	}

protected:
	glm::vec3 cameraTarget;
	glm::vec3 cameraPosition;
	glm::vec3 up;

	glm::mat4 projectionMatrix;
	glm::mat4 view;

private:
	GLFWwindow* window;

	double lastTime;
	int nbFrames = 0;
	float _moveSpeed = 3.0f;
	float _zoomSpeed = 100.0f;
	float _scrollOffset = 0.0f;
	glm::vec3 m_vertical{ 0, 1, 0 };
	glm::vec3 m_horizontal{ 1, 0, 0 };
	glm::vec3 m_scroll{ 0,0,1 };
};

