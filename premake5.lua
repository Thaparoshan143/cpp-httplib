workspace "temp"
    configurations { "Release" }

project "httplib-pr"
    kind "sharedLib"
    language "c++"

    files { "httplib.cpp" }
    removefiles { "./example/**" }

    includedirs { "./", "/opt/homebrew/include/", "/opt/homebrew/include/openssl" }

    -- this links can be migrate to the top level premake script..
    configurations { "macosx" }
        -- where static/dynamic lib might be located.. (search path..)
        libdirs { "/opt/homebrew/lib", "/opt/local/lib", "/usr/local/lib" }

        -- what libray to link..
        links { "ssl", "crypto" }
