#include "Renderer.h"

void Renderer::Render(const VertexBuffer* vb, const IndexBuffer* ib, const Shader* shader) const
{
	vb->Bind();
	ib->Bind();

	glDrawElements(GL_TRIANGLES, ib->GetCount(), GL_UNSIGNED_INT, 0);
}