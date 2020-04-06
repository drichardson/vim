echo on

echo ***** Building *****
call .\DougBuildAll.cmd
if ERRORLEVEL 1 exit /b 1

setlocal
set BASE=%USERPROFILE%\Desktop\vim\vim82
set GVIM=%BASE%\gvim.exe
set GVIM_ORIGINAL=%BASE%\gvim-original.exe
set VIM=%BASE%\vim.exe
set VIM_ORIGINAL=%BASE%\vim-original.exe

echo ***** Installing gvim *******

if not exist "%GVIM_ORIGINAL%" (
    move "%GVIM%" "%GVIM_ORIGINAL%"
    if ERRORLEVEL 1 exit /b 1
)

copy gvim.exe "%GVIM%"
if ERRORLEVEL 1 exit /b 1

echo ***** Installing console vim *******

if not exist "%VIM_ORIGINAL%" (
    move "%VIM%" "%VIM_ORIGINAL%"
    if ERRORLEVEL 1 exit /b 1
)

copy vim.exe "%VIM%"
if ERRORLEVEL 1 exit /b 1

echo ****** Installation Complete *******
