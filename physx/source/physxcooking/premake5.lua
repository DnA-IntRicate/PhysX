-- OUT_DIR and INT_DIR must be defined in the top-most premake file before including this file

project "PhysXCooking"
    language "C++"
    targetname "PhysXCooking_64"

    debugdir (OUT_DIR)
    targetdir (OUT_DIR)
    objdir (INT_DIR)

    files
    {
        "../../include/cooking/**.h",
        "src/*.h",
        "src/*.cpp",
        "../compiler/resource_x64/resource.h",
        "../compiler/resource_x64/PhysXCooking.rc"
    }

    includedirs
    {
        "src",
        "../../include",
        "../../source",
        "../../include/cooking",
        "../common/include",
        "../common/src",
        "../geomutils/include",
        "../geomutils/src",
        "../geomutils/src/mesh",
        "../foundation"
    }

    resincludedirs
    {
        "../compiler/resource_x64"
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
        "PhysXPvdSDK"
    }

    filter "system:windows"
        kind "SharedLib"
        systemversion "latest"
        cppdialect "C++14"

        files
        {
            "src/windows/*.cpp"
        }

        defines
        {
            "PX_PHYSX_FOUNDATION_EXPORTS",
            "PX_PHYSX_COMMON_EXPORTS",
            "PX_PHYSX_COOKING_EXPORTS",
            "PX_PHYSX_LOADER_EXPORTS",
            "PX_PHYSX_CORE_EXPORTS",
            "PhysXCooking_EXPORTS",
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
