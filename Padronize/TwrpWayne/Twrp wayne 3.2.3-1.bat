@echo off
chcp 65001
cls
set core=color 03
mode 120,35
setlocal EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
goto :corolidu
:cortexto
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
goto :eof
:corolidu
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
pushd "%~dp0"
set adb="%cd%\adb\adb.exe"
set fastboot="%cd%\adb\fastboot.exe"
set "nome= Noob Master "
set "ver= 7.0.1.4 "







::::::: ESSA PARTE DE CIMA É DO SCRIPT PRINCIPAL, ELE CARREGA ISSO PRA EXIBIR CORES E LINHAS COM CORES ESPECIFICAS







::::::: Aqui começa o scrript de fato, seguindo um padrão.
::::::: Edite a versão, a variavel do link e o nome da função 
::::::: Voce deve editar no script todo, esse nome setará a função no script principal>>> WayneDois 
::::::: Edite a versão e mantenha este padrão >>> 3.2.3-1 




set WayneDois=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/twrp/jasmine/3.2.3-1.img


:TwrpWayneDois
title Twrp wayne Versão 3.2.3-1 !
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) BOOT NO TWRP 3.2.3-1                  │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD PARA CASO ESTAR CORROMPIDO   │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETAR ARQUIVO                       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) VERIFICAR ARQUIVO                     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH DO TWRP 3.2.3-1 WAYNE           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 6 ) REBOOT SYSTEM                         │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto GotoTwrpWayneDois
if '%nb%' == '2' goto DownTwrpWayneDois
if '%nb%' == '3' goto DelTwrpWayneDois
if '%nb%' == '4' goto VerTwrpWayneDois
if '%nb%' == '5' goto FlashTwrpWayneDois
if '%nb%' == '6' goto RebootWayneDois
if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto TwrpWayneDois
:RebootWayneDois
cls 
%fastboot% reboot 
goto TwrpWayneDois

:: Boot no Twrp 
:GotoTwrpWayneDois
%core%
title Boot no Twrp 3.2.3-1 wayne
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneDois  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot no twrp wayne  v 3.2.3-1                                                                   │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\twrp\wayne\3.2.3-1.img" || @echo "boot error" && goto TwrpWayneDoisError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpWayneDois
:DownTwrpWayneDois
color 30
title Download Twrp 3.2.3-1 wayne
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneDois ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando twrp wayne v 3.2.3-1 aguarde...                                         │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\twrp\wayne\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%WayneDois%', 'adb\file\twrp\wayne\3.2.3-1.img') }"
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneDois )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto TwrpWayneDois
:DelTwrpWayneDois
title Deletando Twrp 3.2.3-1
%core%
cls
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneDois )
del adb\file\twrp\wayne\3.2.3-1.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneDois
:VerTwrpWayneDois
cls
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneDois )
start %cd%\adb\file\twrp\wayne\
goto TwrpWayneDois
:TwrpWayneDoisError
title ERROOOOOOOOOOOOOOOOOOOOOOOOOOOooooo !
color 40
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Errooooooooooooooooooooooooooooooooooooooooooooo.                                               │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
echo.
echo.
echo Deu erro, eu não sei direito o que pode ter acontecido, mas to aqui ! Posso te ajudar !
echo.
echo.
echo.
echo MsgBox " Deu erro amigo, clique em ok e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Pressione qualquer tecla para voltar !
echo.
echo.
pause>nul
echo.
echo.
goto TwrpWayneDois
:FlashTwrpWayneDois
%core%
title Flash do Twrp 3.2.3-1 wayne
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneDois  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash do twrp wayne  v 3.2.3-1                                                                  │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash recovery "%~dp0\adb\file\twrp\wayne\3.2.3-1.img" || @echo "flash recovery error" && goto TwrpWayneDoisError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpWayneDois