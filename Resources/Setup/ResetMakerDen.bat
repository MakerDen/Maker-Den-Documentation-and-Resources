REM Resetting Maker Den

SET "SetupResources=c:\MakerDen\Resources\"
SET "Solution=c:\MakerDen\Source\"

cd %Solution%

REM Cleaning up

git reset --hard


copy %SetupResources%VisualStudio\launcher.csproj.user.RPiName %Solution%Launcher\launcher.csproj.user /y


start devenv /resetsettings %SetupResources%\VisualStudio\MakerDenSettings.vssettings %Solution%MakerDenWindows.sln

