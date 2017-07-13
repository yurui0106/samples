workspace "MyWorkspace"
    configurations { "Debug", "Release"  }

project "MyProject"
    kind "ConsoleApp"
    language "C"
    files { "**.h", "**.c"  }

    filter { "configurations:Debug"  }
        defines { "DEBUG"  }
        flags { "Symbols"  }
        links { "event", "event_core" }

    filter { "configurations:Release"  }
        defines { "NDEBUG"  }
        optimize "On"
