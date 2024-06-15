cd html
call npm ci
call npm run production
cd ..
dotnet build VRCX.sln -p:Configuration=Release -p:Platform=x64 -p:RestorePackagesConfig=true -t:"Restore;Clean;Build" -m --self-contained
mklink /J "%~dp0\bin\x64\Release\html" "%~dp0\html\dist"
timeout /t 5
cd bin\x64\Release 
VRCX.exe
pause



