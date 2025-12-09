project "yaml-cpp"
	kind "StaticLib"
	language "C++"
	cppdialect "C++23"
	staticruntime "Off"

	targetdir ("Binaries/" .. outputdir .. "/%{prj.name}")
	objdir ("Binaries-Int/" .. outputdir .. "/%{prj.name}")

	files {
		"src/**.h",
		"src/**.cpp",
		
		"include/**.h"
	}

	includedirs	{
		"include"
	}

	defines	{
		"YAML_CPP_STATIC_DEFINE"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"