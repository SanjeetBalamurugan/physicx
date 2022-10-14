project "sandbox"
kind "ConsoleApp"
language "C++"

targetdir("%{wks.location}/bin" .. out_dir .. "%{prj.name}%")
objdir("%{wks.location}/bin-int" .. out_dir .. "%{prj.name}%")

files {"./src/**.h", "./src/**.cpp"}

includedirs {
  "../physicx/src/"
}

links {"physicx"}

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
