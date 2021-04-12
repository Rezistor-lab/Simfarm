#include "main.h"

// Force Nvidia over Intel GPU
#include <Windows.h>
extern "C" {
	_declspec(dllexport) DWORD NvOptimusEnablement = 0x00000001;
}

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