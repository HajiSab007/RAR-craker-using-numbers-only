@echo off
color B

mode con: cols=59 lines=35
title Rar Cracker BY - Haji Sab
copy "C:\Program Files\WinRAR\Unrar.exe" 
SET PASS=0
SET TMP=TempFold
MD %TMP%
:RAR
color 4
chcp 437
chcp 65001
cls
echo [--------------------------------------------------------]
echo.                          [38;2;255;0;0m`[0m                      
echo                            [38;2;255;0;0m+.`/`[0m                 
echo                [38;2;255;0;0m/+/omhomh+-smohh-[0m                     
echo             [38;2;255;51;0m:+oyNNNNNNNNNNNNNdmNy-[0m                   
echo            [38;2;255;51;0m`+mNNNmy++//+shmNNNNNNNh:[0m
echo           [38;2;255;51;0m-yNNNd:         `:ymNNNNmmh.[0m               
echo           [38;2;255;102;0m:mNNN-             .sNNNmsdd-[0m              
echo          [38;2;255;102;0m`/hNNN`               :dNNNNNm-[0m             
echo            [38;2;255;102;0m`mmNNy`                -odNNNo`[0m           
echo            [38;2;255;102;0m`.:NNNd/                  :hNNmo-[0m         
echo               [38;2;255;153;0mo/ymNdo.                 oNNm:[0m         
echo                  [38;2;255;153;0m`/ymNds:`             :h+.[0m          
echo                      [38;2;255;153;0m-+sdNds/`[0m                     
echo                          [38;2;255;204;0m`:odmy:[0m                       
echo                              [38;2;255;204;0m.+dh.[0m                   
echo                                 [38;2;255;204;0m/d-[0m                  
echo                                  [38;2;255;255;0m.h[0m                    
echo                                    [38;2;255;255;0m:[0m            	
call colorchar.exe /4 "[--------------------------------------------------------]"
call colorchar.exe /0b  "        WIN RAR Craker"
echo.
call colorchar.exe /0e   "       Developed By  Haji Sab"
echo. 
call colorchar.exe /4 "[--------------------------------------------------------]"
	echo.
	
	
echo.
echo.
echo.
SET/P "NAME=Enter the name of the file  : "
IF "%NAME%"=="" goto NERROR
chcp 437
chcp 65001
cls
goto GPATH

:NERROR
echo [============================================]
echo               Rar-Password-Cracker
echo [============================================]
echo Sorry you can't leave it blank.
pause
chcp 437
chcp 65001
goto RAR

:GPATH
SET/P "PATH=Enter the address of the file : "
IF "%PATH%"=="" goto PERROR

goto NEXT
:PERROR
echo [==============================================]
echo               Rar-Password-Cracker
echo [==============================================]
echo Sorry you can't leave it blank.
pause

goto RAR
:NEXT
IF EXIST "%PATH%\%NAME%" GOTO SP

goto PATH

:PATH

cls

color 4
echo.
echo   ███████╗██████╗ ██████╗  ██████╗ ██████╗ 
echo   ██╔════╝██╔══██╗██╔══██╗██╔═══██╗██╔══██╗
echo   █████╗  ██████╔╝██████╔╝██║   ██║██████╔╝
echo   ██╔══╝  ██╔══██╗██╔══██╗██║   ██║██╔══██╗
echo   ███████╗██║  ██║██║  ██║╚██████╔╝██║  ██║
echo   ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝
echo.
echo.
echo.
echo The file was not found, please 
echo pay more attention ...
echo.
echo. 
pause
goto RAR
:SP
echo.
echo  ██████╗██████╗  █████╗ ██╗  ██╗██╗███╗   ██╗ ██████╗                      
echo ██╔════╝██╔══██╗██╔══██╗██║ ██╔╝██║████╗  ██║██╔════╝                      
echo ██║     ██████╔╝███████║█████╔╝ ██║██╔██╗ ██║██║  ███╗                     
echo ██║     ██╔══██╗██╔══██║██╔═██╗ ██║██║╚██╗██║██║   ██║                     
echo ╚██████╗██║  ██║██║  ██║██║  ██╗██║██║ ╚████║╚██████╔╝    ██╗    ██╗    ██╗
echo  ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝     ╚═╝    ╚═╝    ╚═╝
echo. 
:START
title Cracking Password...
SET /A PASS=%PASS%+1
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%
UNRAR E -INUL -P%PASS% "%PATH%\%NAME%" "%TMP%"
IF /I %ERRORLEVEL% EQU 0 GOTO FINISH
GOTO START
:FINISH
RD %TMP% /Q /S
Del "Unrar.exe" 
cls
title Password Found
color A

echo.
echo.
echo ███████╗██╗   ██╗ ██████╗ ██████╗███████╗███████╗███████╗
echo ██╔════╝██║   ██║██╔════╝██╔════╝██╔════╝██╔════╝██╔════╝
echo ███████╗██║   ██║██║     ██║     █████╗  ███████╗███████╗
echo ╚════██║██║   ██║██║     ██║     ██╔══╝  ╚════██║╚════██║
echo ███████║╚██████╔╝╚██████╗╚██████╗███████╗███████║███████║
echo ╚══════╝ ╚═════╝  ╚═════╝ ╚═════╝╚══════╝╚══════╝╚══════╝
echo.
echo FILE  = %NAME%
echo PASSWORD = %PASS%
pause>NUL
exit
