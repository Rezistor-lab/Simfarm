#include "GameWindow.h"

GameWindow* _gw;
void scroll_callback(GLFWwindow* window, double xoffset, double yoffset) {
	_gw->ScrollCallback(window, xoffset, yoffset);
}

bool GameWindow::Initialize()
{
	if (!glfwInit())
	{
		fprintf(stderr, "Failed to initialize GLFW");
		return false;
	}

	glfwWindowHint(GLFW_SAMPLES, 4);
	glfwWindowHint(GLFW_RESIZABLE, GL_FALSE);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE); // To make MacOS happy; should not be needed
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

	// Open a window and create its OpenGL context
	window = glfwCreateWindow(1024, 768, "Simfarm", NULL, NULL);
	if (window == NULL) {
		fprintf(stderr, "Failed to open GLFW window. If you have an Intel GPU, they are not 3.3 compatible. Try the 2.1 version of the tutorials.\n");
		glfwTerminate();
		return false;
	}
	glfwMakeContextCurrent(window);

	std::cout << glGetString(GL_VERSION) << std::endl;

	glfwSwapInterval(1);
	cameraPosition = glm::vec3(0, 0, 40);
	cameraTarget = glm::vec3(0, 0, 0);
	up = glm::vec3(0, 1, 0);

	//projectionMatrix = glm::ortho(-(1024.0f/2.0f), (1024.0f / 2.0f), -(768.0f / 2.0f), (768.0f / 2.0f), 0.1f, 100.0f); // In world coordinates 
	projectionMatrix = glm::perspective(glm::radians(45.0f), 1024.0f / 768.0f, 0.1f, 100.0f);

	// Initialize GLEW
	glewExperimental = true; // Needed for core profile
	if (glewInit() != GLEW_OK) {
		fprintf(stderr, "Failed to initialize GLEW\n");
		glfwTerminate();
		return false;
	}

	// Ensure we can capture the escape key being pressed below
	glfwSetInputMode(window, GLFW_STICKY_KEYS, GL_TRUE);
	glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_NORMAL);
	glfwSetScrollCallback(window, scroll_callback);
	_gw = this;

	OnLoad();

	// Dark blue background
	glClearColor(0.0f, 0.0f, 0.1f, 0.0f);

	return true;
}

void GameWindow::ScrollCallback(GLFWwindow* window, double xoffset, double yoffset)
{
	_scrollOffset += yoffset;
}

bool GameWindow::Run()
{
	lastTime = glfwGetTime();
	double frameTime = 0;
	double currentTime = 0;
	double lastTime = 0;
	double fpsLastTime = 0;
	float delta = 0;
	int fps = 0;
	do {
		currentTime = glfwGetTime();
		nbFrames++;

		if (currentTime - fpsLastTime >= 0.1) { // If last prinf() was more than 1 sec ago
		 // printf and reset timer
			frameTime = (currentTime - fpsLastTime) / double(nbFrames);
			fps = 1 / frameTime;
			glfwSetWindowTitle(window, ("Simfarm | FT:" + std::to_string(frameTime) + "ms FD:"+std::to_string(nbFrames*10)+" FPS:"+std::to_string(fps)).c_str());
			nbFrames = 0;
			fpsLastTime = currentTime;
		}
		delta = float(currentTime - lastTime);
		lastTime = currentTime;

		// UP
		if (glfwGetKey(window, GLFW_KEY_UP) == GLFW_PRESS) {
			cameraPosition += m_vertical * delta * _moveSpeed;
			cameraTarget += m_vertical * delta * _moveSpeed;
		}
		// DOWN
		if (glfwGetKey(window, GLFW_KEY_DOWN) == GLFW_PRESS) {
			cameraPosition -= m_vertical * delta * _moveSpeed;
			cameraTarget -= m_vertical * delta * _moveSpeed;
		}
		// RIGHT
		if (glfwGetKey(window, GLFW_KEY_RIGHT) == GLFW_PRESS) {
			cameraPosition += m_horizontal * delta * _moveSpeed;
			cameraTarget += m_horizontal * delta * _moveSpeed;
		}
		// LEFT
		if (glfwGetKey(window, GLFW_KEY_LEFT) == GLFW_PRESS) {
			cameraPosition -= m_horizontal * delta * _moveSpeed;
			cameraTarget -= m_horizontal * delta * _moveSpeed;
		}
		if (_scrollOffset != 0.0f)
		{
			cameraPosition += m_scroll * delta * _scrollOffset * _zoomSpeed;
			_scrollOffset = 0.0f;
		}
		

		view = glm::lookAt(cameraPosition, cameraTarget, up);

		OnUpdate(delta, projectionMatrix, view);

		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

		while (glGetError() != GL_NO_ERROR);

		OnDraw(delta);

		while (unsigned int error = glGetError()) {
			std::cout << "OpenGL error:" << error << std::endl;
		}

		// Swap buffers
		glfwSwapBuffers(window);
		glfwPollEvents();

	} // Check if the ESC key was pressed or the window was closed
	while (glfwGetKey(window, GLFW_KEY_ESCAPE) != GLFW_PRESS &&
		glfwWindowShouldClose(window) == 0);

	return true;
}

bool GameWindow::Clear()
{
	glfwTerminate();
	return false;
}