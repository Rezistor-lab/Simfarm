#include "main.h"



//glm::mat4 projectionMatrix;
//glm::mat4 view;
//glm::mat4 model;

int main(void)
{
	WorldWindow window;
	if (!window.Initialize())
	{
		return -1;
	}

	window.Run();

	return window.Clear() ? 0 : -1;


	//model = glm::mat4(1.0f);

	//

	//GLuint vertextArrayId;
	//glGenVertexArrays(1, &vertextArrayId);
	//glBindVertexArray(vertextArrayId);

	//GLuint programID = LoadShaders("shaders\\SimpleVertexShader.vertexshader", "shaders\\SimpleFragmentShader.fragmentshader");
	//if (programID == 0) {
	//	fprintf(stderr, "Failed to compile shareds\n");
	//	glfwTerminate();
	//	return -1;
	//}

	//const GLfloat g_vertex_data[] = {
	//	-1.0f, -1.0f, 0.0f,
	//	1.0f, -1.0f, 0.0f,
	//	0.0f, 1.0f, 0.0f,
	//};
	//GLuint MatrixID = glGetUniformLocation(programID, "MVP");

	//GLuint vertexBuffer;
	//glGenBuffers(1, &vertexBuffer);
	//glBindBuffer(GL_ARRAY_BUFFER, vertexBuffer);
	//glBufferData(GL_ARRAY_BUFFER, sizeof(g_vertex_data), g_vertex_data, GL_STATIC_DRAW);
	//

	//

	//glDeleteBuffers(1, &vertexBuffer);
	//glDeleteVertexArrays(1, &vertextArrayId);
	//glDeleteProgram(programID);

	//// Close OpenGL window and terminate GLFW
	//glfwTerminate();

	return 0;
}