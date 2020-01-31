# Tableau Server Downloader
# v 1.0
# Dan Costello

Install-PackageProvider -Name NuGet -Force
Import-Module BitsTransfer -Force

$selectedClassId = "XTBP10"
$classSetupRoot = "$env:SETUPROOT\$selectedClassId"
$FileName = "Setup_ANY_Installers_TableauServer.zip"
$OutFile = ("{0}\{1}" -f $PSScriptRoot,$FileName)

Write-Host "Downloading file $($FileName)"
#Invoke-WebRequest -UseBasicParsing -Uri "https://onlcsetup.blob.core.windows.net/setupfiles/$($FileName)" -OutFile $OutFile
Start-BitsTransfer -Source "https://onlcsetup.blob.core.windows.net/setupfiles/$($FileName)" -Destination $OutFile


Write-Host "Extracting file $($FileName)"
Expand-Archive -Force -Path $OutFile -DestinationPath $PSScriptRoot
