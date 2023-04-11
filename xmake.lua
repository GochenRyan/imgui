target("libImGui")
    set_kind("static")
    add_defines("IMGUI_ENABLE_FREETYPE")
    add_includedirs(
        "$(projectdir)/Vendor/glfw/include/",
        "$(projectdir)/Vendor/freetype/include/",
        -- inner
        "./"
    )
    add_deps(
        "libGLFW",
        "libFreeType"
    )

    add_links(
        "libFreeType"
    )

    add_headerfiles(
        "*.h",
        "misc/freetype/*.h",
        "backends/imgui_impl_glfw.h",
        "backends/imgui_impl_opengl3.h"
    )
    add_files(
        "*.cpp",
        "misc/freetype/*.cpp",
        "backends/imgui_impl_glfw.cpp",
        "backends/imgui_impl_opengl3.cpp"
    )

    add_linkdirs("$(projectdir)/lib/")