:: Tableau Server Downloader
:: v 1.0
:: Dan Costello

@echo off
cls

SET SCRIPTROOT=%~dp0

:: This has a problem with download timeout
::powershell -ExecutionPolicy Bypass -File "%SCRIPTROOT%PSDownloadTableauServer.ps1"

:: This didn't work...
:: start https://onlcsetup.blob.core.windows.net/setupfiles/Setup_ANY_Installers_TableauServer.zip
