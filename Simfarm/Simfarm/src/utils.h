#pragma once
#include <string>
#include <iostream>
#include <fstream>
#include <vector>
#include <sstream>

#include <GL/glew.h>

GLuint LoadShaders(const char* vertex_file_path, const char* fragment_file_path);
