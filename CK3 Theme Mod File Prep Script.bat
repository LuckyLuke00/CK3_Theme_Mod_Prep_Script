@rem Set version number variable
@set version_number=0.1

@rem Setting up the command promt window
@title CK3 Theme Mod File Prep Script v%version_number%
@color 1f && rem 1 = blue background; f = white text
@mode 84, 47

@rem Setting up variables
@rem Path variables
@set game_path=NOT SET
@set mod_path=NOT SET

@rem Color variables (red)
@rem If the color of the command prompt window is changed,
@rem the value of the suffix variable needs to be changed to reflect that color.
@set color_prefix=[91m
@set color_suffix=[97m

:main_menu
@cls
@echo ____________________________________________________________________________________
@echo.
@echo                                CK3 THEME MOD FILE PREP
@echo ____________________________________________________________________________________
@echo.
@echo  Game Path: %color_prefix%%game_path%%color_suffix%
@echo  Mod Path: %color_prefix%%mod_path%%color_suffix%
@echo ____________________________________________________________________________________
@echo.
@echo  [1] Set Game Path
@echo  [2] Set Mod Path
@echo.
@echo  [X] Exit
@echo ____________________________________________________________________________________
@echo.
@echo  [S] Start Copying Files
@echo ____________________________________________________________________________________
@choice /c 12XS /n
	@if %errorlevel% == 1 ( goto set_game_path )
	@if %errorlevel% == 2 ( goto set_mod_path )
	@if %errorlevel% == 3 ( exit )
	@if %errorlevel% == 4 ( goto start_copying )

@rem TODO: Create a check to see if the specified path exists.
@rem TODO: Create a variable that keeps track of the label, where it needs to return to after completion.

:set_game_path
@cls
@echo ____________________________________________________________________________________
@echo.
@echo                                       GAME PATH
@echo ____________________________________________________________________________________
@echo.
@echo                                 [UNDER CONSTRUCTION]
@echo.
@echo  Press any key to return to the main menu . . .
@pause > nul
goto main_menu


:set_mod_path
@cls
@echo ____________________________________________________________________________________
@echo.
@echo                                        MOD PATH
@echo ____________________________________________________________________________________
@echo.
@echo                                 [UNDER CONSTRUCTION]
@echo.
@echo Press any key to return to the main menu . . .
@pause > nul
goto main_menu

:start_copying
@cls
@echo ____________________________________________________________________________________
@echo.
@echo                                     COPYING FILES
@echo ____________________________________________________________________________________
@echo.
@echo                                 [UNDER CONSTRUCTION]
@echo.
@echo Press any key to return to the main menu . . .
@pause > nul
goto main_menu
