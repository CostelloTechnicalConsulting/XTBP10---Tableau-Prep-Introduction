:: Tableau Server Downloader
:: v 1.0
:: Dan Costello

@echo off
cls

SET SCRIPTROOT=%~dp0

powershell -ExecutionPolicy Bypass -File "%SCRIPTROOT%PSDownloadTableauServer.ps1"