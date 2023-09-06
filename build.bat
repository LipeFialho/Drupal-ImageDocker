:: start.bat - script que executa build da imagem docker
:: @author: Luiz Felipe Diogo Fialho Silva
:: copyright LFD Solucoes

@echo off

set IMAGENAME=drupal-image:10.1.2
ECHO *** Criando a imagem %IMAGENAME% ... ***
ECHO.
docker build --network=host -t %IMAGENAME% .
ECHO *** Verificando se a imagem %IMAGENAME% foi criada ... ***
ECHO.
docker images