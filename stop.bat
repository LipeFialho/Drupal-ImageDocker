:: start.bat - script que executa rotina de desligamento de containers
:: @author: Luiz Felipe Diogo Fialho Silva
:: copyright LFD Solucoes

@echo off

ECHO *** Removendo containers orfaos: ***
ECHO.
docker-compose down --remove-orphans
ECHO.