clear
cd $PSScriptRoot
Import-Module .\ProductivityTools.PSGetOneDriveDirectory.psm1 -Force
Get-OneDriveDirectory  -verbose 
Get-OneDriveDirectory  -verbose -Business