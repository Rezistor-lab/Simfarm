#include "worldWindow.h"

worldWindow::worldWindow()
{
	_worldSize = glm::vec2{ 2,4 };
	_world = std::vector<Tile>(_worldSize.x* _worldSize.y);
}

void worldWindow::OnLoad()
{
	fprintf(stdout, "OnLoad");
	_shaderProgramID = LoadShaders("shaders\\SimpleVertexShader.vertexshader", "shaders\\SimpleFragmentShader.fragmentshader");

	for (int row = 0; row < _worldSize.x; row++)
	{
		for (int col = 0; col < _worldSize.y; col++)
		{
			_world[row * _worldSize.y + col] = Tile{ row, col, 0 };
		}
	}

	GLfloat g_vertex_buffer_data[] = {
	-0.5f, -0.5f, 0.0f,
	 0.5f, -0.5f, 0.0f,
	 0.5f,  0.5f, 0.0f,

//	 0.5f,  0.5f, 0.0f,
	-0.5f,  0.5f, 0.0f,
//	-0.5f, -0.5f, 0.0f,

	};
	unsigned int indices[] = {
		0,1,2,
		2,3,0
	};

	GLfloat g_grid_data[] = {
		-10,0,0, 10,0,0,
		 0,-5,0, 0,5,0
	};



	//glGenBuffers(1, &_gridBuffer);
	//glBindBuffer(GL_ARRAY_BUFFER, _gridBuffer);
	//glBufferData(GL_ARRAY_BUFFER, sizeof(g_grid_data), g_grid_data, GL_STATIC_DRAW);

	
	glGenVertexArrays(1, &_vertexArrayID);
	glBindVertexArray(_vertexArrayID);

	glGenBuffers(1, &_vertexbuffer);
	glBindBuffer(GL_ARRAY_BUFFER, _vertexbuffer);
	glBufferData(GL_ARRAY_BUFFER, sizeof(g_vertex_buffer_data), g_vertex_buffer_data, GL_STATIC_DRAW);
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(float) * 3, (void*)0);
	glEnableVertexAttribArray(0);
	
	glGenBuffers(1, &_indicesBuffer);
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, _indicesBuffer);
	glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);

		
	glBindBuffer(GL_ARRAY_BUFFER, 0);

	_mvpMatrixID = glGetUniformLocation(_shaderProgramID, "MVP");
}


void worldWindow::OnUpdate(float diff)
{
	_mvp = projectionMatrix * view * glm::mat4(1.0f);

}

void worldWindow::OnDraw(float diff)
{
	glUniformMatrix4fv(_mvpMatrixID, 1, GL_FALSE, &_mvp[0][0]);
	glUseProgram(_shaderProgramID);

	//glEnableVertexAttribArray(0);
	//glBindBuffer(GL_ARRAY_BUFFER, _gridBuffer);
	//glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 0, (void*)0);
	//glBindVertexArray(_vertexArrayID);
	//glDrawArrays(GL_LINE, 0, 4);
	//glDisableVertexAttribArray(0);

	
	//glBindBuffer(GL_ARRAY_BUFFER, _vertexbuffer);
	
	glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);
	//glDisableVertexAttribArray(0);


}

void worldWindow::OnUnload()
{
	glDeleteBuffers(1, &_gridBuffer);
	glDeleteBuffers(1, &_vertexbuffer);
	glDeleteVertexArrays(2, &_vertexArrayID);
	glDeleteProgram(_shaderProgramID);
}