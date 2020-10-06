@echo off
title *** Automatizacao ***
echo.
echo.

REM menu inicial


:choice0
:start
echo   --- Nenu de Interacao ---
echo ==================================
echo.
echo 1: Versao do Windows
echo 2: Detalhes do Windows
echo 3: Sair
echo 4: Informacao do Hardware
echo 5: Relatorio de bateria
echo 6: Test automatic - net/casa
echo 7: Outras info da maquina
echo 8: 
echo.
echo ==================================
echo.
echo Escolha uma opcao
set /p choice=
echo.
if '%choice%'=='0' goto :choice0
if '%choice%'=='1' goto :choice1
if '%choice%'=='2' goto :choice2
if '%choice%'=='3' goto :choice3
if '%choice%'=='4' goto :choice4
if '%choice%'=='5' goto :choice5
if '%choice%'=='6' goto :choice6
if '%choice%'=='7' goto :choice7
if '%choice%'=='8' goto :choice8
if '%choice%' GEQ 9 goto :choice9
echo "%choice%" is not a valid option. Please try again.
echo.
goto end


REM opcao 1 do menu com ping

:choice1
echo.
:start
echo --------------------
echo 1: Versao do Windows
echo --------------------
echo.
wmic os get buildnumber,caption,CSDVersion
ver
echo.
wmic OS get OSArchitecture
winver
echo.
echo -- Teste concluido --
echo.
echo 0: Menu de interacao
echo 3: Sair
echo.
set /p var=Escolha uma das opcoes acima: 
echo. 
if %var%== 0 goto :choice0
if not %var%== 3 :choice3


REM opcao detalhes windows

:choice2
echo.
:start
echo ----------------------
echo 2: Detalhes do Windows
echo ----------------------
echo.
systeminfo
echo.
echo -- Teste concluido --
echo.
echo 0: Menu de interacao
echo 3: Sair
echo.
set /p var=Escolha uma das opcoes acima: 
echo. 
if %var%== 0 goto :choice0
if not %var%== 3 :choice3

REM opcao para sair do pront

:choice3
echo 3: Saindo do Pront
echo.
exit
goto end

REM info do hardware

:choice4
echo.
:start
echo ----------------------
echo 4: Info do Hardware
echo ----------------------
echo.
wmic baseboard get product,Manufacturer,version,serialnumber
echo.
echo -- Teste concluido --
echo.
echo 0: Menu de interacao
echo 3: Sair
echo.
set /p var=Escolha uma das opcoes acima: 
echo. 
if %var%== 0 goto :choice0
if not %var%== 3 :choice3


REM opcao usar navegador

:choice5
echo.
:start
echo -----------------------
echo 5: Relatorio de bateria
echo -----------------------
echo.
powercfg /batteryreport
move battery-report.html D:\scripts\Relatorios\
echo.
echo -- Teste concluido --
echo.
echo 0: Menu de interacao
echo 3: Sair
echo.
set /p var=Escolha uma das opcoes acima: 
echo. 
if %var%== 0 goto :choice0
if not %var%== 3 :choice3


REM opcao teste notebook


:choice6
echo.
start D:\scripts\test.bat
echo.
echo -- Verificar o novo bat --
echo.
echo 0: Menu de interacao
echo 3: Sair
echo.
set /p var=Escolha uma das opcoes acima: 
echo. 
if %var%== 0 goto :choice0
if not %var%== 3 :choice3



REM opcao teste celulares

:choice7
echo 7: Outras info do windows e maquina
echo.
C:\Windows\System32\cmd.exe /k %windir%\system32\ipconfig.exe
echo.
C:\Windows\System32\msinfo32.exe
echo.
echo -- Teste concluido --
echo.
echo 0: Menu de interacao
echo 3: Sair
echo.
set /p var=Escolha uma das opcoes acima: 
echo. 
if %var%== 0 goto :choice0
if not %var%== 3 :choice3


REM teste de DNS

:choice8
echo 8: Consulta de DNS e teste
echo.
nslookup
echo.
echo Obs: Digite o site no >
echo Apos a conclusão digite 'exit'
echo.
echo -- Teste concluido --
echo.
echo 0: Menu de interacao
echo 3: Sair
echo.
set /p var=Escolha uma das opcoes acima: 
echo. 
if %var%== 0 goto :choice0
if not %var%== 3 :choice3

REM  Opcao invalida

:choice9
echo.
echo ===============================================
echo * Opcao Invalida! Escolha outra opcao do menu *
echo ===============================================
echo.
pause 
goto choice0


:end
pause