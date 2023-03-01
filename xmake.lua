target("libImGui")
    set_kind("static")
    add_includedirs(
        "$(projectdir)/Vendor/glfw/include/",
        -- inner
        "./"
    )
    add_deps(
        "libGLFW"
    )

    add_headerfiles(
        "*.h",
        "backends/imgui_impl_glfw.h",
        "backends/imgui_impl_opengl3.h"
    )
    add_files(
        "*.cpp",
        "backends/imgui_impl_glfw.cpp",
        "backends/imgui_impl_opengl3.cpp"
    )

    add_linkdirs("$(projectdir)/lib/")
