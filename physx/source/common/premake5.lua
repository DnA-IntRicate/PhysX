-- OUT_DIR and INT_DIR must be defined in the top-most premake file before including this file

project "PhysXCommon"
    language "C++"

    debugdir (OUT_DIR)
    targetdir (OUT_DIR)
    objdir (INT_DIR)

    files
    {
        "../../include/common/*.h",
        "src/*.h",
        "src/*.cpp",
        "../../include/geomutils/**.h",
        "../geomutils/**.h",
        "../geomutils/**.cpp",
        "../../include/geometry/**.h",
        "../../include/collision/**.h"
    }

    includedirs
    {
        "include",
        "src",
        "../../include",
        "../../source",
        "../physxgpu/include",
        "../geomutils/include",
        "../geomutils/src",
        "../geomutils/src/contact",
        "../geomutils/src/common",
        "../geomutils/src/convex",
        "../geomutils/src/distance",
        "../geomutils/src/sweep",
        "../geomutils/src/gjk",
        "../geomutils/src/intersection",
        "../geomutils/src/mesh",
        "../geomutils/src/hf",
        "../geomutils/src/pcm",
        "../geomutils/src/ccd",
        "../../include/geomutils",
        "../../include/geometry",
        "../../include/collision",
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
        "LowLevel",
        "LowLevelAABB",
        "LowLevelDynamics",
        "PVDRuntime",
        "PhysXFoundation",
        "PhysXTask",
        "SceneQuery",
        "SimulationController",
        "PhysXCharacterKinematic"
    }

    filter "system:windows"
        kind "SharedLib"
        systemversion "latest"
        cppdialect "C++14"

        files
        {
            "../../include/common/windows/*.h",
            "include/windows/**.h",
            "src/windows/**.cpp"
        }

        defines
        {
            "PX_PHYSX_COMMON_EXPORTS",
            "PhysXCommon_EXPORTS",
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
