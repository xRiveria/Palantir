-- Palantir
workspace "Palantir"
    architecture "x64"
    startproject "Palantir"
    location "../"          -- Premake files are generated in the same directory as this script. Hence, redirect.
    
    BinariesDirectoryFormat = "%{cfg.buildcfg}"
    
    configurations
    {
        "Debug",
        "Release"
    }
    
    flags
    {
        "MultiProcessorCompile"
    }
    
    defines
    {
        "NOMINMAX"
    }

IncludeDirectories = {}
IncludeDirectories["GTest"] = "%{wks.location}Dependencies/GTest/Include"

LibraryDirectoriesDebug = {}
LibraryDirectoriesDebug["GTest"] = "%{wks.location}Dependencies/GTest/Library/Debug/gtest.lib"

LibraryDirectoriesRelease = {}
LibraryDirectoriesRelease["GTest"] = "%{wks.location}Dependencies/GTest/Library/Release/gtest.lib"

include "../Palantir"