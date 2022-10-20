project "physicx"
kind "SharedLib"
language "C++"

-- pchheader "phypch.h"
-- pchsource "src/phypch.cpp"

targetdir("../bin/" .. out_dir .. "/%{prj.name}")
objdir("../bin-int/" .. out_dir .. "/%{prj.name}")

files {"src/**.h", "src/**.cpp"}

defines { "BUILD_DLL" }

filter "system:windows"
cppdialect "C++17"
staticruntime "On"
systemversion "latest"

defines {"Windows"}
postbuildcommands {"{COPY} %{cfg.buildtarget.relpath}% ../bin/" .. out_dir .. "/sandbox"}
filter "configurations:Debug"
defines {"DEBUG"}
symbols "On"

filter "configurations:Release"
defines {"NDEBUG"}
optimize "On"
