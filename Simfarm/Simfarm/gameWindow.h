#pragma once
#include <string>

#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

#include "utils.h"


class gameWindow
{
public:
	bool Initialize();
	bool Run();
	bool Clear();

protected:
	virtual void OnLoad() {}
	virtual void OnUpdate(float delta) {}
	virtual void OnDraw(float delta) {}
	virtual void OnUnload() {}

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
	float _speed = 3.0f;
};

