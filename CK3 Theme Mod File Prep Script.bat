@rem Set version number variable
@set version_number=0.1

@rem Setting up variables
@rem Path variables
@set game_path=NOT SET
@set mod_path=NOT SET

@set path_verified=false

@rem Color variables (red)
@rem Set color variables for the windows,
@rem first number/letter is background color, second is text color.
@set window_color=1f
@set warning_color=4f
@rem If the color of the command prompt window is changed,
@rem the value of the suffix variable needs to be changed to reflect that color.
@rem If the window's color changes, color_suffix needs to change accordingly.
@set color_prefix_game=[91m
@set color_prefix_mod=[91m
@set color_suffix=[97m

@rem Setting up the command promt window
@title CK3 Theme Mod File Prep Script v%version_number%
@color %window_color%
@mode 84, 47

:main_menu
@cls
@echo ____________________________________________________________________________________
@echo.
@echo                                CK3 THEME MOD FILE PREP
@echo ____________________________________________________________________________________
@echo.
@echo  Game Path: %color_prefix_game%%game_path%%color_suffix%
@echo  Mod Path: %color_prefix_mod%%mod_path%%color_suffix%
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
	@if %errorlevel% == 1 ( @goto set_game_path )
	@if %errorlevel% == 2 ( @goto set_mod_path )
	@if %errorlevel% == 3 ( exit )
	@if %errorlevel% == 4 ( @goto start_copying )

@rem TODO: Create a check to see if the specified path exists.
@rem TODO: Create a variable that keeps track of the label, where it needs to return to after completion.

:set_game_path
@cls
	@if %path_verified% == true (
		@set path_verified=false
		@goto check_game
	)
@echo ____________________________________________________________________________________
@echo.
@echo                                       GAME PATH
@echo ____________________________________________________________________________________
@echo.
@echo                                 [UNDER CONSTRUCTION]
@echo.
@set /p path_to_check=Please, drag and drop your "Crusader Kings III" install folder here: 
@set return_to_label=set_game_path
@goto check_path

:check_game
@rem Check if the ck3 executable can get found in the specified path.
@rem If so, set the game_path variable. If not, display a warning.
@if exist "%path_to_check%\binaries\ck3.exe" (
	@set game_path=%path_to_check%
	@set color_prefix_game=[92m
	@goto main_menu
)

@cls
@color %warning_color%
@echo ____________________________________________________________________________________
@echo.
@echo                                        WARNING
@echo ____________________________________________________________________________________
@echo.
@echo  Couldn't find the Crusader Kings III executable.
@echo  Make sure you specify the Crusader Kings III install folder.
@echo.
@echo  Press any key to continue . . .
@pause > nul
@color %window_color%
@goto main_menu

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
@goto main_menu

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
@goto main_menu

:check_path
	@rem Check if the user-specified path is empty. If so, return. Else continue.
	@if not defined path_to_check ( @goto %return_to_label% )

@rem Remove double quotes from the path.
@rem Needs to be placed below the empty path check. Otherwise,
@rem the variable will get defined, and the check will not work.
@set path_to_check=%path_to_check:"=%

	@rem Check if the user-specified path exists.
	@if exist %path_to_check% (
		@set path_verified=true
		@goto %return_to_label%
	)

@cls
@color %warning_color%
@echo ____________________________________________________________________________________
@echo.
@echo                                        WARNING
@echo ____________________________________________________________________________________
@echo.
@echo  The path does not exist. Please, enter a valid path.
@echo.
@echo  Press any key to continue . . .
@pause > nul
@color %window_color%
@goto main_menu
