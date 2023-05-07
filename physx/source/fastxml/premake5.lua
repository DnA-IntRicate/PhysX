-- OUT_DIR and INT_DIR must be defined in the top-most premake file before including this file

project "FastXml"
    language "C++"

    debugdir (OUT_DIR)
    targetdir (OUT_DIR)
    objdir (INT_DIR)

    files
    {
        "include/**.h",
        "src/**.cpp"
    }

    includedirs
    {
        "include",
        "../../include",
        "../../source"
    }

    filter "system:windows"
        kind "StaticLib"
        systemversion "latest"
        cppdialect "C++14"

    filter "system:linux"
        kind "StaticLib"
        systemversion "latest"
        cppdialect "gnu++14"

    filter "system:macosx"
        kind "StaticLib"
        systemversion "latest"
        cppdialect "C++14"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "Full"

        defines
        {
            "_DEBUG"
        }

    filter "configurations:Release"
        runtime "Release"
        symbols "Off"
        optimize "Full"

        defines
        {
            "NDEBUG"
        }
