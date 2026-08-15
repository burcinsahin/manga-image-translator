@echo off
setlocal enabledelayedexpansion

:: 1. SET WORKING DIRECTORY
:: This ensures the script runs relative to where it is located
cd /d "%~dp0"

:: 2. CAPTURE THE DROPPED FOLDER
:: %1 holds the path of the folder or file dropped onto this .bat file
SET "INPUT_PATH=%~1"

:: If nothing was dropped, ask the user for a path manually
if "%INPUT_PATH%"=="" (
    echo [ERROR] Please drag and drop a folder onto this file!
    echo.
    set /p "INPUT_PATH=Or paste the folder path here and press Enter: "
)

:: 3. ACTIVATE VIRTUAL ENVIRONMENT (VENV)
if exist ".\venv\Scripts\activate.bat" (
    echo [INFO] Activating virtual environment...
    call .\venv\Scripts\activate.bat
) else (
    echo [ERROR] '.\venv' folder not found! 
    echo Please make sure this .bat file is in the same folder as your venv.
    pause
    exit /b
)

:: 4. RUN THE TRANSLATION COMMAND
echo [PROCESS] Starting translation for: "%INPUT_PATH%"
echo [INFO] Using configuration: .\examples\myconfig_ch2en.toml
echo.

python -m manga_translator local -i "%INPUT_PATH%" --config-file ".\examples\myconfig_ch2en.toml"

:: 5. FINISH
echo.
echo [DONE] Translation process finished.
pause