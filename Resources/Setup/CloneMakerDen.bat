REM Getting the source code

SET SetupResources=%~2
SET Solution=%~3


git clone https://github.com/MakerDen/IoT-Maker-Den-Windows-for-IoT.git --depth 1 %Solution%

rem set RPi Remote Device Name for Visual Studio
call %SetupResources%\Setup\RPiName %~1

rem copy across the snippets
call %SetupResources%\Setup\Snippets

cd %Solution%


copy %SetupResources%VisualStudio\launcher.csproj.user.RPiName %Solution%Launcher\launcher.csproj.user /y

start "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv" /resetsettings %SetupResources%\VisualStudio\MakerDenSettings.vssettings %Solution%MakerDenWindows.sln


