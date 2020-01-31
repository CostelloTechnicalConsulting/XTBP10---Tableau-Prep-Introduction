:: Tableau Server Downloader
:: v 1.0
:: Dan Costello

@echo off
cls

SET SCRIPTROOT=%~dp0

::powershell -ExecutionPolicy Bypass -File "%SCRIPTROOT%PSDownloadTableauServer.ps1"

:: Quick patch to fix PS download timeout
start https://onlcsetup.blob.core.windows.net/setupfiles/Setup_ANY_Installers_TableauServer.zip