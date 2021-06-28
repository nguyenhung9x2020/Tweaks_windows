@echo off
color 1F
mode con cols=98 lines=30
title Change DNS Using Batch by ZENTALK-VN.

:Primary
cls
echo.      
echo.                 
echo.                     _________________________________________________________
echo.                    ^|              TOOL BUILD BY ZENTALK-VN 1.0               ^|
Echo.                    ^|                                                         ^|
Echo.                    ^|   [1] CHANGE DNS GOOGLE                                 ^|
Echo.                    ^|                                                         ^|
Echo.                    ^|   [2] CHANGE DNS Singapore                              ^|  
Echo.                    ^|                                                         ^|
Echo.                    ^|   [3] CHANGE DNS Cloudflare                             ^|
Echo.                    ^|                                                         ^|
Echo.                    ^|   [4] EXIT                                              ^|
Echo.                    ^|                                       Nguyenhung9xdev   ^|
Echo.                    ^|_________________________________________________________^|
ECHO.            
set /p a=
if "%a%" == "1" goto :google
if "%a%" == "2" goto :Singapore
if "%a%" == "3" goto :cloudflare
if "%a%" == "4" goto :exit
cls

:google
color 1F
mode con cols=98 lines=30
netsh interface ipv4 set dns name="Wi-Fi" source=static addr=8.8.8.8 register=PRIMARY
netsh interface ipv4 add dns name="Wi-Fi" addr=8.8.4.4 index=2
netsh interface ipv4 set dns name="Ethernet" source=static addr=8.8.8.8 register=PRIMARY
netsh interface ipv4 add dns name="Ethernet" addr=8.8.4.4 index=2
echo The Operation Succes, Would You Like To Exit? (Yes Or No)
set /p a=
if "%a%" == "Yes" goto :exit
if "%a%" == "No" goto :Primary

:Singapore
color 1F
mode con cols=98 lines=30
netsh interface ipv4 set dns name="Wi-Fi" source=static addr=165.21.83.88 register=PRIMARY
netsh interface ipv4 add dns name="Wi-Fi" addr=165.21.100.88 index=2
netsh interface ipv4 set dns name="Ethernet" source=static addr=165.21.83.88 register=PRIMARY
netsh interface ipv4 add dns name="Ethernet" addr=165.21.100.88 index=2
echo The Operation Succes, Would You Like To Exit? (Yes Or No)
set /p a=
if "%a%" == "Yes" goto :exit
if "%a%" == "No" goto :Primary

:cloudflare
color 1F
mode con cols=98 lines=30
netsh interface ipv4 set dns name="Wi-Fi" source=static addr=1.1.1.1 register=PRIMARY
netsh interface ipv4 add dns name="Wi-Fi" addr=1.0.0.1 index=2
netsh interface ipv4 set dns name="Ethernet" source=static addr=1.1.1.1 register=PRIMARY
netsh interface ipv4 add dns name="Ethernet" addr=1.0.0.1 index=2
echo The Operation Succes, Would You Like To Exit? (Yes Or No)
set /p a=
if "%a%" == "Yes" goto :exit
if "%a%" == "No" goto :Primary