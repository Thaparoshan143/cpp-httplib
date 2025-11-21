workspace "httplib-ws"
    configurations { "Release" }

project "httplib-pr"
    kind "consoleApp"
    language "c++"

    cppdialect "c++11"

    files { "*.cpp", "*.hpp" }
    removefiles { "./example/**" }

    includedirs { "./", "/opt/homebrew/include/", "/opt/homebrew/include/openssl" }

    configurations { "macosx" }
        -- where static/dynamic lib might be located.. (search path..)
        libdirs { "/opt/homebrew/lib", "/opt/local/lib", "/usr/local/lib" }

        -- what libray to link..
        links { "ssl", "crypto" }
