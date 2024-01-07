-- OUT_DIR and INT_DIR must be defined in the top-most premake file before including this file

project "PhysX"
    language "C++"
    targetname "PhysX_64"

    debugdir (OUT_DIR)
    targetdir (OUT_DIR)
    objdir (INT_DIR)

    files
    {
        "src/**.h",
        "src/*.cpp",
        "src/gpu/*.cpp",
        "src/omnipvd/*.cpp",
        "../../include/*.h",
        "../../include/collision/*.h",
        "../../include/common/*.h",
        "../../include/cudamanager/*.h",
        "../../include/gpu/*.h",
        "../../include/materials/*.h",
        "../../include/omnipvd/*.h",
        "../../include/pvd/*.h",
        "../../include/solver/*.h",
        "../physxmetadata/core/include/**.h",
        "../physxmetadata/core/src/**.cpp",
        "../compiler/resource_x64/resource.h",
        "../compiler/resource_x64/PhysX.rc"
    }

    includedirs
    {
        "../../include",
        "../../source",
        "src",
        "src/device",
        "src/gpu",
        "src/omnipvd",
        "../../include/collision",
        "../../include/common",
        "../../include/cudamanager",
        "../../include/gpu",
        "../../include/materials",
        "../../include/omnipvd",
        "../../include/pvd",
        "../../include/solver",
        "../common/include",
        "../common/src",
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
        "../lowlevel/api/include",
        "../lowlevel/software/include",
        "../lowlevel/common/include",
        "../lowlevel/common/include/pipeline",
        "../lowlevel/common/include/utils",
        "../lowlevelaabb/include",
        "../lowleveldynamics/include",
        "../simulationcontroller/include",
        "../simulationcontroller/src",
        "../scenequery/include",
        "../physxmetadata/core/include",
        "../immediatemode/include",
        "../pvd/include",
        "src/omnipvd",
        "../../pvdruntime/include",
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
        "PhysXPvdSDK",
        "PhysXCooking"
    }

    filter "system:windows"
        kind "SharedLib"
        systemversion "latest"
        cppdialect "C++14"

        files
        {
            "../../include/common/windows/*.h",
            "src/device/windows/**.cpp",
            "src/windows/**.cpp"
        }

        includedirs
        {
            "../../include/common/windows",
            "src/device/windows",
            "src/windows"
        }

        defines
        {
            "PX_PHYSX_CORE_EXPORTS",
            "PX_PHYSX_FOUNDATION_EXPORTS",
            "PhysX_EXPORTS",
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
