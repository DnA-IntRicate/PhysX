-- OUT_DIR and INT_DIR must be defined in the top-most premake file before including this file

project "PVDRuntime"
    language "C++"

    debugdir (OUT_DIR)
    targetdir (OUT_DIR)
    objdir (INT_DIR)

    files
    {
        "include/OmniPvdCommands.h",
        "include/OmniPvdDefines.h",
        "include/OmniPvdFileReadStream.h",
        "include/OmniPvdFileWriteStream.h",
        "include/OmniPvdLibraryFunctions.h",
        "include/OmniPvdMemoryStream.h",
        "include/OmniPvdReader.h",
        "include/OmniPvdReadStream.h",
        "include/OmniPvdWriter.h",
        "include/OmniPvdWriteStream.h",
        "src/OmniPvdFileReadStreamImpl.h",
        "src/OmniPvdFileReadStreamImpl.cpp",
        "src/OmniPvdFileWriteStreamImpl.h",
        "src/OmniPvdFileWriteStreamImpl.cpp",
        "src/OmniPvdLibraryFunctionsImpl.cpp",
        "src/OmniPvdLog.h",
        "src/OmniPvdLog.cpp",
        "src/OmniPvdMemoryReadStreamImpl.h",
        "src/OmniPvdMemoryReadStreamImpl.cpp",
        "src/OmniPvdMemoryStreamImpl.h",
        "src/OmniPvdMemoryStreamImpl.cpp",
        "src/OmniPvdMemoryWriteStreamImpl.h",
        "src/OmniPvdMemoryWriteStreamImpl.cpp",
        "src/OmniPvdReaderImpl.h",
        "src/OmniPvdReaderImpl.cpp",
        "src/OmniPvdWriterImpl.h",
        "src/OmniPvdWriterImpl.cpp"
    }

    includedirs
    {
        "include",
        "src"
    }

    links
    {
        "FastXml",
        "LowLevel",
        "LowLevelAABB",
        "LowLevelDynamics"
    }

    filter "system:windows"
        kind "SharedLib"
        systemversion "latest"
        cppdialect "C++14"

        defines
        {
            "PVDRuntime_EXPORTS"
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
