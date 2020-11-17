clear
cd $PSScriptRoot
Import-Module .\ProductivityTools.GetOneDriveDirectory.psm1 -Force
Get-OneDriveDirectory  -verbose 
Get-OneDriveDirectory  -verbose -Business