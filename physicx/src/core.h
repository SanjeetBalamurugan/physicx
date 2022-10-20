#pragma once

#ifdef BUILD_DLL

#define PHYAPI __declspec(dllexport)

#else

#define PHYAPI __declspec(dllimport)

#endif // DEBUG

