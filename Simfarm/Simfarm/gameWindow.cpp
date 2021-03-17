#include "gameWindow.h"

bool gameWindow::Initialize()
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
	glfwSwapInterval(1);
	cameraPosition = glm::vec3(0, 0, 3);
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

	OnLoad();

	// Dark blue background
	glClearColor(0.0f, 0.0f, 0.1f, 0.0f);

	return true;
}

bool gameWindow::Run()
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
		view = glm::lookAt(cameraPosition, cameraTarget, up);

		//// Move forward
		//if (glfwGetKey(window, GLFW_KEY_UP) == GLFW_PRESS) {
		//	cameraPosition += direction * delta * _speed;
		//}
		//// Move backward
		//if (glfwGetKey(window, GLFW_KEY_DOWN) == GLFW_PRESS) {
		//	cameraPosition -= direction * delta * _speed;
		//}
		//// Strafe right
		//if (glfwGetKey(window, GLFW_KEY_RIGHT) == GLFW_PRESS) {
		//	cameraPosition += right * delta * _speed;
		//}
		//// Strafe left
		//if (glfwGetKey(window, GLFW_KEY_LEFT) == GLFW_PRESS) {
		//	cameraPosition -= right * delta * _speed;
		//}

		OnUpdate(delta);

		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

		OnDraw(delta);

		// Swap buffers
		glfwSwapBuffers(window);
		glfwPollEvents();

	} // Check if the ESC key was pressed or the window was closed
	while (glfwGetKey(window, GLFW_KEY_ESCAPE) != GLFW_PRESS &&
		glfwWindowShouldClose(window) == 0);

	OnUnload();
	return true;
}

bool gameWindow::Clear()
{
	glfwTerminate();
	return false;
}