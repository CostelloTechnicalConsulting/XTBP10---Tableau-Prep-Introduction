@echo off
SET SCRIPTROOT=%~dp0

cmd /k cd C:\Program Files\Tableau\Tableau Prep Builder 2020.1\scripts

explorer %SCRIPTROOT%\Output

cls