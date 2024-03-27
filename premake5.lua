project "IMGUI"
  kind "StaticLib"
  language "C++"
  cppdialect "C++17"
  targetdir ("%{wks.location}/bin/%{wks.name}/%{cfg.longname}")
  objdir ("%{wks.location}/bin/%{wks.name}/%{cfg.longname}")
  files
  {
    "imconfig.h",
    "imgui.h",
    "imgui.cpp",
    "imgui_draw.cpp",
    "imgui_internal.h",
    "imgui_widgets.cpp",
    "imgui_tables.cpp",
	  "imstb_rectpack.h",
	  "imstb_textedit.h",
	  "imstb_truetype.h",
		"imgui_demo.cpp"
  }

  filter "system:windows"
    systemversion "latest"
    staticruntime "on"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"