-- OUT_DIR and INT_DIR must be defined in the top-most premake file before including this file

project "PhysXFoundation"
    language "C++"
    targetname "PhysXFoundation_64"

    debugdir (OUT_DIR)
    targetdir (OUT_DIR)
    objdir (INT_DIR)

    files
    {
        "../../include/foundation/*.h",
        "*.h",
        "*.cpp",
        "../compiler/resource_x64/resource.h",
        "../compiler/resource_x64/PhysXFoundation.rc"
    }

    includedirs
    {
        "../../include",
        "."
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
        "PVDRuntime"
    }

    filter "system:windows"
        kind "SharedLib"
        systemversion "latest"
        cppdialect "C++14"

        files
        {
            "../../include/foundation/windows/*.h",
            "windows/*.cpp"
        }

        includedirs
        {
            "windows"
        }

        defines
        {
            "PX_PHYSX_FOUNDATION_EXPORTS",
            "PhysXFoundation_EXPORTS",
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
