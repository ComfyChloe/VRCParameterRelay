@echo off
rem Builds dist\VRCParameterRelay-Windows.exe with PyInstaller.
cd /d "%~dp0"

if not exist .venv\Scripts\pyinstaller.exe (
    .venv\Scripts\python.exe -m pip install pyinstaller || goto :error
)

.venv\Scripts\pyinstaller.exe --noconfirm VRCParameterRelay.spec || goto :error
echo.
echo Done: see dist\VRCParameterRelay-Windows.exe  (single file, share this)
goto :eof

:error
echo Build failed.
pause
