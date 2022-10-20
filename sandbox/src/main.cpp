#include <iostream>
#include "GLFW/glfw3.h"
#include "test.h"

int main() {
	if (glfwInit())
	{
		std::cout << getSum(9, 9) << "\n";
	}
}
