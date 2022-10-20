project "sandbox"
kind "ConsoleApp"
language "C++"

targetdir("../bin/" .. out_dir .. "/%{prj.name}")
objdir("../bin-int/" .. out_dir .. "/%{prj.name}")

files {"src/**.h", "src/**.cpp"}

includedirs {
  "../physicx/src/",
  "vendor/include"
}

libdirs {"vendor/libs"}

links {"physicx.dll", "glfw3.lib"}

filter "system:windows"
cppdialect "C++17"
staticruntime "On"
systemversion "latest"

defines {"Windows"}

filter "configurations:Debug"
defines {"DEBUG"}
symbols "On"

filter "configurations:Release"
defines {"NDEBUG"}
optimize "On"
