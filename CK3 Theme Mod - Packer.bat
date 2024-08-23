@echo off
title CK3 Theme Mod - Packer
color 0f

set /p "mod_name=Enter the name of the mod: "
set /p "files_path=Enter the path to the files: "

:: ::ove double quotes from the path.
set files_path=%files_path:"=%

:: Check if the user-specified path exists.
if not exist "%files_path%" (
	echo The path: %files_path% does not exist.
	pause
	exit
)

md "%cd%\%mod_name%"
cd /d "%cd%\%mod_name%"

xcopy "%files_path%\button_checkbox_background.dds" "%cd%\gfx\interface\buttons\" /v /i /q /y
xcopy "%files_path%\button_verb_primary.dds" "%cd%\gfx\interface\buttons\" /v /i /q /y
xcopy "%files_path%\button_tertiary.dds" "%cd%\gfx\interface\buttons\" /v /i /q /y
xcopy "%files_path%\button_standard_clean_weak.dds" "%cd%\gfx\interface\buttons\" /v /i /q /y
xcopy "%files_path%\button_standard_clean.dds" "%cd%\gfx\interface\buttons\" /v /i /q /y
xcopy "%files_path%\button_standard.dds" "%cd%\gfx\interface\buttons\" /v /i /q /y
xcopy "%files_path%\button_sort.dds" "%cd%\gfx\interface\buttons\" /v /i /q /y
xcopy "%files_path%\button_small_dec.dds" "%cd%\gfx\interface\buttons\" /v /i /q /y
xcopy "%files_path%\button_hold_court_glow.dds" "%cd%\gfx\interface\buttons\" /v /i /q /y
xcopy "%files_path%\button_hold_court_bg.dds" "%cd%\gfx\interface\buttons\" /v /i /q /y
xcopy "%files_path%\button_frontend.dds" "%cd%\gfx\interface\buttons\" /v /i /q /y
xcopy "%files_path%\button_fancy_glow.dds" "%cd%\gfx\interface\buttons\" /v /i /q /y
xcopy "%files_path%\button_fancy.dds" "%cd%\gfx\interface\buttons\" /v /i /q /y
xcopy "%files_path%\button_event.dds" "%cd%\gfx\interface\buttons\" /v /i /q /y
xcopy "%files_path%\button_entry_characterlist.dds" "%cd%\gfx\interface\buttons\" /v /i /q /y
xcopy "%files_path%\button_entry_02.dds" "%cd%\gfx\interface\buttons\" /v /i /q /y
xcopy "%files_path%\button_entry_01.dds" "%cd%\gfx\interface\buttons\" /v /i /q /y
xcopy "%files_path%\button_drop_down.dds" "%cd%\gfx\interface\buttons\" /v /i /q /y

xcopy "%files_path%\background_area_light.dds" "%cd%\gfx\interface\component_tiles\" /v /i /q /y
xcopy "%files_path%\interaction_menu_bg.dds" "%cd%\gfx\interface\component_tiles\" /v /i /q /y
xcopy "%files_path%\interaction_menu_more_bg.dds" "%cd%\gfx\interface\component_tiles\" /v /i /q /y
xcopy "%files_path%\tile_background_window_header.dds" "%cd%\gfx\interface\component_tiles\" /v /i /q /y
xcopy "%files_path%\tile_bg_characterlist.dds" "%cd%\gfx\interface\component_tiles\" /v /i /q /y
xcopy "%files_path%\tile_header_background_01.dds" "%cd%\gfx\interface\component_tiles\" /v /i /q /y
xcopy "%files_path%\tile_title_bg_01.dds" "%cd%\gfx\interface\component_tiles\" /v /i /q /y
xcopy "%files_path%\tile_title_big_top_01.dds" "%cd%\gfx\interface\component_tiles\" /v /i /q /y
xcopy "%files_path%\tile_window_background.dds" "%cd%\gfx\interface\component_tiles\" /v /i /q /y
xcopy "%files_path%\tile_window_background_no_edge.dds" "%cd%\gfx\interface\component_tiles\" /v /i /q /y
xcopy "%files_path%\tile_window_background_popup.dds" "%cd%\gfx\interface\component_tiles\" /v /i /q /y
xcopy "%files_path%\tile_window_background_sidebar.dds" "%cd%\gfx\interface\component_tiles\" /v /i /q /y
xcopy "%files_path%\tile_window_background_subwindow.dds" "%cd%\gfx\interface\component_tiles\" /v /i /q /y

xcopy "%files_path%\frontend_main_menu_bg_button_glow.dds" "%cd%\gfx\interface\frontend\" /v /i /q /y
xcopy "%files_path%\frontend_main_menu_bg.dds" "%cd%\gfx\interface\frontend\" /v /i /q /y

xcopy "%files_path%\pause_bg.dds" "%cd%\gfx\interface\illustrations\frontend\" /v /i /q /y

xcopy "%files_path%\header_military.dds" "%cd%\gfx\interface\illustrations\window_headers\" /v /i /q /y
xcopy "%files_path%\header_my_realm.dds" "%cd%\gfx\interface\illustrations\window_headers\" /v /i /q /y
xcopy "%files_path%\header_prison.dds" "%cd%\gfx\interface\illustrations\window_headers\" /v /i /q /y

xcopy "%files_path%\button_hud_character_bar.dds" "%cd%\gfx\interface\skinned\" /v /i /q /y

xcopy "%files_path%\tooltip_bg.dds" "%cd%\gfx\interface\tooltips\" /v /i /q /y
xcopy "%files_path%\tooltip_frame.dds" "%cd%\gfx\interface\tooltips\" /v /i /q /y

xcopy "%files_path%\amenity_level_bg.dds" "%cd%\gfx\interface\window_roco_grandeur\" /v /i /q /y
xcopy "%files_path%\court_grandeur_bg.dds" "%cd%\gfx\interface\window_roco_grandeur\" /v /i /q /y
xcopy "%files_path%\line_corner_court_amenities.dds" "%cd%\gfx\interface\window_roco_grandeur\" /v /i /q /y
xcopy "%files_path%\line_horizontal_court_amenities.dds" "%cd%\gfx\interface\window_roco_grandeur\" /v /i /q /y
xcopy "%files_path%\line_vertical_court_amenities.dds" "%cd%\gfx\interface\window_roco_grandeur\" /v /i /q /y