#pragma once
#include "gameWindow.h"

class worldWindow : public gameWindow
{
public:
	struct Tile {
		int x;
		int y;
		char type;
	};

	worldWindow();
private:
	void OnLoad();
	void OnUpdate(float diff);
	void OnDraw(float diff);
	void OnUnload();

private:
	std::vector<Tile> _world;
	glm::vec2 _worldSize;
	unsigned int _vertexbuffer;
	unsigned int _indicesBuffer;
	unsigned int _gridBuffer;
	unsigned int _vertexArrayID;

	GLuint _mvpMatrixID;
	GLuint _shaderProgramID;
	glm::mat4 _mvp;
};