echo on

echo ******* Building console vim ********
call .\DougBuild.cmd GUI=no %*
if ERRORLEVEL 1 exit /b 1

echo ******* Building gvim ********
call .\DougBuild.cmd GUI=yes %*
if ERRORLEVEL 1 exit /b 1

echo ******* DougBuildAll Completed ******
