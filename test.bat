@echo off
title *** Testes de Conectividade ***
:ping
echo *** Executando o Ping x40 para o IP da seanet ***
echo.
ping -n 40 186.251.248.1
echo.
echo -------------------------------------------------
echo.
echo %date%   %time%
echo Computador: %computername%   Usuario: %username%
echo.
echo -- Teste concluido --
echo.
echo -------------------------------------------------
echo.

REM teste inicial de PING

REM grade de opcao

:choice0
:start
echo   --- Nenu de Interacao ---
echo ==================================
echo.
echo 1: Testar novamente o Ping
echo 2: Teste com ping infinito
echo 3: Sair
echo 4: TraceRoute no IP da senaet
echo 5: Abrir o Chrome para testes
echo 6: Conectividade dos not
echo 7: Conectividade - Smartphones
echo 8: Consulta de DNS e teste de site
echo 9: Testar com Pathping a rede
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
if '%choice%'=='9' goto :choice9
if '%choice%' GEQ 10 goto :choice10
echo "%choice%" is not a valid option. Please try again.
echo.
goto end


REM opcao 1 do menu com ping

:choice1
echo.
:ping
echo 1: Testando novamente o Ping
ping -n 50 186.251.248.1
echo.
echo 1.1: Data e hora do teste
echo.
echo %date%  %time%
echo Computador: %computername%   Usuario: %username%
echo.
echo -- Teste concluido --
echo.
echo 0: Menu de interacao
echo 1: Testar novamente o Ping
echo 3: Sair
echo.
set /p var=Escolha uma das opcoes acima: 
echo. 
if %var%== 0 goto :choice0
if %var%== 1 goto :choice1
if not %var%== 3 :choice3


REM opcao 2 ping -t

:choice2
echo 2: Testando ping com -t
echo.
:ping
echo 1: Ping
ping 186.251.248.1 -t
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

REM teste de traceroute

:choice4
echo 4: Excutando um traceroute
echo.
tracert 186.251.248.1
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
echo 5: Abrindo o Chrome
echo.
start Chrome www.speedtest.net
REM "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" -https://www.speedtest.net/
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
echo 6: Testar a conectividade dos Notebooks
echo.
:ping
echo 6.1: Meu not
ping -n 3 192.168.8.101
echo.
echo.
:ping
echo 6.2: Not more
ping -n 3 192.168.8.102
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


REM opcao teste celulares

:choice7
echo 7: Testar a conectividade dos Celulares
echo.
:ping
echo 7.1: Celular - redmi k20
ping -n 3 192.168.8.104
echo.
echo.
:ping
echo 7.2: Celular - mi 8 lite
ping -n 3 192.168.8.105
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


REM usando pathping no ip da seanet

:choice9
echo 9: Ping na seanet com o Pathping 
echo.
pathping 186.251.248.1
echo.
echo.
echo 0: Menu de interacao
echo 3: Sair
echo.
set /p var=Escolha uma das opcoes acima: 
echo. 
if %var%== 0 goto :choice0
if not %var%== 3 :choice3


REM  Opcao invalida

:choice10
echo.
echo ===============================================
echo * Opcao Invalida! Escolha outra opcao do menu *
echo ===============================================
echo.
pause 
goto choice0


:end
pause