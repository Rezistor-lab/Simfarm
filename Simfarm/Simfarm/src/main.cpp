#include "main.h"

int main(void)
{
	WorldWindow window;
	if (!window.Initialize())
	{
		return -1;
	}

	window.Run();

	return window.Clear() ? 0 : -1;

	return 0;
}