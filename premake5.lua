-- OUT_DIR and INT_DIR must be defined in the top-most premake file before including this file

project "physx"
    language "C++"

    debugdir (OUT_DIR)
    targetdir (OUT_DIR)
    objdir (INT_DIR)

    files
    {
        "physx/include/**.h",

        "physx/source/common/**.h",
        "physx/source/common/**.cpp",

        "physx/source/fastxml/**.h",
        "physx/source/fastxml/**.cpp",

        "physx/source/filebuf/**.h",
        "physx/source/filebuf/**.cpp",

        "physx/source/foundation/*.h",
        "physx/source/foundation/*.cpp",

        "physx/source/geomutils/**.h",
        "physx/source/geomutils/**.cpp",

        "physx/source/immediatemode/**.cpp",

        "physx/source/lowlevel/**.h",
        "physx/source/lowlevel/**.cpp",

        "physx/source/lowlevelaabb/**.h",
        "physx/source/lowlevelaabb/**.cpp",

        "physx/source/lowleveldynamics/**.h",
        "physx/source/lowleveldynamics/**.cpp",

        "physx/source/physx/src/*.h",
        "physx/source/physx/src/*.cpp",
        "physx/source/physx/src/device/*.h",
        "physx/source/physx/src/gpu/*.cpp",
        "physx/source/physx/src/omnipvd/*.h",
        "physx/source/physx/src/omnipvd/*.cpp",

        "physx/source/physxcharacterkinematic/**.h",
        "physx/source/physxcharacterkinematic/**.cpp",

        "physx/source/physxcooking/src/*.h",
        "physx/source/physxcooking/src/*.cpp",

        "physx/source/physxextensions/**.h",
        "physx/source/physxextensions/**.cpp",

        "physx/source/physxgpu/**.h",

        "physx/source/physxmetadata/**.h",
        "physx/source/physxmetadata/**.cpp",

        "physx/source/physxvehicle/**.h",
        "physx/source/physxvehicle/**.cpp",

        "physx/source/physxvehicle2/**.h",
        "physx/source/physxvehicle2/**.cpp",

        "physx/source/pvd/**.h",
        "physx/source/pvd/**.cpp",

        "physx/source/scenequery/**.h",
        "physx/source/scenequery/**.cpp",

        "physx/source/simulationcontroller/**.h",
        "physx/source/simulationcontroller/**.cpp",

        "physx/source/task/**.cpp"
    }

    includedirs
    {
        "physx/include",

        "physx/source/common/include",
        "physx/source/common/src",

        "physx/source/fastxml/include",
        "physx/source/fastxml/src",

        "physx/source/filebuf/include",
        "physx/source/filebuf/src",

        "physx/source/geomutils/include",
        "physx/source/geomutils/src",
        "physx/source/geomutils/src/ccd",
        "physx/source/geomutils/src/common",
        "physx/source/geomutils/src/contact",
        "physx/source/geomutils/src/convex",
        "physx/source/geomutils/src/cooking",
        "physx/source/geomutils/src/distance",
        "physx/source/geomutils/src/gjk",
        "physx/source/geomutils/src/hf",
        "physx/source/geomutils/src/intersection",
        "physx/source/geomutils/src/mesh",
        "physx/source/geomutils/src/pcm",
        "physx/source/geomutils/src/sweep",

        "physx/source/immediatemode/src",

        "physx/source/lowlevel/api/include",
        "physx/source/lowlevel/api/src",
        "physx/source/lowlevel/common/include/collision",
        "physx/source/lowlevel/common/include/pipeline",
        "physx/source/lowlevel/common/include/utils",
        "physx/source/lowlevel/common/src/pipeline",
        "physx/source/lowlevel/software/include",
        "physx/source/lowlevel/software/src",

        "physx/source/lowlevelaabb/include",
        "physx/source/lowlevelaabb/src",

        "physx/source/lowleveldynamics/include",
        "physx/source/lowleveldynamics/src",

        "physx/source/physx/src",
        "physx/source/physx/src/device",
        "physx/source/physx/src/gpu",
        "physx/source/physx/src/omnipvd",

        "physx/source/physxcharacterkinematic/src",

        "physx/source/physxcooking/src",

        "physx/source/physxextensions/src",
        "physx/source/physxextensions/src/omnipvd",
        "physx/source/physxextensions/src/serialization",
        "physx/source/physxextensions/src/serialization/Binary",
        "physx/source/physxextensions/src/serialization/File",
        "physx/source/physxextensions/src/serialization/Xml",
        "physx/source/physxextensions/src/tet",

        "physx/source/physxgpu/include",

        "physx/source/physxmetadata/core/include",
        "physx/source/physxmetadata/core/src",
        "physx/source/physxmetadata/extensions/include",
        "physx/source/physxmetadata/extensions/src",

        "physx/source/physxvehicle/src",
        "physx/source/physxvehicle/src/physxmetadata/include",
        "physx/source/physxvehicle/src/physxmetadata/src",

        "physx/source/physxvehicle2/src/commands",
        "physx/source/physxvehicle2/src/drivetrain",
        "physx/source/physxvehicle2/src/physxActor",
        "physx/source/physxvehicle2/src/physxConstraints",
        "physx/source/physxvehicle2/src/physxRoadGeometry",
        "physx/source/physxvehicle2/src/pvd",
        "physx/source/physxvehicle2/src/rigidBody",
        "physx/source/physxvehicle2/src/steering",
        "physx/source/physxvehicle2/src/suspension",
        "physx/source/physxvehicle2/src/tire",
        "physx/source/physxvehicle2/src/wheel",

        "physx/source/pvd/include",
        "physx/source/pvd/src",

        "physx/source/scenequery/include",
        "physx/source/scenequery/src",

        "physx/source/simulationcontroller/include",
        "physx/source/simulationcontroller/src",

        "physx/source/task/src"
    }

    defines
    {
        "PX_PHYSX_STATIC_LIB"
    }

    filter "system:windows"
        kind "StaticLib"
        systemversion "latest"
        cppdialect "C++11"

        files
        {
            "physx/source/foundation/windows/*.cpp",
            "physx/source/physx/src/device/windows/*.cpp",
            "physx/source/physx/src/windows/*.cpp",
            "physx/source/physxcooking/src/windows/*.cpp"
        }

        includedirs
        {
            "physx/source/foundation/windows",
            "physx/source/physx/src/device/windows",
            "physx/source/physx/src/windows",
            "physx/source/physxcooking/src/windows"
        }

    filter "system:linux"
        kind "StaticLib"
        systemversion "latest"
        cppdialect "gnu++11"

        files
        {
            "physx/source/foundation/unix/*.cpp",
            "physx/source/physx/src/device/linux/*.h"
        }

        includedirs
        {
            "physx/source/foundation/unix",
            "physx/source/physx/src/device/linux"
        }

    filter "system:macosx"
        kind "StaticLib"
        systemversion "latest"
        cppdialect "gnu++11"

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
