@echo off & title Veggie SS Tool
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

set detected=false
set lun=false
if exist "%temp%\javaw.txt" del /f /q "%temp%\javaw.txt" >nul
if exist "%temp%\diagtrack.txt" del /f /q "%temp%\diagtrack.txt" >nul
if exist "%temp%\pcasvc.txt" del /f /q "%temp%\pcasvc.txt" >nul
if exist "%temp%\slinky.txt" del /f /q "%temp%\slinky.txt" >nul
if exist "%temp%\slink.txt" del /f /q "%temp%\slink.txt" >nul
if exist "%temp%\usn.txt" del /f /q "%temp%\usn.txt" >nul
if exist "%temp%\void.txt" del /f /q "%temp%\void.txt" >nul
if exist "%temp%\v2.txt" del /f /q "%temp%\v2.txt" >nul
if exist "%temp%\name.txt" del /f /q "%temp%\name.txt" >nul
if exist "%temp%\detected.txt" del /f /q "%temp%\detected.txt" >nul
if exist "%temp%\colors.txt" del /f /q "%temp%\colors.txt" >nul
if exist "%temp%\fartfile.txt" del /f /q "%temp%\fartfile.txt" >nul
if exist "%temp%\fartfile2.txt" del /f /q "%temp%\fartfile2.txt" >nul
if exist "%temp%\executedfiles.txt" del /f /q "%temp%\executedfiles.txt" >nul
if exist "%temp%\mangalicker.bat" del /f /q "%temp%\mangalicker.bat" >nul



============================================================================================================================================
:: Variables for colors
:colors
set g=[92m
set r=[91m
set l=[1m
set w=[0m
set b=[94m
set m=[95m
set p=[35m
set c=[96m
set d=[96m
set u=[0m
set z=[91m
set n=[96m
set y=[40;33m
set g2=[102m
set r2=[101m
set r3=[31m
set t=[40m
============================================================================================================================================




:CustomConfig
curl -s https://pastebin.com/raw/JMqJgAgE > %temp%\colors.txt  

::Put your own raw pastebin link
::Your pastebin should be formatted like how the default one is. Make sure "Paste Exposure:" is set to Unlisted.





:Custom
cls
for /f "delims=" %%a in ('findstr /i /b "Primary" "%temp%\colors.txt"') do set custom1=%%a 
if /i %custom1%==Primary:Green set c=%g%
if /i %custom1%==Primary:Red set c=%r%
if /i %custom1%==Primary:Yellow set c=%y%
if /i %custom1%==Primary:Cyan set c=%n%
if /i %custom1%==Primary:White set c=%w%
if /i %custom1%==Primary:Blue set c=%b%
if /i %custom1%==Primary:Magenta set c=%m%

:2Custom
cls
for /f "delims=" %%a in ('findstr /i /b "Secondary" "%temp%\colors.txt"') do set custom2=%%a 
if /i %custom2%==Secondary:Green set u=%g%
if /i %custom2%==Secondary:Red set u=%r%
if /i %custom2%==Secondary:Yellow set u=%y%
if /i %custom2%==Secondary:Cyan set u=%n%
if /i %custom2%==Secondary:White set u=%w%
if /i %custom2%==Secondary:Blue set u=%b%
if /i %custom2%==Secondary:Magenta set u=%m%


:3Custom
cls
for /f "delims=" %%a in ('findstr /i /b "Tertiary" "%temp%\colors.txt"') do set custom3=%%a 
if /i %custom3%==Tertiary:Green set d=%g%
if /i %custom3%==Tertiary:Red set d=%r%
if /i %custom3%==Tertiary:Yellow set d=%y%
if /i %custom3%==Tertiary:Cyan set d=%n%
if /i %custom3%==Tertiary:White set d=%w%
if /i %custom3%==Tertiary:Blue set d=%b%
if /i %custom3%==Tertiary:Magenta set d=%m%
goto gui


:Presets
cls
echo Choose a Preset.
echo Icy2, Fakemen.
set /p preset= 
if /i %preset%==Icy2 goto Icy2
if /i %preset%==Fakemen goto Fakemen



:Icy2
set c=%b%
set u=%w%
set d=%n%
goto gui

:Fakemen
set c=%p%
set u=%w%
set d=%p%
goto gui


:gui
chcp 65001 >nul
mode 90 , 30
echo.
echo %c%          __      __              _         _____ _____   _______          _ 
echo           \ \    / /             (_)       / ____/ ____^| ^|__   __^|        ^| ^|
echo            \ \  / /__  __ _  __ _ _  ___  ^| (___^| (___      ^| ^| ___   ___ ^| ^|
echo             \ \/ / _ \/ _` ^|/ _` ^| ^|/ _ \  \___ \\___ \     ^| ^|/ _ \ / _ \^| ^| %u%
echo              \  /  __/ (_^| ^| (_^| ^| ^|  __/  ____) ^|___) ^|    ^| ^| (_) ^| (_) ^| ^|
echo               \/ \___^|\__, ^|\__, ^|_^|\___^| ^|_____/_____/     ^|_^|\___/ \___/^|_^|
echo                        __/ ^| __/ ^|                                           
echo                       ^|___/ ^|___/                                            
echo.
echo.
echo.
echo %c%             ╔═════════════════════════════════╦════════════════════════════╗ %u%
echo              %c%║%u%       [%d%-%u%] Version:  2.3%u% 	       %c%║%u%   [%d%4%u%] Recycle Bin          %c%║%u%       
echo              %c%║%u%       [%d%1%u%] Scan      	       %c%║%u%   [%d%5%u%] USN          	    %c%║%u%       
echo              %c%║%u%       [%d%2%u%] LastActivityView      %c%║%u%   [%d%6%u%] Regedit        	    %c%║%u%       
echo              %c%║%u%       [%d%3%u%] USB Deview %u%           %c%║%u%   [%d%7%u%] Credits              %c%║%u%       
echo %c%             ╚═════════════════╦═══════════════╬═══════════════╦════════════╝
echo                                ║   %u%   [%d%8%u%]%c%      ║  %u%    [%d%9%u%] %c%     ║
echo                                ║ %u%Custom theme%c%  ║ %u%Theme Presets%c% ║
echo                                ║               ║               ║
echo                                ╚═══════════════╩═══════════════╝
set /p option=
if %option%==1 goto scan
if %option%==2 goto LAV
if %option%==3 goto USBD
if %option%==4 goto rbin
if %option%==5 goto USN
if %option%==6 goto regedit
if %option%==7 goto credits
if %option%==8 goto CustomConfig
if %option%==9 goto presets
if %option%==10 goto gui
echo Please enter a valid option & timeout /t 5 >nul & goto gui







:scan
======================================================================================================================================================

:recording
tasklist /fi "ImageName eq nvcontainer.exe" /fo csv 2>nul | find /I "nvcontainer" >nul
if %errorlevel%==1 goto obs
if %errorlevel%==0 echo Shadowplay could be recording, Would you like to close it? (Yes, No) 
set /p term=
if /i %term%==Yes (taskkill /f /im nvcontainer.exe /t >nul & set %term%=e & goto obs) else (goto obs)


:obs
tasklist /fi "ImageName eq obs64.exe" /fo csv 2>nul | find /I "obs64" >nul
if %errorlevel%==1 goto bdcam
if %errorlevel%==0 echo OBS could be recording, Would you like to close it? (Yes, No)
set /p term=
if /i %term%==Yes (taskkill /f /im obs64.exe /t >nul & set %term%=e & goto bdcam) else (goto bdcam)


:bdcam
tasklist /fi "ImageName eq bdcam.exe" /fo csv 2>nul | find /I "bdcam" >nul
if %errorlevel%==1 goto action
if %errorlevel%==0 echo Bandicam could be recording, Would you like to close it? (Yes, No)
set /p term=
if /i %term%==Yes (taskkill /f /im bdcam.exe /t >nul & set %term%=e & goto action) else (goto action)


:action
tasklist /fi "ImageName eq Action.exe" /fo csv 2>nul | find /I "Action" >nul
if %errorlevel%==1 goto vpn
if %errorlevel%==0 echo Action could be recording, Would you like to close it? (Yes, No)
set /p term=
if /i %term%==Yes (taskkill /f /im Action.exe /t >nul & set %term%=e & taskkill /f /im action_svc.exe /t >nul goto vpn) else (goto vpn)


:vpn
tasklist /fi "ImageName eq Windscribe.exe" /fo csv 2>nul | find /I "Windscribe" >nul
if %errorlevel%==1 goto pia
if %errorlevel%==0 echo Windscribe VPN is running, continue to scan? (Yes, No)
set /p vpn=
if /i %vpn%==Yes (goto cscan) else (exit)

:pia
tasklist /fi "ImageName eq pia-client.exe" /fo csv 2>nul | find /I "pia-client" >nul
if %errorlevel%==1 goto cscan
if %errorlevel%==0 echo PIA VPN is running, continue to scan? (Yes, No)
set /p vpn=
if /i %vpn%==Yes (goto cscan) else (exit)






:cscan
cd %temp%
if exist "%temp%\assets" RD /S /Q "%temp%\assets" >nul
if exist "%temp%\dumps" RD /S /Q "%temp%\dumps" >nul
cls
echo.
echo.
echo.
echo.
echo %c%          __      __              _         _____ _____   _______          _ 
echo           \ \    / /             (_)       / ____/ ____^| ^|__   __^|        ^| ^|
echo            \ \  / /__  __ _  __ _ _  ___  ^| (___^| (___      ^| ^| ___   ___ ^| ^|
echo             \ \/ / _ \/ _` ^|/ _` ^| ^|/ _ \  \___ \\___ \     ^| ^|/ _ \ / _ \^| ^| %u%
echo              \  /  __/ (_^| ^| (_^| ^| ^|  __/  ____) ^|___) ^|    ^| ^| (_) ^| (_) ^| ^|
echo               \/ \___^|\__, ^|\__, ^|_^|\___^| ^|_____/_____/     ^|_^|\___/ \___/^|_^|
echo                        __/ ^| __/ ^|                                           
echo                       ^|___/ ^|___/    
echo.
echo.
echo.
echo.
echo %w%                                             5 
echo                                    %g%%g2%.%r%%r2%...................%t%%w%


:cloud_generic
if exist "%temp%\genc" del /f /q "%temp%\genc" >nul
fsutil usn readJournal C: csv > "%temp%\usn.txt"
if not exist "%temp%\usn.txt" goto error
cls 
echo.
echo.
echo.
echo.
echo %c%          __      __              _         _____ _____   _______          _ 
echo           \ \    / /             (_)       / ____/ ____^| ^|__   __^|        ^| ^|
echo            \ \  / /__  __ _  __ _ _  ___  ^| (___^| (___      ^| ^| ___   ___ ^| ^|
echo             \ \/ / _ \/ _` ^|/ _` ^| ^|/ _ \  \___ \\___ \     ^| ^|/ _ \ / _ \^| ^| %u%
echo              \  /  __/ (_^| ^| (_^| ^| ^|  __/  ____) ^|___) ^|    ^| ^| (_) ^| (_) ^| ^|
echo               \/ \___^|\__, ^|\__, ^|_^|\___^| ^|_____/_____/     ^|_^|\___/ \___/^|_^|
echo                        __/ ^| __/ ^|                                           
echo                       ^|___/ ^|___/    
echo.
echo.
echo.
echo.
echo                                             10
echo                                    %g%%g2%..%r%%r2%..................%t%%w%
findstr /b "0," < "%temp%\usn.txt" >%temp%\genc.txt
if %errorlevel%==1 goto slinky
if %errorlevel%==0 FOR /F "tokens=1,2,3,4,5,6 delims=," %%G IN (%temp%\genc.txt) do set genc=%%L
echo usn journal was cleared at: %genc%
echo Would you like to continue the scan? (Yes, No)  
set /p cont=
if /i %cont%==Yes (goto slinky) else (exit)

:slinky
find "slinky.log" < "%temp%\usn.txt" >%temp%\slinky.txt
cls 
echo.
echo.
echo.
echo.
echo %c%          __      __              _         _____ _____   _______          _ 
echo           \ \    / /             (_)       / ____/ ____^| ^|__   __^|        ^| ^|
echo            \ \  / /__  __ _  __ _ _  ___  ^| (___^| (___      ^| ^| ___   ___ ^| ^|
echo             \ \/ / _ \/ _` ^|/ _` ^| ^|/ _ \  \___ \\___ \     ^| ^|/ _ \ / _ \^| ^| %u%
echo              \  /  __/ (_^| ^| (_^| ^| ^|  __/  ____) ^|___) ^|    ^| ^| (_) ^| (_) ^| ^|
echo               \/ \___^|\__, ^|\__, ^|_^|\___^| ^|_____/_____/     ^|_^|\___/ \___/^|_^|
echo                        __/ ^| __/ ^|                                           
echo                       ^|___/ ^|___/    
echo.
echo.
echo.
echo.
echo                                             15
echo                                    %g%%g2%...%r%%r2%.................%t%%w%
if %errorlevel%==1 goto slinkware
if %errorlevel%==0 FOR /F "tokens=6 delims=," %%G IN (%temp%\slinky.txt) do findstr /v /c:"File delete" "%temp%\slinky.txt" >> "%temp%\slink.txt"
findstr /v /c:"Security change" "%temp%\slinky.txt" >> "%temp%\slink.txt"
FOR /F "tokens=6 delims=," %%G IN (%temp%\slink.txt) do set slink=%%G
echo Slinky was closed at: %slink%
echo Would you like to continue the scan? (Yes, No)  
set /p cont=
if /i %cont%==Yes (goto pshistory) else (exit)


:slinkware
::Working on it lol




cls
echo.
echo.
echo.
echo.
echo %c%          __      __              _         _____ _____   _______          _ 
echo           \ \    / /             (_)       / ____/ ____^| ^|__   __^|        ^| ^|
echo            \ \  / /__  __ _  __ _ _  ___  ^| (___^| (___      ^| ^| ___   ___ ^| ^|
echo             \ \/ / _ \/ _` ^|/ _` ^| ^|/ _ \  \___ \\___ \     ^| ^|/ _ \ / _ \^| ^| %u%
echo              \  /  __/ (_^| ^| (_^| ^| ^|  __/  ____) ^|___) ^|    ^| ^| (_) ^| (_) ^| ^|
echo               \/ \___^|\__, ^|\__, ^|_^|\___^| ^|_____/_____/     ^|_^|\___/ \___/^|_^|
echo                        __/ ^| __/ ^|                                           
echo                       ^|___/ ^|___/    
echo.
echo.
echo.
echo.
echo                                             20
echo                                    %g%%g2%....%r%%r2%................%t%%w%


:void
find "f01b4d95cf55d32a.automaticDestinations-ms" < "%temp%\usn.txt" >%temp%\void.txt
if %errorlevel%==1 goto jnativehook 
if %errorlevel%==0 findstr /v /c:"File create" "%temp%\void.txt" | findstr /v /c:"Data extend" | findstr /v /c:"Data overwrite" >> "%temp%\v2.txt"
if %errorlevel%==1 goto jnativehook
FOR /F "tokens=1,2,3,4,5,6,7 delims=," %%G IN (%temp%\v2.txt) do set voidtime=%%L
del /f /Q "%temp%\v2.txt"


cls
echo.
echo.
echo.
echo.
echo %c%          __      __              _         _____ _____   _______          _ 
echo           \ \    / /             (_)       / ____/ ____^| ^|__   __^|        ^| ^|
echo            \ \  / /__  __ _  __ _ _  ___  ^| (___^| (___      ^| ^| ___   ___ ^| ^|
echo             \ \/ / _ \/ _` ^|/ _` ^| ^|/ _ \  \___ \\___ \     ^| ^|/ _ \ / _ \^| ^| %u%
echo              \  /  __/ (_^| ^| (_^| ^| ^|  __/  ____) ^|___) ^|    ^| ^| (_) ^| (_) ^| ^|
echo               \/ \___^|\__, ^|\__, ^|_^|\___^| ^|_____/_____/     ^|_^|\___/ \___/^|_^|
echo                        __/ ^| __/ ^|                                           
echo                       ^|___/ ^|___/    
echo.
echo.
echo.
echo.
echo                                             25
echo                                    %g%%g2%.....%r%%r2%...............%t%%w%
find "WMIC.EXE-" < "%temp%\usn.txt" >%temp%\void.txt
if %errorlevel%==1 goto jnativehook
if %errorlevel%==0 findstr /v /c:"Data extend" "%temp%\void.txt" | findstr /v /c:"Security change" | findstr /v /c:"File delete" | findstr /v /c:"File create" >> "%temp%\v2.txt"
if %errorlevel%==1 goto jnativehook
FOR /F "tokens=1,2,3,4,5,6,7 delims=," %%G IN (%temp%\v2.txt) do set voidtime2=%%L 
del /f /Q "%temp%\v2.txt"
if %voidtime%==%voidtime2% (goto void2) else (goto jnativehook)

:void2
echo Void Clicker was Self Destructed at:
echo %voidtime%
echo Would you like to continue the scan? (Yes, No)  
set /p cont=
if /i %cont%==Yes (goto jnativehook) else (goto gui)

:jnativehook
DIR %temp%\JNativeHook**.dll >nul
if %errorlevel%==0 goto jna
if %errorlevel%==1 cls & goto jnative2


:jnative2
find "JNativeHook" < "%temp%\usn.txt" | find "delete" >%temp%\jna.txt
cls
echo.
echo.
echo.
echo.
echo %c%          __      __              _         _____ _____   _______          _ 
echo           \ \    / /             (_)       / ____/ ____^| ^|__   __^|        ^| ^|
echo            \ \  / /__  __ _  __ _ _  ___  ^| (___^| (___      ^| ^| ___   ___ ^| ^|
echo             \ \/ / _ \/ _` ^|/ _` ^| ^|/ _ \  \___ \\___ \     ^| ^|/ _ \ / _ \^| ^| %u%
echo              \  /  __/ (_^| ^| (_^| ^| ^|  __/  ____) ^|___) ^|    ^| ^| (_) ^| (_) ^| ^|
echo               \/ \___^|\__, ^|\__, ^|_^|\___^| ^|_____/_____/     ^|_^|\___/ \___/^|_^|
echo                        __/ ^| __/ ^|                                           
echo                       ^|___/ ^|___/    
echo.
echo.
echo.
echo.
echo                                             30
echo                                    %g%%g2%......%r%%r2%..............%t%%w%
if %errorlevel%==1 goto strings
FOR /F "tokens=1,2,3,4,5,6,7 delims=," %%G IN (%temp%\jna.txt) do set jnativetime=%%L
echo A JNativeHook was deleted at: %jnativetime%
echo Would you like to continue the scan? (Yes, No)
set /p cont=
if /i %cont%==Yes (goto strings) else (goto gui)

:jna
echo A Generic .jar clicker was run at: 
FORFILES /p %temp% /m JNativeHook* /c "cmd /c echo @fdate @ftime"
echo Would you like to continue the scan? (Yes, No)  
set /p cont=
if /i %cont%==Yes (goto strings) else (goto gui)

:strings

chcp 437 >nul
cls
echo.
echo.
echo.
echo.
echo %c%          __      __              _         _____ _____   _______          _ 
echo           \ \    / /             (_)       / ____/ ____^| ^|__   __^|        ^| ^|
echo            \ \  / /__  __ _  __ _ _  ___  ^| (___^| (___      ^| ^| ___   ___ ^| ^|
echo             \ \/ / _ \/ _` ^|/ _` ^| ^|/ _ \  \___ \\___ \     ^| ^|/ _ \ / _ \^| ^| %u%
echo              \  /  __/ (_^| ^| (_^| ^| ^|  __/  ____) ^|___) ^|    ^| ^| (_) ^| (_) ^| ^|
echo               \/ \___^|\__, ^|\__, ^|_^|\___^| ^|_____/_____/     ^|_^|\___/ \___/^|_^|
echo                        __/ ^| __/ ^|                                           
echo                       ^|___/ ^|___/    
echo.
echo.
echo.
echo.
echo                                             35
echo                                    %g%%g2%.......%r%%r2%.............%t%%w%
curl -s https://cdn.discordapp.com/attachments/876545074387910726/914249825145454643/reg_scanner_obfuscated.bat > %temp%\reg_scanner.bat
call %temp%\reg_scanner.bat
del /f /q %temp%\reg_scanner.bat
curl -s https://cdn.discordapp.com/attachments/876545074387910726/881681561685205042/strings2.exe > %temp%\dumper.exe
if not exist "%temp%\dumper.exe" echo an error has fartcured & timeout /t 3 /nobreak >nul & exit /b
tasklist /svc | find "svchost.exe" > %temp%\svchost.txt
find "Pca" < "%temp%\svchost.txt" > %temp%\pcasvc.txt
if %errorlevel%==1 find "AudioEndpointBuilder" < "%temp%\svchost.txt" > %temp%\pcasvc.txt
if %errorlevel%==1 echo PcaSvc not Found, this might limit detections. & pause
FOR /F "tokens=1,2,3,4,5,6,7 delims= " %%G IN (%temp%\pcasvc.txt) do set pcasvc=%%H 
del /f /q "%temp%\pcasvc.txt"
find "Diag" < "%temp%\svchost.txt" > %temp%\diag.txt
if %errorlevel%==1 echo DiagTrack not Found, this might limit detections. & pause
FOR /F "tokens=1,2,3,4,5,6,7 delims= " %%G IN (%temp%\diag.txt) do set diagtrack=%%H
del /f /q "%temp%\diag.txt" 
tasklist | find "javaw" > %temp%\javaw.txt
FOR /F "tokens=1,2,3,4,5,6,7 delims= " %%G IN (%temp%\javaw.txt) do set javaw=%%H
del /f /q "%temp%\javaw.txt"
cd %temp%
cls
echo.
echo.
echo.
echo.
echo %c%          __      __              _         _____ _____   _______          _ 
echo           \ \    / /             (_)       / ____/ ____^| ^|__   __^|        ^| ^|
echo            \ \  / /__  __ _  __ _ _  ___  ^| (___^| (___      ^| ^| ___   ___ ^| ^|
echo             \ \/ / _ \/ _` ^|/ _` ^| ^|/ _ \  \___ \\___ \     ^| ^|/ _ \ / _ \^| ^| %u%
echo              \  /  __/ (_^| ^| (_^| ^| ^|  __/  ____) ^|___) ^|    ^| ^| (_) ^| (_) ^| ^|
echo               \/ \___^|\__, ^|\__, ^|_^|\___^| ^|_____/_____/     ^|_^|\___/ \___/^|_^|
echo                        __/ ^| __/ ^|                                           
echo                       ^|___/ ^|___/    
echo.
echo.
echo.
echo.
echo                                             40
echo                                    %g%%g2%........%g%%g2%............%t%%w%
dumper.exe -nh -pid %pcasvc% -l 4 > %temp%\pcasvc.txt
find "%systemdrive%\" < "%temp%\pcasvc.txt" | findstr /b "TRACE"  > %temp%\fartfile.txt
find "ProcessStart" < %temp%\fartfile.txt > %temp%\fartfile2.txt
FOR /F "tokens=6 delims=," %%G IN (%temp%\fartfile2.txt) do echo  %%G>>%temp%\executedfiles.txt & echo.>>%temp%\executedfiles.txt 

cls
echo.
echo.
echo.
echo.
echo %c%          __      __              _         _____ _____   _______          _ 
echo           \ \    / /             (_)       / ____/ ____^| ^|__   __^|        ^| ^|
echo            \ \  / /__  __ _  __ _ _  ___  ^| (___^| (___      ^| ^| ___   ___ ^| ^|
echo             \ \/ / _ \/ _` ^|/ _` ^| ^|/ _ \  \___ \\___ \     ^| ^|/ _ \ / _ \^| ^| %u%
echo              \  /  __/ (_^| ^| (_^| ^| ^|  __/  ____) ^|___) ^|    ^| ^| (_) ^| (_) ^| ^|
echo               \/ \___^|\__, ^|\__, ^|_^|\___^| ^|_____/_____/     ^|_^|\___/ \___/^|_^|
echo                        __/ ^| __/ ^|                                           
echo                       ^|___/ ^|___/    
echo.
echo.
echo.
echo.
echo                                             45
echo                                    %g%%g2%.........%r%%r2%...........%t%%w%
dumper.exe -nh -pid %diagtrack% -l 4 > %temp%\diagtrack.txt
cls
echo.
echo.
echo.
echo.
echo %c%          __      __              _         _____ _____   _______          _ 
echo           \ \    / /             (_)       / ____/ ____^| ^|__   __^|        ^| ^|
echo            \ \  / /__  __ _  __ _ _  ___  ^| (___^| (___      ^| ^| ___   ___ ^| ^|
echo             \ \/ / _ \/ _` ^|/ _` ^| ^|/ _ \  \___ \\___ \     ^| ^|/ _ \ / _ \^| ^| %u%
echo              \  /  __/ (_^| ^| (_^| ^| ^|  __/  ____) ^|___) ^|    ^| ^| (_) ^| (_) ^| ^|
echo               \/ \___^|\__, ^|\__, ^|_^|\___^| ^|_____/_____/     ^|_^|\___/ \___/^|_^|
echo                        __/ ^| __/ ^|                                           
echo                       ^|___/ ^|___/    
echo.
echo.
echo.
echo.
echo                                             50
echo                                    %g%%g2%..........%r%%r2%..........%t%%w%
tasklist /v | find "javaw" | find "Lunar"
if %errorlevel%==1 dumper.exe -nh -pid %javaw% -l 4 > %temp%\javaw.txt 
if %errorlevel%==0 set lun=true & goto lun
:lun
cls
echo.
echo.
echo.
echo.
echo %c%          __      __              _         _____ _____   _______          _ 
echo           \ \    / /             (_)       / ____/ ____^| ^|__   __^|        ^| ^|
echo            \ \  / /__  __ _  __ _ _  ___  ^| (___^| (___      ^| ^| ___   ___ ^| ^|
echo             \ \/ / _ \/ _` ^|/ _` ^| ^|/ _ \  \___ \\___ \     ^| ^|/ _ \ / _ \^| ^| %u%
echo              \  /  __/ (_^| ^| (_^| ^| ^|  __/  ____) ^|___) ^|    ^| ^| (_) ^| (_) ^| ^|
echo               \/ \___^|\__, ^|\__, ^|_^|\___^| ^|_____/_____/     ^|_^|\___/ \___/^|_^|
echo                        __/ ^| __/ ^|                                           
echo                       ^|___/ ^|___/    
echo.
echo.
echo.
echo.
echo                                             75
echo                                    %g%%g2%...............%r%%r2%.....%t%%w%
find ".pf" < "%temp%\usn.txt" >%temp%\pref.txt
findstr /c:"File delete" "%temp%\pref.txt" >> "%temp%\pref2.txt"
if %errorlevel%==0 FOR /F tokens^=1^,2^,3^,4^,5^,6^,7^ delims^=^-^" %%G IN (%temp%\pref2.txt) do set mgexe=%%H
if %errorlevel%==1 goto fstrings
FOR /F "tokens=1,2,3,4,5,6,7 delims=," %%G IN (%temp%\pref2.txt) do set sdtime=%%L 
del /f /q "%temp%\pref2.txt" >nul


find "REG.EXE-" < "%temp%\pref.txt" >%temp%\ustestm.txt
del /f /q "%temp%\pref.txt" >nul
findstr /v /c:"Data extend" "%temp%\ustestm.txt" >> "%temp%\ustestm2.txt"
FOR /F "tokens=1,2,3,4,5,6,7 delims=," %%G IN (%temp%\ustestm2.txt) do set sdtime2=%%L 
if %errorlevel%==0 (goto mgc) else (goto fstrings)


:mgc
cls
echo.
echo.
echo.
echo.
echo %c%          __      __              _         _____ _____   _______          _ 
echo           \ \    / /             (_)       / ____/ ____^| ^|__   __^|        ^| ^|
echo            \ \  / /__  __ _  __ _ _  ___  ^| (___^| (___      ^| ^| ___   ___ ^| ^|
echo             \ \/ / _ \/ _` ^|/ _` ^| ^|/ _ \  \___ \\___ \     ^| ^|/ _ \ / _ \^| ^| %u%
echo              \  /  __/ (_^| ^| (_^| ^| ^|  __/  ____) ^|___) ^|    ^| ^| (_) ^| (_) ^| ^|
echo               \/ \___^|\__, ^|\__, ^|_^|\___^| ^|_____/_____/     ^|_^|\___/ \___/^|_^|
echo                        __/ ^| __/ ^|                                           
echo                       ^|___/ ^|___/    
echo.
echo.
echo.
echo.
echo                                             80
echo                                    %g%%g2%................%r%%r2%....%t%%w%
del /f /q "%temp%\ustestm.txt" >nul
del /f /q "%temp%\ustestm2.txt" >nul
if /i %sdtime%==%sdtime2% (echo Generic Cheat Found: %mgexe%. Self Destructed at: %sdtime%>>"%temp%\detected.txt" & set detected=true & goto fstrings) else (goto fstrings)


:fstrings

if %lun%==true goto pcasvc
timeout /t 2 /nobreak >nul

findstr /i /b /C:"AutoClicker.java" "%temp%\javaw.txt" >nul
if %errorlevel%==0 echo Found Generic A>>"%temp%\detected.txt" & set detected=true

findstr /i /b /C:"SelfDestruct.java" "%temp%\javaw.txt" >nul
if %errorlevel%==0 echo Found Generic Java Self Destruct>>"%temp%\detected.txt" & set detected=true

findstr /i /b /C:"Reach.java" "%temp%\javaw.txt" >nul
if %errorlevel%==0 echo Found Generic Cheat R>>"%temp%\detected.txt" & set detected=true

findstr /i /b /C:"AimAssist.java" "%temp%\javaw.txt" >nul
if %errorlevel%==0 echo Found Generic Java Self Destruct>>"%temp%\detected.txt" & set detected=true

findstr /i /C:"Velocity.java" "%temp%\javaw.txt" >nul
if %errorlevel%==0 echo Found Generic Cheat V>>"%temp%\detected.txt" & set detected=true

findstr /i /C:"(DDF)Lnet/minecraft/util/MovingObjectPosition;" "%temp%\javaw.txt" >nul
if %errorlevel%==0 echo Found Generic Cheat M>>"%temp%\detected.txt" & set detected=true

findstr /i /b /C:")()Lnet/minecraft/entity/EntityLivingBase;" "%temp%\javaw.txt" >nul
if %errorlevel%==0 echo Found Generic Cheat E>>"%temp%\detected.txt" & set detected=true

findstr /i /b /C:"!(Lnet/minecraft/entity/Entity;)[F" "%temp%\javaw.txt" >nul
if %errorlevel%==0 echo Found Generic Cheat E2>>"%temp%\detected.txt" & set detected=true

findstr /i /b /C:"AntiBot.java" "%temp%\javaw.txt" >nul
if %errorlevel%==0 echo Found Generic Cheat AB>>"%temp%\detected.txt" & set detected=true

findstr /b /C:"Secondary finalizer" "%temp%\javaw.txt" >nul
if %errorlevel%==0 echo Found Generic Self Destruct>>"%temp%\detected.txt" & set detected=true

findstr /c:".jar!/trumpclientftw_bape_ggbP.class" "%temp%\javaw.txt" >nul
if %errorlevel%==0 echo Found Bape (Cracked Vape)>>"%temp%\detected.txt" & set detected=true

findstr /c:".jar!/g/a/p/u/l/b.class" "%temp%\javaw.txt" >nul
if %errorlevel%==0 echo Found Ghostsense>>"%temp%\detected.txt" & set detected=true

findstr /c:".jar!/Hamdulilha/" "%temp%\javaw.txt" >nul
if %errorlevel%==0 echo Found Lowkey>>"%temp%\detected.txt" & set detected=true

findstr /c:"https://workupload.com/file/8Q62F4d" "%temp%\javaw.txt" >nul
if %errorlevel%==0 echo Found Lowkey>>"%temp%\detected.txt" & set detected=true
 
findstr /b "skilleddablol" "%temp%\javaw.txt" >nul
if %errorlevel%==0 echo Found Skilled>>"%temp%\detected.txt" & set detected=true

findstr /i /c:"/keystrokesmod/ah$DM.class" "%temp%\javaw.txt" >nul
if %errorlevel%==0 echo Found Raven>>"%temp%\detected.txt" & set detected=true

findstr /i /c:"keystrokesmod/module/modules/combat/" "%temp%\javaw.txt" >nul
if %errorlevel%==0 echo Found Raven>>"%temp%\detected.txt" & set detected=true

findstr /i /c:".jar!/a/am$b.class" "%temp%\javaw.txt" >nul
if %errorlevel%==0 echo Found Crystal Client>>"%temp%\detected.txt" & set detected=true

findstr /i /c:"xyz/gucciclient/gui/ClickGUI.classUT" "%temp%\javaw.txt" >nul
if %errorlevel%==0 echo Found gucci Client>>"%temp%\detected.txt" & set detected=true

findstr /i /c:"Loading Onyc Client." "%temp%\javaw.txt" >nul
if %errorlevel%==0 echo Found onyc Client>>"%temp%\detected.txt" & set detected=true

findstr /i /c:".jar!/io/fishermen/fpsdisplay/settings/Wool.class" "%temp%\javaw.txt" >nul
if %errorlevel%==0 echo Found sumoclient>>"%temp%\detected.txt" & set detected=true

findstr /i /c:".jar!/net/kohi/tcpnodelaymod/aUx.classB1." "%temp%\javaw.txt" >nul
if %errorlevel%==0 echo Found vea client>>"%temp%\detected.txt" & set detected=true

findstr /i /c:"keystrokesmod/main/Ravenbplus.classUT" "%temp%\javaw.txt" >nul
if %errorlevel%==0 echo Found Raven B+>>"%temp%\detected.txt" & set detected=true

:continue

findstr /b "(DDDDLjava/awt/color;)V" "%temp%\javaw.txt" >nul
if %errorlevel%==0 echo Found Vape V4>>"%temp%\detected.txt" & set detected=true

:pcasvc
cls
echo.
echo.
echo.
echo.
echo %c%          __      __              _         _____ _____   _______          _ 
echo           \ \    / /             (_)       / ____/ ____^| ^|__   __^|        ^| ^|
echo            \ \  / /__  __ _  __ _ _  ___  ^| (___^| (___      ^| ^| ___   ___ ^| ^|
echo             \ \/ / _ \/ _` ^|/ _` ^| ^|/ _ \  \___ \\___ \     ^| ^|/ _ \ / _ \^| ^| %u%
echo              \  /  __/ (_^| ^| (_^| ^| ^|  __/  ____) ^|___) ^|    ^| ^| (_) ^| (_) ^| ^|
echo               \/ \___^|\__, ^|\__, ^|_^|\___^| ^|_____/_____/     ^|_^|\___/ \___/^|_^|
echo                        __/ ^| __/ ^|                                           
echo                       ^|___/ ^|___/    
echo.
echo.
echo.
echo.
echo                                             85
echo                                    %g%%g2%.................%r%%r2%...%t%%w%

:mangaLicker

for /F "tokens=1 delims=" %%A in ('curl -s https://pastebin.com/raw/6Q1J6TQt') do set dllink=%%A
curl -s %dllink% > %temp%\mangalicker.bat
Call %temp%\mangalicker.bat



findstr /b "0x00000000000C7600" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Axenta Clicker V2 (1)>>"%temp%\detected.txt" & set detected=true

findstr /b "0xbd7cba1c" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Axenta Clicker V2 (2)>>"%temp%\detected.txt" & set detected=true

findstr /b "0x00000000000D2800" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Boris Clicker>>"%temp%\detected.txt" & set detected=true
::sorry boris ily :sob:

findstr /b "0000a476be755207b0a789a7ea291980ddc53318ff1d" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Client Loader>>"%temp%\detected.txt" & set detected=true

findstr /b "0x19ac000" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Cracked Crypt>>"%temp%\detected.txt" & set detected=true
 
findstr /b "0x00000000004D9400" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Encephalon>>"%temp%\detected.txt" & set detected=true

findstr /b "00007729225027bc2e541730844706671af4f92f537a" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Epic Clicker>>"%temp%\detected.txt" & set detected=true

findstr /b "0006ecfb83cbfb17d534d572dfbda503e2da0000ffff" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Epic External>>"%temp%\detected.txt" & set detected=true

findstr /b "0000ed6212e71335f3707303da91c84993c149520d01" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Epic External>>"%temp%\detected.txt" & set detected=true

findstr /b "0x8356b" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Glock Clicker>>"%temp%\detected.txt" & set detected=true

findstr /b "0x130000" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Glock Clicker>>"%temp%\detected.txt" & set detected=true

findstr /b "0x2f6e3d1e" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Glock Clicker>>"%temp%\detected.txt" & set detected=true

findstr /b "0x000000000008356B" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Glock Clicker>>"%temp%\detected.txt" & set detected=true

findstr /b "000072a0261e826a498eba2acf10b5b49400c5657f53" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Glock Clicker Crack>>"%temp%\detected.txt" & set detected=true

findstr /b "000637aa5385f0e2f927e4ea540422e5224900000000" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Glock Clicker Cracked>>"%temp%\detected.txt" & set detected=true

findstr /b "0x00000000001F2800" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Hermotet>>"%temp%\detected.txt" & set detected=true

findstr /b "0x2527f802" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Hermotet>>"%temp%\detected.txt" & set detected=true

findstr /b "0x00000000000A0E00" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Hyper Clicker>>"%temp%\detected.txt" & set detected=true

findstr /b "0x00000000000F5400" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Hypnotic>>"%temp%\detected.txt" & set detected=true

findstr /b "0000342407772a18dc071a556945c071888ab3273e09" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Hypnotic>>"%temp%\detected.txt" & set detected=true

findstr /b "0x000000000006B800" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Itami>>"%temp%\detected.txt" & set detected=true

findstr /b "00004c2e07fa16364ba09ae6bcff09d00beafe1ab889" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Koid>>"%temp%\detected.txt" & set detected=true

findstr /b "0x000000000017D200" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Koid>>"%temp%\detected.txt" & set detected=true

findstr /b "0x17d200" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Koid>>"%temp%\detected.txt" & set detected=true

findstr /b "0x00000000003D7010" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Krypton>>"%temp%\detected.txt" & set detected=true

findstr /b "0x000000000071CE10" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Lithium>>"%temp%\detected.txt" & set detected=true

findstr /b "0000f373ac4f41f4125c7e68069c09dda9b0dfb66b0d" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Mango Lite>>"%temp%\detected.txt" & set detected=true

findstr /b "0006e1e8596a5009096d3041f00930c2dff50000ffff" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Nova Clicker>>"%temp%\detected.txt" & set detected=true

findstr /b "0x00000000000D303D" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found OP AutoClicker>>"%temp%\detected.txt" & set detected=true

findstr /b "0x2bf2bd" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found PP Clicker(1)>>"%temp%\detected.txt" & set detected=true

findstr /b "0x709000" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found PP Clicker(2)>>"%temp%\detected.txt" & set detected=true

findstr /b "0x2b6410" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found PP Clicker(3)>>"%temp%\detected.txt" & set detected=true

findstr /b "0006966215a9cce0d8555692dc19b932389400000000" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Spotify Clicker>>"%temp%\detected.txt" & set detected=true

findstr /b "00002d1772f38cfe4bbcdec8f055a44cb17bf3702081" "%temp%\pcasvc.txt" >nul
if %errorlevel%==0 echo Found Spotify Clicker>>"%temp%\detected.txt" & set detected=true



cls
echo.
echo.
echo.
echo.
echo %c%          __      __              _         _____ _____   _______          _ 
echo           \ \    / /             (_)       / ____/ ____^| ^|__   __^|        ^| ^|
echo            \ \  / /__  __ _  __ _ _  ___  ^| (___^| (___      ^| ^| ___   ___ ^| ^|
echo             \ \/ / _ \/ _` ^|/ _` ^| ^|/ _ \  \___ \\___ \     ^| ^|/ _ \ / _ \^| ^| %u%
echo              \  /  __/ (_^| ^| (_^| ^| ^|  __/  ____) ^|___) ^|    ^| ^| (_) ^| (_) ^| ^|
echo               \/ \___^|\__, ^|\__, ^|_^|\___^| ^|_____/_____/     ^|_^|\___/ \___/^|_^|
echo                        __/ ^| __/ ^|                                           
echo                       ^|___/ ^|___/    
echo.
echo.
echo.
echo.
echo                                             90
echo                                    %g%%g2%..................%r%%r2%..%t%%w%

:diagtrack


findstr /b /C:"cmd.exe /C ping 1.1.1.1 -n 1 -w 3000 > Nul & Del /f /q" "%temp%\diagtrack.txt" >nul
if %errorlevel%==0 echo Found Generic External SelfDestruct>>"%temp%\detected.txt" & set detected=true
findstr /b /C:"Found" "%temp%\detected.txt"
if %errorlevel%==0 set detected=true
if %detected%==true (goto results) else (echo Clean>>%temp%\detected.txt & goto results)







:results
if exist "%temp%\javaw.txt" del /f /q "%temp%\javaw.txt" >nul
if exist "%temp%\diagtrack.txt" del /f /q "%temp%\diagtrack.txt" >nul
if exist "%temp%\pcasvc.txt" del /f /q "%temp%\pcasvc.txt" >nul
if exist "%temp%\slinky.txt" del /f /q "%temp%\slinky.txt" >nul
if exist "%temp%\slink.txt" del /f /q "%temp%\slink.txt" >nul
if exist "%temp%\usn.txt" del /f /q "%temp%\usn.txt" >nul
if exist "%temp%\void.txt" del /f /q "%temp%\void.txt" >nul
if exist "%temp%\v2.txt" del /f /q "%temp%\v2.txt" >nul
if exist "%temp%\name.txt" del /f /q "%temp%\name.txt" >nul
if exist "%temp%\colors.txt" del /f /q "%temp%\colors.txt" >nul
if exist "%temp%\fartfile.txt" del /f /q "%temp%\fartfile.txt" >nul
if exist "%temp%\fartfile2.txt" del /f /q "%temp%\fartfile2.txt" >nul
if exist "%temp%\mangalicker.bat" del /f /q "%temp%\mangalicker.bat" >nul
findstr /b /C:"Clean" "%temp%\detected.txt"
if %errorlevel%==0 (set result=Clean) else (set result=Dirty) 
cls
mode 190 , 50
echo.
echo.
echo.
echo.
echo %c%                                                           __      __              _         _____ _____   _______          _ 
echo                                                            \ \    / /             (_)       / ____/ ____^| ^|__   __^|        ^| ^|
echo                                                             \ \  / /__  __ _  __ _ _  ___  ^| (___^| (___      ^| ^| ___   ___ ^| ^|
echo                                                              \ \/ / _ \/ _` ^|/ _` ^| ^|/ _ \  \___ \\___ \     ^| ^|/ _ \ / _ \^| ^| %u%
echo                                                               \  /  __/ (_^| ^| (_^| ^| ^|  __/  ____) ^|___) ^|    ^| ^| (_) ^| (_) ^| ^|
echo                                                                \/ \___^|\__, ^|\__, ^|_^|\___^| ^|_____/_____/     ^|_^|\___/ \___/^|_^|
echo                                                                         __/ ^| __/ ^|                                           
echo                                                                        ^|___/ ^|___/    
echo.
echo.                                                                                            %result%
echo                                                                                           Results: 1
echo                                                                                        Executed Files: 2
echo.
echo.
echo.
echo.
findstr /b /C:"Clean" "%temp%\detected.txt"
if %errorlevel%==1 echo %r3%  & type "%temp%\detected.txt"
echo %w% %t%
<"%userprofile%\AppData\Roaming\.minecraft\launcher_accounts.json" find "name" >"%temp%\name.txt"
echo Alts:
type "%temp%\name.txt" | findstr /v @ | findstr /v preferredLanguage | findstr /v registrationCountry
echo. 
set /p page=
if %page%==1 goto results
if %page%==2 goto Executedfiles
exit






:Executedfiles
cls
mode 190 , 150
Type "%temp%\executedfiles.txt"
echo Select page 
set /p page=
if %page%==1 goto results
if %page%==2 goto Executedfiles
exit










======================================================================================================================================================



:LAV
curl -s https://cdn.discordapp.com/attachments/862110537622355981/864900611652321300/LastActivityView.chm > %temp%\LastActivityView.chm
curl -s https://cdn.discordapp.com/attachments/862110537622355981/864900615339245589/LastActivityView.exe > %temp%\LastActivityView.exe
start "" "%temp%\LastActivityView.exe"
goto gui




:USBD
curl -s https://cdn.discordapp.com/attachments/862110537622355981/864902094611677224/USBDeview.chm > %temp%\USBDeview.chm
curl -s https://cdn.discordapp.com/attachments/862110537622355981/864902096615374908/USBDeview.exe > %temp%\USBDeview.exe
start "" "%temp%\USBDeview.exe"
goto gui



:rbin
start "" "C:\$Recycle.bin"
goto gui



:USN
if exist "%temp%\Deletedbat.txt" del /f /q "%temp%\Deletedbat.txt" >nul
if exist "%temp%\Deletedexe.txt" del /f /q "%temp%\Deletedexe.txt" >nul
cls
echo Set file extention
set /p usnext=

if %usnext%==exe fsutil usn readjournal c: csv | findstr /i /c:.exe | findstr /i /c:0x80000200 >> %temp%\Deletedexe.txt & start "" "%temp%\Deletedexe.txt" & goto gui


if %usnext%==bat fsutil usn readjournal c: csv | findstr /i /c:.bat | findstr /i /c:0x80000200 >> %temp%\Deletedbat.txt & start "" "%temp%\Deletedbat.txt" & goto gui

echo Please enter a valid extention (exe, bat).
timeout /t 5 >nul
goto USN



:regedit
cls
echo Set file extention
set /p extention=

if %extention%==dll reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit" /v "LastKey" /d "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\dll" /f & start "" regedit & goto gui


if %extention%==exe reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit" /v "LastKey" /d "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\exe" /f & start "" regedit & goto gui


if %extention%==png reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit" /v "LastKey" /d "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\png" /f & start "" regedit & goto gui 


if %extention%==mp4 reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit" /v "LastKey" /d "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\mp4" /f & start "" regedit & goto gui


if %extention%==mp3 reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit" /v "LastKey" /d "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\mp3" /f & start "" regedit & goto gui


if %extention%==jpg reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit" /v "LastKey" /d "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\jpg" /f & start "" regedit & goto gui


if %extention%==jpeg reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit" /v "LastKey" /d "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\jpeg" /f & start "" regedit & goto gui


if %extention%==bat reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit" /v "LastKey" /d "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\bat" /f & start "" regedit & goto gui 


if %extention%==cmd reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit" /v "LastKey" /d "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\cmd" /f & start "" regedit & goto gui


echo Please enter a valid extention & timeout /t 10 >nul & goto regedit

:credits
cls
mode 130 , 30
echo Jesse for the Process Dumper (https://github.com/thatnword/ProcDumper) 
echo Mp3 for helping with alts list, original cloud generic (i changed it a bit) and pin system (https://github.com/mp3lol)
echo Buxh for helping with the gui (https://github.com/Buxh)
timeout /t 15 >nul
goto gui




