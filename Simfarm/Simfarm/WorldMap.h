#pragma once
#include "drawable.h"

class WorldMap : public Drawable
{
private:
	unsigned int _mvpMatrixID{ 0 };
	glm::mat4 _mvp;

	// Inherited via Drawable
	virtual unsigned int LoadShader() override;
	virtual unsigned int LoadVertexBuffer() override;
	virtual void LoadIndexBuffer() override;
	virtual void ShaderBeforeDraw() override;

public:
	virtual void Update(float delta, const glm::mat4& projectionMatrix, const glm::mat4& view) override;
};