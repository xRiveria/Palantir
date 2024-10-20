project "Palantir"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++20"
    staticruntime "off"
    warnings "Extra"

    location	"" -- Override solution settings.
	targetdir	("../Binaries/Output/" .. BinariesDirectoryFormat .. "/%{prj.name}")
	objdir		("../Binaries/Intermediates/" .. BinariesDirectoryFormat .. "/%{prj.name}")

    files
	{
		"Source/**.h",
		"Source/**.c",
		"Source/**.hpp",
		"Source/**.cpp"
	}

    includedirs
    {
        "Source",
        "%{IncludeDirectories.GTest}",
    }

    filter "configurations:Debug"
        runtime "Debug"
        optimize "Off"
        symbols "On"
        links { "%{LibraryDirectoriesDebug.GTest}" }

    filter "configurations:Release"
        runtime "Release"
        optimize "On"
        symbols "On"
        links { "%{LibraryDirectoriesRelease.GTest}" }