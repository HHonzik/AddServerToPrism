@if not "%1"=="-v" (@echo off)
:: Get the prismlauncher instance directory
type "%appdata%\PrismLauncher\prismlauncher.cfg" | find "InstanceDir" > "%tmp%\prisminstance.tmp"
set /p prismdir=<"%tmp%\prisminstance.tmp"
del "%tmp%\prisminstance.tmp"
:: Remove the "InstanceDir="
set "prismdir=%prismdir:~12%"
echo Prism Launch Instances folder is: %prismdir% ... checking for instances
:: Get any avalible Instances and get a file from the first instance returned by dir
dir /b "%prismdir%" > "%tmp%\instances.tmp"
set /p instance=<"%tmp%\instances.tmp"
del "%tmp%\instances.tmp"
copy "%prismdir%\%instance%\patches\net.minecraft.json" "%tmp%\net.minecraft.json"

set "name=DummyServer"
set /p "name=Enter the name of your server (if not specified using DummyServer):   "
mkdir "%prismdir%\%name%"
echo Note: You will need to select an account which will be used to run the server as it will default to the current selected account when its invalid...
:: Generating files
type nul > "%prismdir%\%name%\patches\customjar.json"
type nul > "%prismdir%\%name%\libraries\MANIFEST.MF"
type nul > "%prismdir%\%name%\instance.cfg"
echo [General] > "%prismdir%\%name%\instance.cfg"
echo ConfigVersion=^1.^2 >> "%prismdir%\%name%\instance.cfg"
echo iconKey=modrinth >> "%prismdir%\%name%\instance.cfg"
echo name=%name% >> "%prismdir%\%name%\instance.cfg"
echo InstanceAccountId=asd >> "%prismdir%\%name%\instance.cfg"
echo InstanceType=OneSix >> "%prismdir%\%name%\instance.cfg"
echo JoinServerOnLaunch=false >> "%prismdir%\%name%\instance.cfg"
echo OverrideCommands=false >> "%prismdir%\%name%\instance.cfg"
echo notes= >> "%prismdir%\%name%\instance.cfg"
echo OverrideConsole=false >> "%prismdir%\%name%\instance.cfg"
echo ExportAuthor= >> "%prismdir%\%name%\instance.cfg"
echo OverrideEnv=false >> "%prismdir%\%name%\instance.cfg"
echo ExportName= >> "%prismdir%\%name%\instance.cfg"
echo OverrideGameTime=false >> "%prismdir%\%name%\instance.cfg"
echo ExportOptionalFiles=true >> "%prismdir%\%name%\instance.cfg"
echo OverrideJavaArgs=false >> "%prismdir%\%name%\instance.cfg"
echo ExportSummary= >> "%prismdir%\%name%\instance.cfg"
echo OverrideJavaLocation=false >> "%prismdir%\%name%\instance.cfg"
echo ExportVersion=1.0.0 >> "%prismdir%\%name%\instance.cfg"
echo OverrideLegacySettings=false >> "%prismdir%\%name%\instance.cfg"
echo OverrideMemory=false >> "%prismdir%\%name%\instance.cfg"
echo OverrideMiscellaneous=false >> "%prismdir%\%name%\instance.cfg"
echo OverrideNativeWorkarounds=false >> "%prismdir%\%name%\instance.cfg"
echo JavaArchitecture=^6^4 >> "%prismdir%\%name%\instance.cfg"
echo OverridePerformance=false >> "%prismdir%\%name%\instance.cfg"
echo OverrideWindow=false >> "%prismdir%\%name%\instance.cfg"
echo JavaRealArchitecture=amd64 >> "%prismdir%\%name%\instance.cfg"
echo JavaSignature=asd >> "%prismdir%\%name%\instance.cfg"
echo UseAccountForInstance=true >> "%prismdir%\%name%\instance.cfg"
echo JavaVendor=Oracle Corporation >> "%prismdir%\%name%\instance.cfg"
echo JavaVersion=23-ea >> "%prismdir%\%name%\instance.cfg"
echo LogPrePostOutput=true >> "%prismdir%\%name%\instance.cfg"
echo ManagedPack=false >> "%prismdir%\%name%\instance.cfg"
echo ManagedPackID= >> "%prismdir%\%name%\instance.cfg"
echo ManagedPackName= >> "%prismdir%\%name%\instance.cfg"
echo ManagedPackType= >> "%prismdir%\%name%\instance.cfg"
echo ManagedPackVersionID= >> "%prismdir%\%name%\instance.cfg"
echo ManagedPackVersionName= >> "%prismdir%\%name%\instance.cfg"
echo Profiler= >> "%prismdir%\%name%\instance.cfg"
echo lastLaunchTime=4554645564 >> "%prismdir%\%name%\instance.cfg"
echo lastTimePlayed=456654564654564 >> "%prismdir%\%name%\instance.cfg"
echo linkedInstances=[] >> "%prismdir%\%name%\instance.cfg"
echo totalTimePlayed=32132132132321321321231 >> "%prismdir%\%name%\instance.cfg"
echo {  > "%prismdir%\%name%\mmc-pack.json"
echo     "components": [ >> "%prismdir%\%name%\mmc-pack.json"
echo         {>> "%prismdir%\%name%\mmc-pack.json"
echo             "cachedName": "LWJGL 3",>> "%prismdir%\%name%\mmc-pack.json"
echo             "cachedVersion": "3.3.2",>> "%prismdir%\%name%\mmc-pack.json"
echo             "cachedVolatile": true,>> "%prismdir%\%name%\mmc-pack.json"
echo             "dependencyOnly": true,>> "%prismdir%\%name%\mmc-pack.json"
echo             "uid": "org.lwjgl3",>> "%prismdir%\%name%\mmc-pack.json"
echo             "version": "3.3.2">> "%prismdir%\%name%\mmc-pack.json"
echo         },>> "%prismdir%\%name%\mmc-pack.json"
echo         {>> "%prismdir%\%name%\mmc-pack.json"
echo             "cachedName": "Minecraft",>> "%prismdir%\%name%\mmc-pack.json"
echo             "cachedRequires": [>> "%prismdir%\%name%\mmc-pack.json"
echo                 {>> "%prismdir%\%name%\mmc-pack.json"
echo                     "suggests": "3.3.2",>> "%prismdir%\%name%\mmc-pack.json"
echo                     "uid": "org.lwjgl3">> "%prismdir%\%name%\mmc-pack.json"
echo                 }>> "%prismdir%\%name%\mmc-pack.json"
echo             ],>> "%prismdir%\%name%\mmc-pack.json"
echo             "cachedVersion": "1.20.4",>> "%prismdir%\%name%\mmc-pack.json"
echo             "important": true,>> "%prismdir%\%name%\mmc-pack.json"
echo             "uid": "net.minecraft",>> "%prismdir%\%name%\mmc-pack.json"
echo             "version": "1.20.4">> "%prismdir%\%name%\mmc-pack.json"
echo         },>> "%prismdir%\%name%\mmc-pack.json"
echo         {>> "%prismdir%\%name%\mmc-pack.json"
echo             "cachedName": "server (custom jar)",>> "%prismdir%\%name%\mmc-pack.json"
echo             "uid": "customjar">> "%prismdir%\%name%\mmc-pack.json"
echo         }>> "%prismdir%\%name%\mmc-pack.json"
echo     ],>> "%prismdir%\%name%\mmc-pack.json"
echo     "formatVersion": ^1>> "%prismdir%\%name%\mmc-pack.json"
echo }>> "%prismdir%\%name%\mmc-pack.json"
mkdir "%prismdir%\%name%\patches"
echo {> "%prismdir%\%name%\patches\customjar.json"
echo     "formatVersion": 1,>> "%prismdir%\%name%\patches\customjar.json"
echo     "mainJar": {>> "%prismdir%\%name%\patches\customjar.json"
echo         "MMC-displayname": "server",>> "%prismdir%\%name%\patches\customjar.json"
echo         "MMC-hint": "local",>> "%prismdir%\%name%\patches\customjar.json"
echo         "name": "custom:customjar:1">> "%prismdir%\%name%\patches\customjar.json"
echo     },>> "%prismdir%\%name%\patches\customjar.json"
echo     "name": "server (custom jar)",>> "%prismdir%\%name%\patches\customjar.json"
echo     "uid": "customjar">> "%prismdir%\%name%\patches\customjar.json"
echo }>> "%prismdir%\%name%\patches\customjar.json"
mkdir "%prismdir%\%name%\libraries"
echo Now get the JAR file of the server (e.g. paper-1.20.4.jar) and drag the file into this terminal window. The file will be copied to the required folder.
set /p jarfile="Drag and drop JAR file here: "
set jarfile=%jarfile:"=%
copy "%jarfile%" "%prismdir%\%name%\libraries\customjar-1.jar"
:: Very jank way to get the one file to find the main class and then get it into the net.minecraft.json file where it need it.
reg query "HKLM\SOFTWARE\7-Zip" /v Path >nul

if errorlevel 1 (
  echo 7-Zip Is not installed. Please install it and press enter...
  pause
)
reg query "HKLM\SOFTWARE\7-Zip" /v Path >nul

if errorlevel 1 (
  echo 7-Zip Is not installed. Run this again after installing it.
  pause
  exit /b 1
)

reg query "HKLM\SOFTWARE\7-Zip" /v Path | find "Path" > "%tmp%\7zippath.tmp"
set /p sevenzippath=<"%tmp%\7zippath.tmp"
del "%tmp%\7zippath.tmp"
set sevenzippath=%sevenzippath:~22%

copy "%tmp%\net.minecraft.json" "%prismdir%\%name%\patches\net.minecraft.json"
del "%tmp%\net.minecraft.json"

echo Found 7-Zip: %sevenzippath% .
 Extracting custom server JAR...
7z x -o"%tmp%\7zextracted" "%prismdir%\%name%\libraries\customjar-1.jar" META-INF/MANIFEST.MF
copy "%tmp%\7zextracted\META-INF\MANIFEST.MF" "%prismdir%\%name%\libraries\"
rmdir /s /q "%tmp%\7zextracted"
type "%prismdir%\%name%\libraries\MANIFEST.MF" | find "Main-Class:" > "%tmp%\manifestmainclass.tmp"
set /p mainclass=<"%tmp%\manifestmainclass.tmp"
set mainclass=%mainclass:~12%   
echo Found Main-Class: %mainclass% .
del "%prismdir%\%name%\libraries\MANIFEST.MF"

echo Finding Main-Class value in net.minecraft.json...
for /F "delims=" %%i in ('findstr /C:"\"mainClass\"" "%prismdir%\%name%\patches\net.minecraft.json"') do set oldMainClass=%%i
set oldMainClass=%oldMainClass:~18,-2%
echo Old Main-Class value is: %oldMainClass%
echo Replacing Main-Class value with %mainclass% in net.minecraft.json...
powershell -Command "(Get-Content '%prismdir%\%name%\patches\net.minecraft.json') -replace '%oldMainClass%', '%mainclass%' | Set-Content '%prismdir%\%name%\patchesnet.minecraft.json'"
echo Main-Class value replaced with %mainclass% in net.minecraft.json
echo Done.
pause