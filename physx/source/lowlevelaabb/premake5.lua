-- OUT_DIR and INT_DIR must be defined in the top-most premake file before including this file

project "LowLevelAABB"
    language "C++"

    debugdir (OUT_DIR)
    targetdir (OUT_DIR)
    objdir (INT_DIR)

    files
    {
        "**.h",
        "**.cpp"
    }

    includedirs
    {
        "include",
        "src",
        "../../include",
        "../../source",
        "../common/include",
        "../common/src",
        "../geomutils/include",
        "../geomutils/src",
        "../lowlevel/api/include",
        "../lowlevel/common/include",
        "../lowlevel/common/include/pipeline",
        "../lowlevel/common/include/utils",
        "../lowlevel/software/include",
        "../lowlevel/software/include",
        "../foundation"
    }

    defines
    {
        "_CRT_SECURE_NO_DEPRECATE",
        "_CRT_NONSTDC_NO_DEPRECATE"
    }

    links
    {
        "FastXml",
        "LowLevel"
    }

    filter "system:windows"
        kind "StaticLib"
        systemversion "latest"
        cppdialect "C++14"

        includedirs
        {
            "../common/include/windows",
            "../common/src/windows"
        }

        defines
        {
            "_WINSOCK_DEPRECATED_NO_WARNINGS"
        }

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
