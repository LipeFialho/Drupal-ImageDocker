:: start.bat - script que executa rotina de inicialização de containers
:: @author: Luiz Felipe Diogo Fialho Silva
:: copyright LFD Solucoes

@echo off

::Remoção de  containers orfãos caso existam:
ECHO *** Removendo containers orfaos: ***
ECHO.
docker-compose down --remove-orphans
ECHO.
ECHO *** Ativando containers: ***
ECHO.
docker-compose up -d --remove-orphans
ECHO.
::Verificação das portas que foram ativadas
ECHO *** Checagem dos containers ativos: ***
ECHO.
docker ps
ECHO.