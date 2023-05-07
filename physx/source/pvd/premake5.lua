-- OUT_DIR and INT_DIR must be defined in the top-most premake file before including this file

project "PhysXPvdSDK"
    language "C++"

    debugdir (OUT_DIR)
    targetdir (OUT_DIR)
    objdir (INT_DIR)

    files
    {
        "../../include/pvd/**.h",
        "src/**.h",
        "src/**.cpp",
        "../../include/filebuf/**.h",
        "../filebuf/**.h"
    }

    includedirs
    {
        "include",
        "src",
        "../../include",
        "../../source",
        "../../include/pvd",
        "../../include/filebuf",
        "../filebuf/include",
        "../foundation"
    }

    defines
    {
        "PX_PHYSX_STATIC_LIB",
        "_CRT_SECURE_NO_DEPRECATE",
        "_CRT_NONSTDC_NO_DEPRECATE"
    }

    links
    {
        "FastXml",
        "LowLevel",
        "LowLevelAABB",
        "LowLevelDynamics",
        "PVDRuntime",
        "PhysXFoundation",
        "PhysXTask",
        "SceneQuery",
        "SimulationController",
        "PhysXCharacterKinematic",
        "PhysXCommon"
    }

    filter "system:windows"
        kind "StaticLib"
        systemversion "latest"
        cppdialect "C++14"

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
