-- OUT_DIR and INT_DIR must be defined in the top-most premake file before including this file

project "PhysXExtensions"
    language "C++"

    debugdir (OUT_DIR)
    targetdir (OUT_DIR)
    objdir (INT_DIR)

    files
    {
        "src/**.h",
        "src/*.cpp",
        "../../include/extensions/*.h",
        "../../include/filebuf/*.h"
    }

    includedirs
    {
        "../../include",
        "../../source",
        "src",
        "src/serialization/Xml",
        "src/serialization/Binary",
        "src/serialization/File",
        "../common/include",
        "../common/src",
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
        "../physxmetadata/core/include",
        "../physxmetadata/extensions/include",
        "../scenequery/include",
        "../fastxml/include",
        "../pvd/include",
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
        "PhysXCharacterKinematic",
        "PhysXCommon",
        "PhysXPvdSDK",
        "PhysXCooking",
        "PhysX"
    }

    filter "system:windows"
        kind "StaticLib"
        systemversion "latest"
        cppdialect "C++14"

        includedirs
        {
            "../../include/common/windows"
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
