@echo off
color f0
title Cleaner
mode 63,12
set ok=0

:deb

echo ______________________________________________ >cleanerinfo.txt
echo. >>cleanerinfo.txt
echo         Cleaning Info - Diagnostique. >>cleanerinfo.txt
echo. >>cleanerinfo.txt
echo ______________________________________________ >>cleanerinfo.txt
echo.>>cleanerinfo.txt
echo.>>cleanerinfo.txt

:UP_BAR
cls
set /a FULL = FULL + 1
if "%ok%"=="0" if %FULL% LEQ 100 set BAR=%BAR%Û
set /a NB_BAR = NB_BAR + 1
if "%ok%"=="0" set ok=1&goto no
if "%ok%"=="1" set ok=0

:no
echo.
echo.
echo        Scanning .... %NB_BAR%%%
echo      ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo       %BAR%
echo       %BAR%
echo      ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo.
if "%FULL%"=="100" goto END_BAR
if "%FULL%"=="1" goto recent
if "%FULL%"=="6" goto temporaire
if "%FULL%"=="15" goto prefetch
if "%FULL%"=="30" goto defender
if "%FULL%"=="50" goto flash_player
if "%FULL%"=="60" goto mozilla
if "%FULL%"=="75" goto cookies
if "%FULL%"=="90" goto internet

goto :UP_BAR

:END_BAR
echo. >fin.txt
timeout /t 5 /NOBREAK >nul
del /Q fin.txt
del /Q cleanerinfo.txt
exit



:recent

timeout /T 1 /NOBREAK >nul
echo.>>cleanerinfo.txt
echo.>>cleanerinfo.txt
echo.>>cleanerinfo.txt
echo ===========================================>>cleanerinfo.txt
echo ^|              Fichier Recent.           ^|>>cleanerinfo.txt
echo ===========================================>>cleanerinfo.txt
echo.>>cleanerinfo.txt

for /F "delims=" %%A in ('dir /B "%appdata%\Microsoft\Windows\Recent"') do (
del /Q /S /F "%appdata%\Microsoft\Windows\Recent\%%A" >nul
if exist "%appdata%\Microsoft\Windows\Recent\%%A" echo ^|%%A - [Verrouille]>>cleanerinfo.txt
if not exist "%appdata%\Microsoft\Windows\Recent\%%A" echo ^|%%A - [Supprime]>>cleanerinfo.txt
)


for /F "delims=" %%B in ('dir /B /A:D "%appdata%\Microsoft\Windows\Recent"') do (
rd "%appdata%\Microsoft\Windows\Recent\%%B" >nul
if exist "%appdata%\Microsoft\Windows\Recent\%%B" echo ^|%%B - [Verrouille]>>cleanerinfo.txt
if not exist "%appdata%\Microsoft\Windows\Recent\%%B" echo ^|%%B - [Supprime]>>cleanerinfo.txt
)

goto UP_BAR


:temporaire
timeout /T 1 /NOBREAK >nul



echo.>>cleanerinfo.txt
echo.>>cleanerinfo.txt
echo.>>cleanerinfo.txt
echo ===========================================>>cleanerinfo.txt
echo ^|            Fichier Temporaire.         ^|>>cleanerinfo.txt
echo ===========================================>>cleanerinfo.txt
echo.>>cleanerinfo.txt



for /F "delims=" %%A in ('dir /B "%tmp%"') do (
del /Q /S /F "%tmp%\%%A" >nul
if exist "%tmp%\%%A" echo ^|%%A - [Verrouille]>>cleanerinfo.txt
if not exist "%tmp%\%%A" echo ^|%%A - [Supprime]>>cleanerinfo.txt
)

for /F "delims=" %%B in ('dir /B /A:D "%tmp%"') do (
rd "%tmp%\%%B" >nul
if exist "%tmp%\%%B" echo ^|%%B - [Verrouille]>>cleanerinfo.txt
if not exist "%tmp%\%%B" echo ^|%%B - [Supprime]>>cleanerinfo.txt
)



for /F "delims=" %%A in ('dir /B "%windir%\Temp"') do (
del /Q /S /F "%windir%\Temp\%%A" >nul
if exist "%windir%\Temp\%%A" echo ^|%%A - [Verrouille]>>cleanerinfo.txt
if not exist "%windir%\Temp\%%A" echo ^|%%A - [Supprime]>>cleanerinfo.txt
)

for /F "delims=" %%B in ('dir /B /A:D "%windir%\Temp"') do (
rd "%windir%\Temp\%%B" >nul
if exist "%windir%\Temp\%%B" echo ^|%%B - [Verrouille]>>cleanerinfo.txt
if not exist "%windir%\Temp\%%B" echo ^|%%B - [Supprime]>>cleanerinfo.txt
)


goto UP_BAR


:internet
timeout /T 1 /NOBREAK >nul

echo.>>cleanerinfo.txt
echo.>>cleanerinfo.txt
echo.>>cleanerinfo.txt
echo ===========================================>>cleanerinfo.txt
echo ^|             Fichier Internet           ^|>>cleanerinfo.txt
echo ===========================================>>cleanerinfo.txt
echo.>>cleanerinfo.txt


for /F "delims=" %%A in ('dir /B "%systemdrive%\Documents and Settings\%username%\Local Settings\Temporary Internet Files"') do (
del /Q /S /F "%systemdrive%\Documents and Settings\%username%\Local Settings\Temporary Internet Files\%%A" >nul
if exist "%systemdrive%\Documents and Settings\%username%\Local Settings\Temporary Internet Files\%%A" echo ^|%%A - [Verrouille]>>cleanerinfo.txt
if not exist "%systemdrive%\Documents and Settings\%username%\Local Settings\Temporary Internet Files\%%A" echo ^|%%A - [Supprime]>>cleanerinfo.txt
)


goto UP_BAR



:cookies
timeout /T 1 /NOBREAK >nul


echo.>>cleanerinfo.txt
echo.>>cleanerinfo.txt
echo.>>cleanerinfo.txt
echo ===========================================>>cleanerinfo.txt
echo ^|             Windows Cookies            ^|>>cleanerinfo.txt
echo ===========================================>>cleanerinfo.txt
echo.>>cleanerinfo.txt

for /F "delims=" %%A in ('dir /B "%userprofile%\Cookies"') do (
del /Q /S /F "%userprofile%\Cookies\%%A" >nul
if exist "%userprofile%\Cookies\%%A" echo ^|%%A - [Verrouille]>>cleanerinfo.txt
if not exist "%userprofile%\Cookies\%%A" echo ^|%%A - [Supprime]>>cleanerinfo.txt
)


for /F "delims=" %%A in ('dir /B "%systemdrive%\Documents and Settings\%username%\Cookies"') do (
del /Q /S /F "%systemdrive%\Documents and Settings\%username%\Cookies\%%A" >nul
if exist "%systemdrive%\Documents and Settings\%username%\Cookies\%%A" echo ^|%%A - [Verrouille]>>cleanerinfo.txt
if not exist "%systemdrive%\Documents and Settings\%username%\Cookies\%%A" echo ^|%%A - [Supprime]>>cleanerinfo.txt
)


goto UP_BAR




:prefetch
timeout /T 1 /NOBREAK >nul

echo.>>cleanerinfo.txt
echo.>>cleanerinfo.txt
echo.>>cleanerinfo.txt
echo ===========================================>>cleanerinfo.txt
echo ^|            Fichier prefetch            ^|>>cleanerinfo.txt
echo ===========================================>>cleanerinfo.txt
echo.>>cleanerinfo.txt


for /F "delims=" %%A in ('dir /B "%windir%\prefetch\*.pf"') do (
del /Q /S /F "%windir%\prefetch\%%A" >nul
if exist "%windir%\prefetch\%%A" echo ^|%%A - [Verrouille]>>cleanerinfo.txt
if not exist "%windir%\prefetch\%%A" echo ^|%%A - [Supprime]>>cleanerinfo.txt
)

goto UP_BAR




:mozilla
timeout /T 1 /NOBREAK >nul
for /f "delims=" %%a in ('dir /B /A:D "%localappdata%\Mozilla\Firefox\Profiles"') do (
  set profile=%localappdata%\Mozilla\Firefox\Profiles\%%a
  set prof=%%a
  )
  
echo.>>cleanerinfo.txt
echo.>>cleanerinfo.txt
echo.>>cleanerinfo.txt
echo ===========================================>>cleanerinfo.txt
echo ^|             Fichier Mozilla            ^|>>cleanerinfo.txt
echo ===========================================>>cleanerinfo.txt
echo.>>cleanerinfo.txt
  
  set var=%*
for /f "delims=" %%a in ('dir /B "%profile%\%var%\"') do ( 
  del /F /S /Q "%profile%\%var%\%%a" >nul
  if exist "%profile%\%var%\%%a" (echo  ^|%profile%\%var%\%%a - [Verrouille]>>cleanerinfo.txt) else (echo  ^|%profile%\%var%\%%a - [Supprime]>>cleanerinfo.txt))
  )
  del /Q /S /F "%appdata%\Mozilla\Firefox\Profiles\%prof%\downloads.sqlite" >nul
  
  
  goto UP_BAR
  
  
  
  :defender
  timeout /T 1 /NOBREAK >nul
  echo.>>cleanerinfo.txt
echo.>>cleanerinfo.txt
echo.>>cleanerinfo.txt
echo ===========================================>>cleanerinfo.txt
echo ^|            Fichier defender            ^|>>cleanerinfo.txt
echo ===========================================>>cleanerinfo.txt
echo.>>cleanerinfo.txt
  
for /F "delims=" %%A in ('dir /B "%programdata%\Microsoft\Windows Defender\Scans\History\Results\Resource"') do (
del /Q /S /F "%programdata%\Microsoft\Windows Defender\Scans\History\Results\Resource\%%A" >nul
if exist "%programdata%\Microsoft\Windows Defender\Scans\History\Results\Resource\%%A" echo ^|%%A - [Verrouille]>>cleanerinfo.txt
if not exist "%programdata%\Microsoft\Windows Defender\Scans\History\Results\Resource\%%A" echo ^|%%A - [Supprime]>>cleanerinfo.txt
)
  
  
  
  goto UP_BAR
  
  
  
  
  :flash_player
  timeout /T 1 /NOBREAK >nul
    echo.>>cleanerinfo.txt
echo.>>cleanerinfo.txt
echo.>>cleanerinfo.txt
echo ===========================================>>cleanerinfo.txt
echo ^|           Fichier FlashPlayer          ^|>>cleanerinfo.txt
echo ===========================================>>cleanerinfo.txt
echo.>>cleanerinfo.txt

for /F "delims=" %%A in ('dir /B "%appdata%\Macromedia\Flash Player\#SharedObjects"') do (
del /Q /S /F "%appdata%\Macromedia\Flash Player\#SharedObjects\%%A" >nul
if exist "%appdata%\Macromedia\Flash Player\#SharedObjects\%%A" echo ^|%%A - [Verrouille]>>cleanerinfo.txt
if not exist "%appdata%\Macromedia\Flash Player\#SharedObjects\%%A" echo ^|%%A - [Supprime]>>cleanerinfo.txt
)

for /F "delims=" %%B in ('dir /B /A:D "%appdata%\Macromedia\Flash Player\macromedia.com\support\flashplayer\sys"') do (
rd "%appdata%\Macromedia\Flash Player\macromedia.com\support\flashplayer\sys\%%B" >nul
if exist "%appdata%\Macromedia\Flash Player\macromedia.com\support\flashplayer\sys\%%B" echo ^|%%B - [Verrouille]>>cleanerinfo.txt
if not exist "%appdata%\Macromedia\Flash Player\macromedia.com\support\flashplayer\sys\%%B" echo ^|%%B - [Supprime]>>cleanerinfo.txt
)


goto UP_BAR




  
  
  
  
  
  
  
  
  
